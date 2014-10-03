function find_venue(event) {
  var result = venues.filter(function(venue) {
    return event.venue_id == venue.id;
  });
  return result
}

// LOADS GOOGLE MAPS ON PAGE LOAD

$(function($) {
  var script = document.createElement('script');
  script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
  document.body.appendChild(script);
});

// RUNS ON GOOGLE MAPS INITIALIZATION

function initialize() {

  // CREATES MAP

  var bounds = new google.maps.LatLngBounds();
  var mapOptions = {
    center: new google.maps.LatLng(49.2545, -123.1085761),
    disableDefaultUI: true,
  };

  // LINKS MAP TO CANVAS DIV

  map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
  map.setTilt(45);
  bounds.extend(new google.maps.LatLng(49.2805,-123.1085761));
  // map.fitBounds(bounds);

  // CREATES MARKER DATA

  var markers = []

  for (var i in events) {
    venue = find_venue(events[i])[0]
    markers.push([events[i].name, venue.latitude, venue.longitude])
  }

  // CREATES INFO BUBBLE CONTENT

  var infoBubbleContent = []

  for (var i in events) {
    infoBubbleContent.push(
      [
        "<div class='map-info'><a href='/events/" +
        events[i].id +
        "'><strong>" +
        events[i].name +
        "</strong></a><span class='time'>" +
        events[i].date +
        " @ " +
        events[i].time +
        "</span></div>"
      ]
    )
  }

  // INFO BUBBLE SETTINGS

  var infoBubble = new InfoBubble({
      maxWidth: 300,
      backgroundColor: 'rgba(255, 225, 0, 0.8)',
      zIndex: 667,
      borderRadius: 10,
      arrowSize: 0,
      padding: 20,
      borderWidth: 0,
      borderColor: '#ddd',
      disableAutoPan: true,
      ShadowStyle: 0,
      backgroundClassName: 'info-bubble',
    }),
    marker, i;

  // ICONS FOR TYPES

  icons = {
    "art": "/icons/art.png",
    "comedy": "/icons/comedy.png",
    "dance": "/icons/dance.png",
    "festival": "/icons/festival.png",
    "market": "/icons/market.png",
    "music": "/icons/music.png",
    "theatre": "/icons/theatre.png"
  }

  // CREATES EACH MARKER AND PLACES ON MAP 

  for (var i in events) {
    var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
    bounds.extend(position);
    marker = new google.maps.Marker({
      position: position,
      map: map,
      url: "/events/" + events[i].id,
      title: markers[i][0],
      icon: icons[events[i].type_name],
      animation: google.maps.Animation.DROP
    });

    // CLICK MARKER TO EVENT PAGE

    google.maps.event.addListener(marker, 'click', function() {
      window.location.href = this.url;
    });

    // HOVER MARKER TO SHOW INFO

    google.maps.event.addListener(marker, 'mouseover', (function(marker, i) {
      return function() {
        infoBubble.setContent(infoBubbleContent[i][0]);
        infoBubble.open(map, marker);
      };
    })(marker, i));

    // HIDE INFO ON HOVER END

    google.maps.event.addListener(marker, 'mouseout', (function(marker, i) {
      return function() {
        infoBubble.setContent(infoBubbleContent[i][0]);
        infoBubble.close(map, marker);
      };
    })(marker, i));

  }

  if (events.length == 0){
    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
        this.setZoom(14);
        google.maps.event.removeListener(boundsListener);
    });
  }

  // KEEP THE MAP CENTERED ON WINDOW RESIZE

  google.maps.event.addDomListener(map, "idle", function() {
    center = map.getCenter();
  });

  $(window).resize(function() {
    map.setCenter(center);
  });

  // FIT MAP TO BOUNDS

  map.fitBounds(bounds);

}