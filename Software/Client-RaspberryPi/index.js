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

console.log(firebaseConfig);
console.log(UserUID);
const app = initializeApp(firebaseConfig);
const db = getFirestore(app);


async function UploadToCurrentDoc(data) {
    const CurrentDocRef = doc(db, 'Users', UserUID, 'UserData', 'Current');
    
    await updateDoc(CurrentDocRef, data);
}

async function UploadToDataArray(CollectionDate, data) {
    const DocRef = doc(db, 'Users', UserUID, 'UserData', CollectionDate);

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
        await setDoc(DocRef, docData);
    }
    else {
        await setDoc(DocRef, {
            Humidity: [data.Humidity],
            Temperature: [data.Temperature],
            pH: [data.pH],
            Moisture1: [data.Moisture1],
            Moisture2: [data.Moisture2],
            Moisture3: [data.Moisture3],
            Moisture4: [data.Moisture4],
            Timestamp: [data.Timestamp]
        });
    }

}

async function HandleMFH(settingMap, sensorData, gpioPin) {
    if(settingMap.ButtonStatus || sensorData < settingMap.Min)
    {
        gpioPin.writeSync(1);
        settingMap.GPIOStatus = 1;
    }
    if(!settingMap.ButtonStatus || sensorData > settingMap.Max) 
    {
        gpioPin.writeSync(0);
        settingMap.GPIOStatus = 0;
        settingMap.ButtonStatus = 0;
    }

    return settingMap;

}

async function HandleControls(settingMap, sensorData, gpioPin) {
    if(settingMap.ButtonStatus === 1)
    {
        gpioPin.writeSync(1);
        settingMap.GPIOStatus = 1;
    }
    if(settingMap.ButtonStatus === 0)
    {
        if(sensorData < settingMap.Min)
        {
            gpioPin.writeSync(1);
            settingMap.GPIOStatus = 1;
        }
        else 
        {
            gpioPin.writeSync(0);
            settingMap.GPIOStatus = 0;
        }
        //=====================
    }

    return settingMap;

}

async function HandleLight(settingMap, currentTime, gpioPin) {
    if(settingMap.ButtonStatus === 1 || currentTime > settingMap.StartTime)
    {
        gpioPin.writeSync(1);
        settingMap.GPIOStatus = 1;
    }
    if(settingMap.ButtonStatus === 0 || currentTime > settingMap.EndTime) 
    {
        gpioPin.writeSync(0);
        settingMap.GPIOStatus = 0;
        settingMap.ButtonStatus = 0;
    }
}



setInterval(() => {sensorValues().then((data) => {
    const timestamps = getTimestamps();
    console.log(data);
    data.Timestamp = timestamps.Timestamp;

    console.log('Uploading Data with timestamp: ', timestamps.Timestamp);
    //UploadToCurrentDoc(data);
    //UploadToDataArray(timestamps.collectionDate, data);
    //intializeSensorSettings(UserUID);
    console.log("Done");

})}, 5000);

/*
async function intializeSensorSettings(UserID) {
    const CurrentDocRef = doc(db, 'Users', UserID, 'UserSettings', 'Settings');
    const data = {
        Light1: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 24,
            StartTime: '08:00',
            EndTime: '18:00'
        },
        Light2: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 25,
            StartTime: '08:00',
            EndTime: '18:00'
        },
        Pump1: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 16,
            Min: 50,
            Max: 70
        },
        Pump2: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 17,
            Min: 50,
            Max: 70
        },
        Pump3: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 22,
            Min: 50,
            Max: 70
        },
        Pump4: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 23,
            Min: 50,
            Max: 70
        },
        Heat: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 26,
            Min: 50,
            Max: 70
        },
        Fan: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 27,
            Min: 50,
            Max: 70
        }

    };
    await setDoc(CurrentDocRef, data);
    console.log("Settings are set");
}
*/