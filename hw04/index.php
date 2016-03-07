<?php
require 'config.php';
require 'map_settings.php';
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #map {
        height: 100%;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script type="text/javascript" src="markers.js"></script>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: 47.6145, lng: -122.3418},
          zoom: 13
        });
        setMarkers(map);
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=<?php echo MAPS_KEY ?>&callback=initMap" async defer></script>
  </body>
</html>
