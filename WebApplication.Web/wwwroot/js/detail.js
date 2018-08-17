document.addEventListener('DOMContentLoaded', () => {
    // Code that runs when the DOM is loaded and verifies we have attached event handlers
    console.log('DOM Loaded');
    document.querySelector('div.directions-button').addEventListener('click', (event) => {
        console.log('Directions Ahoy')
        getLocation();
    });
});

let directionsMap;
let startingLocation;

// override location
// 41.4995784    -81.6870261

// destination
// 41.4974835    -81.6927965

function getDirections(position) {
    startingLocation = { lat: position.coords.latitude, lng: position.coords.longitude };
    let directionsDisplay = new google.maps.DirectionsRenderer;
    let directionsService = new google.maps.DirectionsService;
    directionsMap = new google.maps.Map(document.getElementById('directions-map'), {
        zoom: 7,
        center: startingLocation
    });
    directionsDisplay.setMap(directionsMap);
    directionsDisplay.setPanel(document.getElementById('directions-route'));
    calculateAndDisplayRoute(directionsService, directionsDisplay);
    document.getElementById('directions-map').classList.remove('latent');
    document.getElementById('directions-route').classList.remove('latent');
    document.getElementById('directions-route').classList.add('directions-route')

}

function calculateAndDisplayRoute(directionsService, directionsDisplay) {
    let start = startingLocation;
    let endLat = parseFloat(document.getElementById('lat').innerText);
    let endLng = parseFloat(document.getElementById('lng').innerText);
    let end = { lat: location.latitude, lng: location.longitude };
    directionsService.route({
        origin: start,
        destination: { lat: endLat, lng: endLng },
        travelMode: 'WALKING'
    }, function (response, status) {
        if (status === 'OK') {
            directionsDisplay.setDirections(response);
        } else {
            window.alert('Directions request failed due to ' + status);
        }
    });
}
function getLocation() {
    indexOrDetail = document.querySelector('div.home-wrapper')
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(getDirections);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}


