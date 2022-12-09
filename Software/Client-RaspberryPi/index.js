const { sensorValues } = require('./readings.js');
const { getTimestamps } = require('./dates.js')
const { getFirestore, collection,
    addDoc,
    query,
    orderBy,
    limit,
    onSnapshot,
    setDoc,
    updateDoc,
    doc,
    getDocs,
    getDoc
    } = require('firebase/firestore');
const { initializeApp } = require('firebase/app')
const { Gpio } = require('onoff')

let Pump1 = new Gpio(16, 'out');
let Pump2 = new Gpio(17, 'out');
let Pump3 = new Gpio(22, 'out');
let Pump4 = new Gpio(23, 'out');
let Light1 = new Gpio(24, 'out');
let Light2 = new Gpio(25, 'out');
let Heat = new Gpio(26, 'out');
let Fan = new Gpio(27, 'out');

const configs = require('./firebase-config.js');
const firebaseConfig = configs.firebaseConfig;
const UserUID = configs.UserUID;

const app = initializeApp(firebaseConfig);
const db = getFirestore(app);

//Update sensor data in 'Current' data document
async function UploadToCurrentDoc(data) {
    const CurrentDocRef = doc(db, 'Users', UserUID, 'UserData', 'Current');
    
    await updateDoc(CurrentDocRef, data);
}

/*
Updates new readings in document with the name of today's date.
Example name: '2022-11-25'
*/
async function UploadToDataArray(DocumentDate, data) {
    const DocRef = doc(db, 'Users', UserUID, 'UserData', DocumentDate);

    const document = await getDoc(DocRef);

    if(document.exists())
    {
        const docData = document.data();
        docData.Humidity.push(data.Humidity);
        docData.Temperature.push(data.Temperature);
        docData.pH.push(data.pH);
        docData.Moisture1.push(data.Moisture1);
        docData.Moisture2.push(data.Moisture2);
        docData.Moisture3.push(data.Moisture3);
        docData.Moisture4.push(data.Moisture4);
        docData.Timestamp.push(data.Timestamp);
        docData.HourMinTime.push(data.HourMinTime);
        await setDoc(DocRef, docData);
    }
    else {
        await setDoc(DocRef, {
            Humidity:    [data.Humidity],
            Temperature: [data.Temperature],
            pH:          [data.pH],
            Moisture1:   [data.Moisture1],
            Moisture2:   [data.Moisture2],
            Moisture3:   [data.Moisture3],
            Moisture4:   [data.Moisture4],
            Timestamp:   [data.Timestamp],
            HourMinTime: [data.HourMinTime]
        });
    }

}

async function UpdateControls(sensorDataObject) {
    const docRef = doc(db, 'Users', UserUID, 'UserSettings', 'Settings');

    const document = await getDoc(docRef);
    const settingObject = document.data();
    console.log(settingObject);

    settingObject.Light1 = HandleLight(settingObject.Light1, sensorDataObject.HourMinTime, Light1);
    settingObject.Light2 = HandleLight(settingObject.Light2, sensorDataObject.HourMinTime, Light2);

    settingObject.Pump1 = HandlePHF(settingObject.Pump1, sensorDataObject.Moisture1, Pump1);
    settingObject.Pump2 = HandlePHF(settingObject.Pump2, sensorDataObject.Moisture2, Pump2);
    settingObject.Pump3 = HandlePHF(settingObject.Pump3, sensorDataObject.Moisture3, Pump3);
    settingObject.Pump4 = HandlePHF(settingObject.Pump4, sensorDataObject.Moisture4, Pump4);

    settingObject.Heat = HandlePHF(settingObject.Heat, sensorDataObject.Temperature, Heat);
    settingObject.Fan = HandlePHF(settingObject.Fan, sensorDataObject.Temperature, Fan);

    await setDoc(docRef, settingObject);
    console.log("Done updating gpio");
}

//Handle pumps, heater, fan
function HandlePHF(settingMap, currentReading, gpioPin) {

    //Automation ON
    if(settingMap.AutomationStatus == 1)
    {
        if(currentReading < settingMap.ThresholdValue)
        {
            gpioPin.writeSync(1);
            settingMap.GPIOStatus = 1;
        }
        else
        {
            gpioPin.writeSync(0);
            settingMap.GPIOStatus = 0;
        }
    }
    //Automation OFF
    else
    {
        if(settingMap.ButtonStatus == 1)
        {
            gpioPin.writeSync(1);
            settingMap.GPIOStatus = 1;
        }
        else
        {
            gpioPin.writeSync(0);
            settingMap.GPIOStatus = 0;
        }
    }

    return settingMap;
}

function HandleLight(settingMap, CurrentTime, gpioPin) {

    //Automation ON
    if(settingMap.AutomationStatus == 1)
    {
        //Turn on lights automatically
        if(CurrentTime > settingMap.StartTime && CurrentTime < settingMap.EndTime)
        {
            gpioPin.writeSync(1);
            settingMap.GPIOStatus = 1;
        }
        //Turn off lights automatically
        else
        {
            gpioPin.writeSync(0);
            settingMap.GPIOStatus = 0;
        }
    }
    //Automation OFF
    else
    {
        if(settingMap.ButtonStatus == 1)
        {
            gpioPin.writeSync(1);
            settingMap.GPIOStatus = 1;
        }
        else
        {
            gpioPin.writeSync(0);
            settingMap.GPIOStatus = 0;
        }
    }

    return settingMap;
}


setInterval(() => {sensorValues().then((data) => {
    console.log("Starting...")
    const timestamps = getTimestamps();
    
    data.Timestamp = timestamps.Timestamp;
    data.HourMinTime = timestamps.HourMinTime;
    console.log(data);
    console.log('Uploading Data with timestamp: ', timestamps.Timestamp);
    UploadToCurrentDoc(data);
    UploadToDataArray(timestamps.collectionDate, data);
    
    UpdateControls(data);
    //intializeSensorSettings(UserUID)
    console.log("Finishing...");

})}, 15000);

/*
async function intializeSensorSettings(UserUID) {
    const CurrentDocRef = doc(db, 'Users', UserUID, 'UserSettings', 'Settings');
    const data = {
        Light1: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 24,
            StartTime: '08:00',
            EndTime: '18:00',
            AutomationStatus: 0
        },
        Light2: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 25,
            StartTime: '08:00',
            EndTime: '18:00',
            AutomationStatus: 0
        },
        Pump1: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 16,
            ThresholdValue: 50,
            AutomationStatus: 0
        },
        Pump2: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 17,
            ThresholdValue: 50,
            AutomationStatus: 0
        },
        Pump3: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 22,
            ThresholdValue: 50,
            AutomationStatus: 0
        },
        Pump4: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 23,
            ThresholdValue: 50,
            AutomationStatus: 0
        },
        Heat: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 26,
            ThresholdValue: 50,
            AutomationStatus: 0
        },
        Fan: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 27,
            ThresholdValue: 70,
            AutomationStatus: 0
        }

    };
    await setDoc(CurrentDocRef, data);
    console.log("Settings are set");
}
*/