<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>SRC03</title>
</head>
<body>
	<div>
		src03
	</div>
	<div id="map" style="width: 400px;height: 400px;"></div>
    <script>
      function initMap() {
		var map = new google.maps.Map(document.getElementById('map'), {
          "center" : {
        	  "lat":  37.4979462,
        	  "lng": 127.025427	
			},
        	  "zoom": 15
		});
      }
	</script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCrZWsKrEvlOzfNXPSpF1R9lhOJMgioW-w&callback=initMap" async defer></script>
</body>
</html>