import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

// 1. select the map element in our HTML
// 2. only build a map if there's a div#map to inject into
// 3. creates a new instance of the Map object on the view
// 4. Add markers to our map
// 5. Fit map to the markers based on furthest lats and lngs
// 6. Add the geocoder input for the map

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 5000 });
};

const showMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
  return map;
}

const addMarkersToMap = (markers, map) => {
  markers.forEach((marker) => {

    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);

    // Create a HTML element for your custom marker
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '20px';
    element.style.height = '20px';

    // Pass the element as an argument to the new marker
    new mapboxgl.Marker(element)
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup)
      .addTo(map);
  });
}



const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    const markers = JSON.parse(mapElement.dataset.markers);
    const map = showMap(mapElement);
    addMarkersToMap(markers, map);
    fitMapToMarkers(map, markers);
    // map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                      // mapboxgl: mapboxgl }));
  }
};

export { initMapbox };
