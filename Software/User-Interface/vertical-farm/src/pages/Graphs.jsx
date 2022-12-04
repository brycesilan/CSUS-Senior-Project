import React from 'react'
import { getAuth } from "firebase/auth";
import { db } from "../firebase-config";
import { doc, getDoc } from "firebase/firestore";
import { useState, useRef } from 'react';
import { Line } from 'react-chartjs-2';
import 'chart.js/auto';

export default function Graphs() {
  const [SensorData, setSensorData] = useState([]);
  async function getData() {
    let TodaysDate = new Date();
    let CollectionName = [TodaysDate.getFullYear(), TodaysDate.getMonth() + 1, TodaysDate.getDay].join('-');
    //const CurrentRef = doc(db, 'Users', getAuth().currentUser.uid, 'UserData', CollectionName);
    const CurrentRef = doc(db, 'Users', getAuth().currentUser.uid, 'UserData', '2022-11-27');

    const document = await getDoc(CurrentRef);
    const documentData = document.data();


    
    // documentData.TimestampString = [];
    // documentData.Timestamp.forEach(element => {
    //   documentData.TimestampString.push(element.toDate());
    // });
    setSensorData(documentData);

  }

  getData();
  
  const ref = useRef();
  var options = {
    responsive: true,
    plugins: {
      title: {
        display: true,
        text: 'Chart.js Line Chart',
      },
    },
  };
  
  const data = {
    labels: SensorData.HourMinTime,
    datasets: [
      {
        label: 'Temperature',
        data: SensorData.Temperature,
        fill: false,
        borderColor: '#FF6F61'
      },
      {
        label: 'Humidity',
        data: SensorData.Humidity,
        fill: false,
        borderColor: '#B565A7',
      },
      {
        label: 'Moisture1',
        data: SensorData.Moisture1,
        fill: false,
        borderColor: '#88B04B',
      },
      {
        label: 'Moisture2',
        data: SensorData.Moisture2,
        fill: false,
        borderColor: '#009B77',
      },
      {
        label: 'Moisture3',
        data: SensorData.Moisture3,
        fill: false,
        borderColor: '#34568B',
      },
      {
        label: 'Moisture4',
        data: SensorData.Moisture4,
        fill: false,
        borderColor: '#6B5B95',
      }
    ],
  };
  return (
    
    <Line options ={options} ref={ref} data={data} />
  )
}
