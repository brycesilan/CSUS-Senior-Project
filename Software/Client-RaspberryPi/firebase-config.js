const config = {
    apiKey: "AIzaSyCspxDgVA2zN8yWiN8CQc2LDNoxaVrUoPc",
    authDomain: "vertical-farm-5ce81.firebaseapp.com",
    projectId: "vertical-farm-5ce81",
    storageBucket: "vertical-farm-5ce81.appspot.com",
    messagingSenderId: "1029928616334",
    appId: "1:1029928616334:web:1c75bf2e7a70bc1cf9a4df",
    measurementId: "G-1Q3780PW8D"
  };
  
  export function getFirebaseConfig() {
    if (!config || !config.apiKey) {
      throw new Error('No Firebase configuration object provided.' + '\n' +
      'Add your web app\'s configuration object to firebase-config.js');
    } else {
      return config;
    }
  }