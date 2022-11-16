const { getDHTreadings, getArduinoReadings } = require('./test.js');

async function getReadings() {
    let dataArray = [], readingArray = [];

    //push temp and hum
    getDHTreadings().forEach((value) => dataArray.push(value));
    
    //read from arduino and push
    await getArduinoReadings().then((data) => {
        data.shift(); //remove serial begin "1"
        data.forEach((value) => dataArray.push(value));
    });

    //split 'temperature: 68' by space and [1] element casted to a number
    dataArray.forEach((value => {
       readingArray.push(Number(value.split(" ")[1])); 
    }))
    //console.log(readingArray);
    
    return readingArray;
}

function Readings(readingArray) {
    this.temperature = readingArray[0],
    this.humidity    = readingArray[1],
    this.ph          = readingArray[2],
    this.moisture1   = readingArray[3],
    this.moisture2   = readingArray[4],
    this.moisture3   = readingArray[5],
    this.moisture4   = readingArray[6]
}
async function createReadingObject() {
    const readingsObject = await getReadings().then((value) => {
        // create Readings object
        const values = new Readings(value);
        return values;
    });

    //console.log(readingsObject);

    return readingsObject;
}
createReadingObject();
