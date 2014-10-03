function getLocation() {
  navigator.geolocation.getCurrentPosition(showLocation);
}

function showLocation(position) {
  lat = position.coords.latitude
  lng = position.coords.longitude
  map.setCenter(new google.maps.LatLng(lat, lng));
  map.setZoom(14);

  var user_marker = new google.maps.Marker({
    position: new google.maps.LatLng(lat, lng),
    map: map,
    title: "YOUR LOCATION",
    animation: google.maps.Animation.DROP,
    icon: "/icons/user.png",
    zIndex: 1000
  });
}