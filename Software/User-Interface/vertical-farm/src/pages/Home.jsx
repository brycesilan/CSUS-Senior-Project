import { getAuth } from "firebase/auth";
import { db } from "../firebase-config";
import { doc, onSnapshot, updateDoc, getDoc } from "firebase/firestore";
import { useState } from "react";
import { useEffect } from "react";

export default function Home() {
  const [SensorData, setSensorData] = useState([]);
  const CurrentRef = doc(db, 'Users', getAuth().currentUser.uid, 'UserData', 'Current');
  
  async function getCurrentData() {
    
    onSnapshot(CurrentRef, (CurrentDoc) => {
      const CurrentData = CurrentDoc.data();
      const timestamp = CurrentData.Timestamp.toDate();
      CurrentData.Time = [timestamp.getHours(),
                          timestamp.getMinutes(),
                          timestamp.getSeconds()].join(':');

      CurrentData.Day =  [timestamp.getFullYear(),
                          timestamp.getMonth() + 1,
                          timestamp.getDate()].join('/');

      setSensorData(CurrentData);
    });
    console.log(SensorData);
    // const CurrentDocument = await getDoc(CurrentRef);
    // const CurrentData = CurrentDocument.data();
    // console.log(CurrentData);
  }

  useEffect(() => {
    getCurrentData();
  }, []);
  
  async function buttonClick(e){
    const docRef = doc(db, 'Users', getAuth().currentUser.uid, 'UserSettings', 'Settings');

    const document = await getDoc(docRef);
    const settingObject = document.data();
    
    const id = e.target.id + '.ButtonStatus';
    const value = e.target.value

    console.log(id + ' = ' + value);
    await updateDoc(docRef, { [id]: parseInt(value, 10) });
  }
  
  // function buttonClick(e) {
  //   console.log(e.target.id, " ", e.target.value);
  // }
  
  // const Temperature = 50, Humidity = 70, pH = 7.10;
  // const Moisture1 = 60, Moisture2 = 65, Moisture3 = 70, Moisture4= 75;
  const Light1 = "ON", Light2="OFF";
  const Water1 = "OFF", Water2 = "OFF", Water3 = "OFF", Water4 = "OFF";
  const Heat = "OFF", Fan = "OFF";
  //const ReadingTime = "06:07:00", ReadingDay = "2022-11-24"
  return (

    <div className='container mx-auto px-16 py-6'>
      <div className='mb-4 flex justify-center'>
        <p>Readings done at {SensorData.Time} on {SensorData.Day}</p>
      </div>

      <div className='grid grid-cols-1 sm:grid-cols-2 gap-4'>

        <div className='col-span-2 grid grid-cols-1 sm:grid-cols-3 gap-4'>
          
          <div className='bg-green-400 flex justify-between px-2 py-2'>
            <p>Temperature</p>
            <p>{SensorData.Temperature} &#8457;</p>
          </div>

          <div className='bg-green-400 flex justify-between px-2 py-2'>
            <p>Humidity</p>
            <p>{SensorData.Humidity}%</p>
          </div>

          <div className='bg-green-400 flex justify-between px-2 py-2'>
            <p>pH</p>
            <p>{SensorData.pH}</p>
          </div>

        </div>
        

        <div className='col-span-2 bg-green-400 px-2 py-2'>
          <p className='underline mb-2'>Level 1</p>

          <div className='bg-red-200 p-2 mb-2'>
            <div className='flex justify-between mb-2'>
              <p>Light</p>
              <p>{Light1}</p>
            </div>
            <div>
              <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800 mr-2' id='Light1' value='1' onClick={buttonClick}>Turn On</button>
              <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800' id='Light1' value='0' onClick={buttonClick}>Turn Off</button>
            </div>
          </div>

          <div className='grid grid-cols-1 sm:grid-cols-2 gap-2 '>

            <div className='bg-red-200 p-2'>
              <p className='underline mb-2'>Tray 1</p>
              <div>
                <div className='bg-purple-300 flex justify-between px-2 py-2 mb-2'>
                  <p>Moisture</p>
                  <p>{SensorData.Moisture1}%</p>
                </div>
                <div className='bg-purple-300 p-2 mb-2'>            
                  <div className='flex justify-between mb-2'>
                    <p>Water</p>
                    <p>{Water1}</p>
                  </div>
                  <div>
                    <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800 mr-2' id='Pump1' value='1' onClick={buttonClick}>Turn On</button>
                    <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800' id='Pump1' value='0' onClick={buttonClick}>Turn Off</button>
                  </div>
                </div>                
              </div>
            </div>

            <div className='bg-red-200 p-2'>
              <p className='underline mb-2'>Tray 2</p>
              <div>
                <div className='bg-purple-300 flex justify-between px-2 py-2 mb-2'>
                  <p>Moisture</p>
                  <p>{SensorData.Moisture2}%</p>
                </div>
                <div className='bg-purple-300 p-2 mb-2'>            
                  <div className='flex justify-between mb-2'>
                    <p>Water</p>
                    <p>{Water2}</p>
                  </div>
                  <div>
                    <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800 mr-2'id='Pump2' value='1' onClick={buttonClick}>Turn On</button>
                    <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800' id='Pump2' value='0' onClick={buttonClick}>Turn Off</button>
                  </div>
                </div>         
              </div>
            </div>

          </div>
          
        </div>

        <div className='col-span-2 bg-green-400 px-2 py-2'>
          <p className='underline mb-2'>Level 2</p>

          <div className='bg-red-200 p-2 mb-2'>
            <div className='flex justify-between mb-2'>
              <p>Light</p>
              <p>{Light2}</p>
            </div>
            <div>
              <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800 mr-2' id='Light2' value='1' onClick={buttonClick}>Turn On</button>
              <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800' id='Light2' value='0' onClick={buttonClick}>Turn Off</button>
            </div>
          </div>

          <div className='grid grid-cols-1 sm:grid-cols-2 gap-2 '>

            <div className='bg-red-200 p-2'>
              <p className='underline mb-2'>Tray 3</p>
              <div>
                <div className='bg-purple-300 flex justify-between px-2 py-2 mb-2'>
                  <p>Moisture</p>
                  <p>{SensorData.Moisture3}%</p>
                </div>
                <div className='bg-purple-300 p-2 mb-2'>            
                  <div className='flex justify-between mb-2'>
                    <p>Water</p>
                    <p>{Water3}</p>
                  </div>
                  <div>
                    <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800 mr-2' id='Pump3' value='1' onClick={buttonClick}>Turn On</button>
                    <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800' id='Pump3' value='0' onClick={buttonClick}>Turn Off</button>
                  </div>
                </div>                
              </div>
            </div>

            <div className='bg-red-200 p-2'>
              <p className='underline mb-2'>Tray 4</p>
              <div>
                <div className='bg-purple-300 flex justify-between px-2 py-2 mb-2'>
                  <p>Moisture</p>
                  <p>{SensorData.Moisture4}%</p>
                </div>
                <div className='bg-purple-300 p-2 mb-2'>            
                  <div className='flex justify-between mb-2'>
                    <p>Water</p>
                    <p>{Water4}</p>
                  </div>
                  <div>
                    <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800 mr-2' id='Pump4' value='1' onClick={buttonClick}>Turn On</button>
                    <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800' id='Pump4' value='0' onClick={buttonClick}>Turn Off</button>
                  </div>
                </div>         
              </div>
            </div>

          </div>
          
        </div>


        <div className='bg-green-400 px-2 py-2'>
          <div className='bg-red-200 p-2'>            
            <div className='flex justify-between mb-2'>
              <p>Heat</p>
              <p>{Heat}</p>
            </div>
            <div>
              <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800 mr-2' id='Heat' value='1' onClick={buttonClick}>Turn On</button>
              <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800' id='Heat' value='0' onClick={buttonClick}>Turn Off</button>
            </div>
          </div> 
        </div>
        
        <div className='bg-green-400 px-2 py-2'>
          <div className='bg-red-200 p-2'>            
            <div className='flex justify-between mb-2'>
              <p>Fan</p>
              <p>{Fan}</p>
            </div>
            <div>
              <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800 mr-2' id='Fan' value='1' onClick={buttonClick}>Turn On</button>
              <button className='bg-blue-600 text-white p-2 text-xs rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800' id='Fan' value='0' onClick={buttonClick}>Turn Off</button>
            </div>
          </div> 
        </div>

        

        
      </div>
    </div>

  )
}
