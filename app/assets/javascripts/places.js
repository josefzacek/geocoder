
// google maps
function initialize() {
  var title = $('#map_canvas').data('title');
  var latitude = $('#map_canvas').data('latitude');
  var longitude = $('#map_canvas').data('longitude');

  var myLatlng = new google.maps.LatLng(latitude,longitude);    // set latitude/longitude  
  var mapOptions = {
    zoom: 13,                                                   // higher number => closer
    center: myLatlng,                                           // show position in center of map
    mapTypeId: google.maps.MapTypeId.ROADMAP,                   // set type of map
    streetViewControl: false,                                   // remove street view icon
    mapTypeControl: false                                       // remove map type tabs
  }

  var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);     
  var marker = new google.maps.Marker({
    position: myLatlng,                                         // show marker in center of map
    map: map,
    title: title                                                // title when hovered over marker
  });
}
