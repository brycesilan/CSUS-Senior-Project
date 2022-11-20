const { sensorValues } = require('./test.js');
const { getTimestamps } = require('./dates')



setInterval(() => {sensorValues().then((obj) => {
    const timestamps = getTimestamps();
    console.log(timestamps.collectionDate, " ", timestamps.timestamp);
    console.log(obj);
})}, 5000);

