function getTimestamps() {
    let Timestamp = new Date;

    //Format: 'YYYY-MM-D' or 'YYYY-MM-DD'
    let collectionDate = [
        Timestamp.getFullYear(),
        Timestamp.getMonth() + 1,
        Timestamp.getDate()
    ].join('-');

    //Format: 'HH:MM' 24-hour format
    let HourMinTime = [Timestamp.getHours(), Timestamp.getMinutes()].join(':');
    
    return {
        'collectionDate': collectionDate,
        'HourMinTime': HourMinTime,
        'Timestamp': Timestamp
    };
}

exports.getTimestamps = getTimestamps;