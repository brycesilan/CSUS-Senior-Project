const dht = require('node-dht-sensor');
const { SerialPort } = require('serialport');
const { ReadlineParser } = require('@serialport/parser-readline');

const dhtPin = 4; //GPIO 4
const dhtType = 11; //DHT 11 sensor

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



async function sensorValues() {
    const readingsObject = await getReadings().then((value) => {
        // create Readings object
        //const values = new Readings(value);
        let obj = {};
        obj.Temperature = value[0];
        obj.Humidity    = value[1];
        obj.pH          = value[2];
        obj.Moisture1   = value[3];
        obj.Moisture2   = value[4];
        obj.Moisture3   = value[5];
        obj.Moisture4   = value[6];
        return obj;
    });

    //console.log(readingsObject);

    return readingsObject;
}

//Temperature and Humidity Readings
function getDHTreadings() {
    const readValues = dht.read(dhtType, dhtPin);
    let sensorData = [];
    //temperature reading is converted from C to F and rounded to 2 decimal places.
    
    sensorData.push(`temperature: ${Math.round(((readValues.temperature * 9/5) + 32) * 100) / 100}`);
    sensorData.push(`humidity: ${readValues.humidity}`);
    //console.log(sensorData);
    
    return sensorData;
}

//The Arduino writes 1 to initialize serial communication
function getArduinoReadings() {
    const port = new SerialPort({ path: '/dev/ttyUSB0', baudRate: 9600, autoOpen: false});
    const parser = port.pipe(new ReadlineParser({ delimiter: '\r\n' }));
    
    return new Promise((resolve, reject) => {
        let dataArray = [];
        let temp = false;

        //Open port and write first character to begin Serial communication
        if(!port.isOpen){
            port.open();
            console.log('Port open');
        }
        
        port.write('x'); //After this, the Arduino writes back "1"
        console.log('1st x written')
        //Start receiving data
        parser.on('data', function(data) {
            //Write 'x' only once as it's our trigger in Arduino script to collect data
            if (temp == false) {
                port.write('x');
                console.log('2nd x written')
                temp = true;
            }
            dataArray.push(data);
            //console.log(dataArray)

            /*
            Sample data array: ['1','pH: 7.16','Moisture_1: 7','Moisture_2: 74','Moisture_3: 100','Moisture_4: 100']
            */
            
            if(dataArray.length == 6) {
                
                if(port.isOpen){
                    port.close();
                }
                resolve(dataArray);
                
            }
        });
        
    });

}


exports.sensorValues = sensorValues;

/*
//Readings object
function Readings(readingArray) {
    this.temperature = readingArray[0],
    this.humidity    = readingArray[1],
    this.ph          = readingArray[2],
    this.moisture1   = readingArray[3],
    this.moisture2   = readingArray[4],
    this.moisture3   = readingArray[5],
    this.moisture4   = readingArray[6]
}
*/