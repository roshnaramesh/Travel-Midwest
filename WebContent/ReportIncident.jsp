<html>
<head>
<title>Report an incident</title>
<link href="a.css" rel="stylesheet" type="text/css">
</head>
<body onLoad="initialize()" bgcolor="#2E4272">

<div style=" height: 103px; width: 100%; z-index: 3;">
    <img name="banner" border="0" height="103" width=100% src="travelmidwestbanner6.jpg" alt="">
  </div>
  <br>
<div class="container">
  <div id="map_canvas" class="left"></div>

  <div id="latlong" class="right">
  <form id="form1">
    <p>Latitude:</p><input size="20" type="text" id="latbox" name="lat" >
    <p>Longitude:</p> <input size="20" type="text" id="lngbox" name="lng" >
    <p>Time:</p><input size="20" type="datetime">
    <p>Information:</p><textarea name="Comments" id="Comments" rows="2"></textarea><br><br>
     <input type="submit" id="button" value="Submit"
				class="Submit">
    </form>
  </div>
  </div>
</body>
</html>

<cfoutput>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=#YOUR-GOOGLE-API-KEY#&sensor=false"></script>
</cfoutput>

<script type="text/javascript">
//<![CDATA[

    
    var map = null;
    var marker = null;

  
    var infowindow = new google.maps.InfoWindow({ 
        size: new google.maps.Size(150,50)
        });

    
    function createMarker(latlng, name, html) {

    var contentString = html;

    var marker = new google.maps.Marker({
        position: latlng,
        map: map,
        zIndex: Math.round(latlng.lat()*-100000)<<5
        });

    google.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent(contentString); 
        infowindow.open(map,marker);
        });

    google.maps.event.trigger(marker, 'click');    
    return marker;

}

function initialize() {

    var myLatlng = new google.maps.LatLng(41.871516,-87.651179);

  
    var myOptions = {
        zoom: 14,
        center: myLatlng,
        mapTypeControl: true,
        mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
        navigationControl: true,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

    var image = '/images/googlepins/pin2.png';  
    marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      icon: image,
      title:"Property Location"
    });

   
    formlat = document.getElementById("latbox").value = myLatlng.lat();
    formlng = document.getElementById("lngbox").value = myLatlng.lng();

    google.maps.event.addListener(map, 'click', function() {
        infowindow.close();
        });

    google.maps.event.addListener(map, 'click', function(event) {
        
         if (marker) {
            marker.setMap(null);
            marker = null;
         }

        var image = '/images/googlepins/pin2.png';
        var myLatLng = event.latLng ;
     
        marker = new google.maps.Marker({   
            position: myLatLng,
            map: map,
            icon: image,
            title:"Property Location"
        });

        formlat = document.getElementById("latbox").value = event.latLng.lat();
        formlng = document.getElementById("lngbox").value = event.latLng.lng();

    });

}
//]]>

</script> 