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
    getDocs,} = require('firebase/firestore');
const { initializeApp } = require('firebase/app')

const configs = require('./firebase-config.js');
const firebaseConfig = configs.firebaseConfig;
const UserUID = configs.UserUID;

console.log(firebaseConfig);
console.log(UserUID);
const app = initializeApp(firebaseConfig);
const db = getFirestore(app);


async function UploadToFirebase(data) {
    const ref = doc(db, 'Users', UserUID, 'UserData', 'Current');
    const UserCol = collection(ref, 'new');
    const UserDoc = doc(UserCol, UserUID);
    // const Users = await getDocs(UserCol);
    // const UsersList = Users.docs.map(doc => doc.data());
    const temp = {};
    Object.assign(temp, data);
    const tester = await addDoc(UserCol, temp);
    //console.log(tester);
}

setInterval(() => {sensorValues().then((obj) => {
    const timestamps = getTimestamps();
    
    obj.timestamp = timestamps.timestamp;
    console.log(obj);
    console.log(timestamps);
    UploadToFirebase(obj);

})}, 5000);

