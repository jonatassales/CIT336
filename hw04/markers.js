var places = [];

function loadJSON(callback) {
 var xhttp = new XMLHttpRequest();
 xhttp.overrideMimeType("application/json");
 xhttp.open('GET', 'markers.json', true);
 xhttp.onreadystatechange = function () {
       if (xhttp.readyState == 4 && xhttp.status == "200") {
         // Required use of an anonymous callback as .open will NOT return a value but simply returns undefined in asynchronous mode
         callback(xhttp.responseText);
       }
 };
 xhttp.send(null);
}


var initPlaces = function(json){
  var data = JSON.parse(json);
  data.places.forEach(function(value, index){
    places.push([value.name, eval(value.lat), eval(value.lng)]);
  });
}

loadJSON(initPlaces);

function setMarkers(map) {
  for (var i = 0; i < places.length; i++) {
    var place = places[i];
    var marker = new google.maps.Marker({
      position: {lat: place[1], lng: place[2]},
      map: map,
      title: place[0],
      zIndex: place[3]
    });
  }
}
