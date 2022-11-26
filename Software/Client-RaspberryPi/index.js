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



setInterval(() => {sensorValues().then((data) => {
    const timestamps = getTimestamps();
    
    data.Timestamp = timestamps.Timestamp;

    console.log('Uploading Data with timestamp: ', timestamps.Timestamp);
    UploadToCurrentDoc(data);
    UploadToDataArray(timestamps.collectionDate, data);

})}, 5000);

