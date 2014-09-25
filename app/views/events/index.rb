<style>
  #map {
    width: 100%;
    min-height: 300px;
    margin: 0 0 4% 0;
  }
  .event_title {
    font-size: 1.1em;
  }
</style>
<% # todo: implement after, getting image path from form select: @image = params[:image] %>
<!-- gravitar -->
<% @image = "/img/test5.png" %>
<% @default = "301+Front+St+W,+Toronto,+ON+M5V+2T6 information" %>
<% @address = params[:address] %>
<% @description = params[:description] %>
<% @event_name = params[:event_name] %>
<% @the_address = @address ? @address.gsub!(/\s/,'+') : @default %>
<% @name = "<p class='event_title'><strong>Event Name:</strong> #{@event_name}</p>Location: #{params[:address].gsub(/\+/, ' ')}"%>

<div id="locations">

</div>
<div style="text-align:center;">
<h1>Event Details</h1>
<h3 style="darkgrey;"><%= @description %></h3>
  </div>
<%= @new_address %>
<!-- <p class="static_map">
  <img src="http://maps.googleapis.com/maps/api/staticmap?parameters?key=AIzaSyBoTnTgSKCql5mEkZCDxZTSmzv53zNPFzs&size=300x400&sensor=false&markers=< %= @the_address %>&markers=< %= @default %>" alt="128 W Hastings St
  Vancouver, BC V6B 1G8">
</p> -->
  

<address>
  <%= @the_address %>
</address>
<address>
  <%= @default %>
</address>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBoTnTgSKCql5mEkZCDxZTSmzv53zNPFzs&sensor=false"></script>
<script>

  $("#locations").prepend('<div id="map"></div>');
  var map;
  var center;
  var bounds;
  var geocoder;



 function initialize() {
          var mapOptions = {
            center: new google.maps.LatLng(49.261226, -123.1139268),
            zoom: 8,
            mapTypeId: google.maps.MapTypeId.ROADMAP
          };
          map = new google.maps.Map(document.getElementById("map"),
            mapOptions);


          geocoder = new google.maps.Geocoder();
          bounds = new google.maps.LatLngBounds();
        }

        var the_content = "test"

  function addMarkerToMap(location, address){
          var image = "<%= @image %>";
          var title = "<%= @name %>"
          var marker = new google.maps.Marker({map: map, position: location, icon: image});
          bounds.extend(location);
          map.fitBounds(bounds);
          var infoWindow = new google.maps.InfoWindow({ content : title })
          google.maps.event.addListener(marker, "click", function(){
            infoWindow.open(map, marker);
          });
        }
        initialize();

// after initialization, cycle over the addresses, store jquery selected address in var $address
// then look up the address. the geocoder method 'geocode' takes a hash of search options, and
// and anonymous function with two variables passed in: results, and status
// in the option, set address to $address.text
    $("address").each(function(){
          var $address = $(this);
          var $test = "hi";
          geocoder.geocode({address: $address.text()}, function(results, status){
            if(status == google.maps.GeocoderStatus.OK) addMarkerToMap(results[0].geometry.location, $address.text());
          });
        });


// code to save the center when the map is idle
      google.maps.event.addDomListener(map, "idle", function(){
          center = map.getCenter();
        });

        $(window).resize(function(){
          map.setCenter(center);
        });
</script>