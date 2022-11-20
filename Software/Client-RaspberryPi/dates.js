function getTimestamps() {
    let d = new Date;

    //Format: 
    let collectionDate = [
        d.getFullYear(),
        d.getMonth() + 1,
        d.getDate()
    ].join('-') + '_h' + d.getHours();

    let timestamp = [d.getMonth()+1,
        d.getDate(),
        d.getFullYear()].join('/')+' '+
        [d.getHours(),
        d.getMinutes(),
        d.getSeconds()].join(':');
    
    return {
        'collectionDate': collectionDate,
        'timestamp': timestamp
    };
}

exports.getTimestamps = getTimestamps;