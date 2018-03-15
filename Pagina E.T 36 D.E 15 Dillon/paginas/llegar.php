<link  rel="stylesheet" href="css_llegar/llegarc.css" />

	<div id="llego">
	<h1>Como Llegar...</h1>
<p>Colectivos: </p>
<ul>
	<li>Línea: 71</li>
	<li>Línea: 41</li>
	<li>Línea: 29</li>
	<li>Línea: 67</li>
  <li>Línea: 93</li>
	<li>Línea: 110</li>
  <li>Línea: 130</li>
</ul>
<p>Trenes: Mitre - Retiro</p>

</div>

<div id="map">
  	
  </div>
 <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAoxBBWXtqPvg3OTcEm7kwoApxTIX9HfsA&callback=initMap">
    </script>
      <script>
      function initMap() {
        var uluru = {lat: -34.559989, lng: -58.492906};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 16,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <div id="general">
</div>
