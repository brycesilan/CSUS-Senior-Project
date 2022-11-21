const { sensorValues } = require('./readings.js');
const { getTimestamps } = require('./dates.js')
const { initializeApp } = require('firebase/app')
const { db } = require('./firebase-config.js');
const { getFirestore, collection,
    addDoc,
    query,
    orderBy,
    limit,
    onSnapshot,
    setDoc,
    updateDoc,
    doc,} = require('firebase/firestore');


setInterval(() => {sensorValues().then((obj) => {
    const timestamps = getTimestamps();
    console.log(obj);
    console.log(timestamps);
})}, 5000);
