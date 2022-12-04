import { getAuth } from "firebase/auth";
import { db } from "../firebase-config";
import { doc, onSnapshot, updateDoc } from "firebase/firestore";
import { useState } from "react";
import { useEffect } from "react";
//import { TbSettingsAutomation } from "react-icons/tb";

export default function Home() {
  const [SensorData, setSensorData] = useState([]);
  const [Settings, setSettings] = useState([]);

  const CurrentRef = doc(db, 'Users', getAuth().currentUser.uid, 'UserData', 'Current');
  const SettingRef = doc(db, 'Users', getAuth().currentUser.uid, 'UserSettings', 'Settings');
  
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
    //console.log(SensorData);
  }

  async function getSettings(){

    onSnapshot(SettingRef, (SettingDoc) => {
      const SettingData = SettingDoc.data();
      setSettings(SettingData);
    });

  }

  useEffect(() => {
    getCurrentData();
  }, []);
  useEffect(() => {
    getSettings();
  }, []);

  async function buttonClick(e){
    const docRef = doc(db, 'Users', getAuth().currentUser.uid, 'UserSettings', 'Settings');
    
    const id = e.target.id + '.ButtonStatus';
    const value = e.target.value

    //console.log(id + ' = ' + value);
    await updateDoc(docRef, { [id]: parseInt(value, 10) });
  }
  
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
              {Settings.Light1 && Settings.Light1.GPIOStatus === 1 ? <p>ON</p> : <p>OFF</p>}
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
                    {Settings.Pump1 && Settings.Pump1.GPIOStatus === 1 ? <p>ON</p> : <p>OFF</p>}
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
                    {Settings.Pump2 && Settings.Pump2.GPIOStatus === 1 ? <p>ON</p> : <p>OFF</p>}
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
              {Settings.Light2 && Settings.Light2.GPIOStatus === 1 ? <p>ON</p> : <p>OFF</p>}
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
                    {Settings.Pump3 && Settings.Pump3.GPIOStatus === 1 ? <p>ON</p> : <p>OFF</p>}
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
                    {Settings.Pump4 && Settings.Pump4.GPIOStatus === 1 ? <p>ON</p> : <p>OFF</p>}
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
              {Settings.Heat && Settings.Heat.GPIOStatus === 1 ? <p>ON</p> : <p>OFF</p>}
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
              {Settings.Fan && Settings.Fan.GPIOStatus === 1 ? <p>ON</p> : <p>OFF</p>}
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
