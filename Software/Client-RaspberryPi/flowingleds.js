const { Gpio } = require('onoff');

let led16 = new Gpio(16, 'out'); //Pump1
let led17 = new Gpio(17, 'out'); //Pump2
let led22 = new Gpio(22, 'out'); //Pump3
let led23 = new Gpio(23, 'out'); //Pump4
let led24 = new Gpio(24, 'out'); //Relay1
let led25 = new Gpio(25, 'out'); //Relay2
let led26 = new Gpio(26, 'out'); //Relay3
let led27 = new Gpio(27, 'out'); //Relay4

let leds = [led16, led17, led22, led23, led24, led25, led26, led27];

let indexCount = 0;
let dir = "up"; //variable for flowing direction
let flowInterval = setInterval(flowingLeds, 1000); //run the flowingLeds function every 100ms

function flowingLeds() {
    leds.forEach(function(currentValue) {
        currentValue.writeSync(0); //Turn off LED
    });

    if(indexCount == 0)
    {
        dir = "up"; //set flow direction to "up" if the count reaches zero
    }
    if (indexCount >= leds.length) 
    {
        dir = "down"; //set flow direction to "down" if the count reaches 7
    }
    if (dir == "down") 
    {
        indexCount--; //count downwards if direction is down
    }
    leds[indexCount].writeSync(1); //turn on LED that where array index matches count
    if (dir == "up")
    {
        indexCount++; //count upwards if direction is up

    }
}

function unexportOnClose() { //function to run when exiting program
    clearInterval(flowInterval); //stop flow interwal
    leds.forEach(function(currentValue) { //for each LED
      currentValue.writeSync(0); //turn off LED
      currentValue.unexport(); //unexport GPIO
    });
};

process.on('SIGINT', unexportOnClose); //function to run when user closes using ctrl+cc 