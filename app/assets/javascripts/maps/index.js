mapboxgl.accessToken = 'pk.eyJ1IjoiZW1tYWY5IiwiYSI6ImNpeTd0YTNtajAwNzMzMm1wc2MzYmptNjIifQ.oE5OkjaX_ntWQ5w0wiYWTQ';

var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v9',
    center: [-74.50, 40],
    zoom: 9,
    // causes pan & zoom handlers not to be applied, similar to
    // .dragging.disable() and other handler .disable() funtions in Leaflet.
    interactive: false
});