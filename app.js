function ready(fn) {
  if (document.readyState != 'loading'){
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', fn);
  }
}

function getRipsum() {
  var request = new XMLHttpRequest();
  request.open('GET', 'https://ripsum.herokuapp.com/100/50', true);

  request.onload = function() {
    if (request.status >= 200 && request.status < 400) {
      // Success!
      var data = JSON.parse(request.responseText);
      addRipsum(data.data);
    } else {
      // We reached our target server, but it returned an error
      console.log('error');
    }
  };

  request.onerror = function() {
    // There was a connection error of some sort
    console.log('error');
  };

  request.send();
}

function addRipsum(text) {
  var el = document.getElementById('ripsum');
  el.textContent = text;
}

ready(getRipsum);

var year = new Date().getFullYear();
var copyrightDate = document.getElementById('copyright-date');
copyrightDate.textContent = year;
