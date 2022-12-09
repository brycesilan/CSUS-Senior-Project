function getTimestamps() {
    let Timestamp = new Date;

    //Format: 
    let collectionDate = [
        Timestamp.getFullYear(),
        Timestamp.getMonth() + 1,
        Timestamp.getDate()
    ].join('-');

    let HourMinTime = [Timestamp.getHours(), Timestamp.getMinutes()].join(':');

    /*
    let timestamp = [d.getMonth()+1,
        d.getDate(),
        d.getFullYear()].join('/')+' '+
        [d.getHours(),
        d.getMinutes(),
        d.getSeconds()].join(':');
    */
    
    return {
        'collectionDate': collectionDate,
        'HourMinTime': HourMinTime,
        'Timestamp': Timestamp
    };
}

exports.getTimestamps = getTimestamps;