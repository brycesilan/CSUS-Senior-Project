const dht = require('node-dht-sensor');

const { SerialPort } = require('serialport');
const port = new SerialPort({ path: '/dev/ttyUSB0', baudRate: 9600, autoOpen: false});

const { ReadlineParser } = require('@serialport/parser-readline');
const parser = port.pipe(new ReadlineParser({ delimiter: '\r\n' }));


const dhtPin = 4; //GPIO 4
const dhtType = 11; //DHT 11 sensor

function getDHTreadings() {
    const readValues = dht.read(dhtType, dhtPin);
    
    //temperature reading is converted from C to F and rounded to 2 decimal places.
    const sensorData = {
        'temperature': Math.round(((readValues.temperature * 9/5) + 32) * 100) / 100,
        'humidity': readValues.humidity
    }
    //console.log(sensorData);
    
    return sensorData;
}

//The Arduino writes 1 to initialize serial communication
function getArduinoReadings() {
    
    return new Promise((resolve, reject) => {
        let dataArray = [];
        let temp = false;

        //Open port and write first character to begin Serial communication
        port.open();
        port.write('x'); //After this, the Arduino writes back "1"

        //Start receiving data
        parser.on('data', function(data) {
            //Write 'x' only once as it's our trigger in Arduino script to collect data
            if (temp == false) {
                port.write('x');
                temp = true;
            }
            dataArray.push(data);
            //console.log(dataArray)

            /*
            Sample data array: ['1','pH: 7.16','Moisture_1: 7','Moisture_2: 74','Moisture_3: 100','Moisture_4: 100']
            */
            
            if(dataArray.length == 6) {
                resolve(dataArray);  
                port.close();
            }
        });
        
    });

}
exports.getDHTreadings = getDHTreadings; 
exports.getArduinoReadings = getArduinoReadings;


/*

function getArduinoReadings() {
    let temp = false;
    let dataString = [];
    let chunk;
    port.write('x');
    parser.on('data', (data) => {
        if (temp == false) {
            port.write('x');
            temp = true;
        }
        dataString.push(data);
        console.log(dataString);
        if(dataString.length == 5) {
            port.close();
            return dataString;      
        }
    });
    console.log(dataString);
}

*/