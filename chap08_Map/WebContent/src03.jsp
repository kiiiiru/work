<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>SRC03</title>
</head>
<body>
	<div>src03</div>
	<div id="map" style="width: 400px; height: 400px;"></div>
	<script>
		function initMap() {
			var pos = {
				"lat" : 37.4979462,
				"lng" : 127.025427
			};
			var pos2 = {
				"lat" : 37.4949470,
				"lng" : 127.027030
			};

			var map = new google.maps.Map(document.getElementById('map'), {
				"center" : pos,
				"zoom" : 15
			});

			var marker_1 = new google.maps.Marker({
				"position" : pos,
				"map" : map
			});

			var marker_2 = new google.maps.Marker({
				"position" : pos2,
				"map" : map
			});
		}
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCrZWsKrEvlOzfNXPSpF1R9lhOJMgioW-w&callback=initMap"
		async defer></script>
</body>
</html>