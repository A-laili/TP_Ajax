var timerID = null;
var timerActif = false;
var format24Hour = true;

function stopClock() {
    if (timerActif)
        clearTimeout(timerID);
    timerActif = false;
}

function startClock() {
    stopClock();
    showTime();
}

function toggleFormat() {
    format24Hour = !format24Hour;
    startClock();
}

function showTime() {
    var now = new Date();
    var hour = now.getHours();
    var min = now.getMinutes();
    var sec = now.getSeconds();
    
    if (!format24Hour) {
        // Convert to 12-hour format
        var ampm = (hour >= 12) ? "PM" : "AM";
        hour = (hour % 12) || 12;
    }
    
    var timeString = (hour > 9 ? hour : "0" + hour);
    timeString += ":" + (min > 9 ? min : "0" + min);
    
    if (!format24Hour) {
        timeString += " " + ampm;
    }
    
    timeString += ":" + (sec > 9 ? sec : "0" + sec);
    
    document.getElementById('horloge').innerHTML = timeString;
    timerID = setTimeout(showTime, 1000);
    timerActif = true;
}

window.addEventListener('load', function(){
   startClock();
});

// Optional: Add a button to toggle between 12-hour and 24-hour formats
var formatToggleBtn = document.getElementById('formatToggle');
formatToggleBtn.addEventListener('click', toggleFormat);

