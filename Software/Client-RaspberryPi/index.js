const { getDHTreadings, getArduinoReadings } = require('./test.js');

async function ArduinoReadings() {
    let temp = await getArduinoReadings();
    console.log('temp =' + temp);
}
ArduinoReadings();
console.log(getDHTreadings());