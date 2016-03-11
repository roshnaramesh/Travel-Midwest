<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.4/angular.min.js"></script>
<script type="text/javascript">

var geocoder = new google.maps.Geocoder();

function geocodePosition(pos) {
  geocoder.geocode({
    latLng: pos
  }, function(responses) {
    if (responses && responses.length > 0) {
      updateMarkerAddress(responses[0].formatted_address);
    } else {
      updateMarkerAddress('Cannot determine address at this location.');
    }
  });
}

function updateMarkerStatus(str) {
  document.getElementById('markerStatus').innerHTML = str;
}

function updateMarkerPosition(latLng) {
	 var latlng_out = [ latLng.lat(), latLng.lng() ].join(', ');
	    document.getElementById('info').innerHTML = latlng_out;
	    document.getElementById('latlng_info').innerHTML = latlng_out;
}

function updateMarkerAddress(str) {
  document.getElementById('address').innerHTML = str;
  document.getElementById('address_info').innerHTML = str;
}

function initialize() {
  var latLng = new google.maps.LatLng(41.871646224679836, -87.65122603149416);
  var map = new google.maps.Map(document.getElementById('mapCanvas'), {
    zoom: 14,
    center: latLng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });
  var marker = new google.maps.Marker({
    position: latLng,
    title: 'Point A',
    map: map,
    draggable: true
  });

  updateMarkerPosition(latLng);
  geocodePosition(latLng);

  google.maps.event.addListener(marker, 'dragstart', function() {
    updateMarkerAddress('Dragging...');
  });

  google.maps.event.addListener(marker, 'drag', function() {
    updateMarkerStatus('Dragging...');
    updateMarkerPosition(marker.getPosition());
  });

  google.maps.event.addListener(marker, 'dragend', function() {
    updateMarkerStatus('Drag ended');
    geocodePosition(marker.getPosition());
  });
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>
<body>
  <style>
  #mapCanvas {
    width: 500px;
    height: 400px;
    float: left;
  }
  #infoPanel {
    float: left;
    margin-left: 10px;
  }
  #infoPanel div {
    margin-bottom: 5px;
  }
  </style>

  <div id="mapCanvas"></div>
  <form>
  <div id="infoPanel">
    <b>Marker status:</b>
    <div id="markerStatus"><i>Click and drag the marker.</i></div>
    <b>Current position:</b>
    <div id="info"></div>
    <b>Closest matching address:</b>
    <div id="address"></div>
   <input type="text" id="latlng_info" name="lat" style="width:150px" value=""  >
   <input type="text" id="address_info" name="address" style="width:150px"  value=""  >
    <input type="submit" value="Submit">

  </div>
   </form>
</body>
</html>