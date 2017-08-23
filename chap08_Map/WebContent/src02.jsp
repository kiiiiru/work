<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2>javascript navigator</h2>

<script>
	console.log(navigator.geolocation);	// 사용자 위치정보를 담고 있는 객체
	// https 가 아니면 이건 쓸 수가 없음.  -  브라우저가 차단을 검
	
	var lat = 0;
	var lng = 0;
	var pos;
		
	function initMap() {
		navigator.geolocation.getCurrentPosition(function(e){
			console.log(e);
			lat = e.coords.latitude;
			lng = e.coords.longitude;
			//window.alert("1");
			//initMap();
			pos = { "lat":  lat, "lng": lng };
			window.alert("pos : "+pos.lat +"/"+pos.lng);
			//window.alert("2");
			
			var map = new google.maps.Map(document.getElementById('map'), {
	          "center" : pos,
	        	  "zoom": 15
			});
			
			var marker = new google.maps.Marker({
		          "position": pos,
		          "map": map
		        });
			//window.alert("3");
		});
	 }
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCrZWsKrEvlOzfNXPSpF1R9lhOJMgioW-w&callback=initMap" async defer></script>
<div id="map" style="width: 400px;height: 400px;"></div>









