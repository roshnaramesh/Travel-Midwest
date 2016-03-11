<!DOCTYPE html>
<html>
  <head>
    <style type="text/css">
      html, body, #map-canvas { height: 100%; margin: 0; padding: 0;}
    </style>
      <script type="text/javascript" src="//maps.googleapis.com/maps/api/js?sensor=true">
    </script>
    <script type="text/javascript">
      function initialize() {
        var mapOptions = {
          center: { lat: -34.397, lng: 150.644},
          zoom: 8
        };
        var map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);
      }
      google.maps.event.addDomListener(window, 'load', initialize);
      
      function initialize() {
    	  var mapDiv = document.getElementById('map-canvas');
    	  var map = new google.maps.Map(mapDiv, {
    	    center: new google.maps.LatLng(37.4419, -122.1419),
    	    zoom: 13,
    	    mapTypeId: google.maps.MapTypeId.ROADMAP
    	  });

    	  google.maps.event.addListener(map, 'bounds_changed', function() {
    	      var lat1 = 37.41463623043073;
    	      var lat2 = 37.46915383933881;
    	      var lng1 = -122.1848153442383;
    	      var lng2 = -122.09898465576174;  

    	      var rectangle = new google.maps.Polygon({
    	         paths : [
    	           new google.maps.LatLng(lat1, lng1),
    	           new google.maps.LatLng(lat2, lng1),
    	           new google.maps.LatLng(lat2, lng2),
    	           new google.maps.LatLng(lat1, lng2)
    	         ],
    	        strokeOpacity: 0,
    	        fillOpacity : 0,
    	        map : map
    	      });
    	      google.maps.event.addListener(rectangle, 'click', function(args) {  
    	         console.log('latlng', args.latLng);
    	    });
    	  });
    	}
    </script>
  </head>
  <body>
<div id="map-canvas"></div>
  </body>
</html>