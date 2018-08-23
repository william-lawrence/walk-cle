function getElementFromTemplate(id) {
    let domNode = document.importNode(document.getElementById(id).content, true).firstElementChild;

    return domNode;
}

document.addEventListener('DOMContentLoaded', () => {
    // Code that runs when the DOM is loaded and verifies we have attached event handlers
    console.log('DOM Loaded');
    document.querySelector('div.directions-button').addEventListener('click', (event) => {
        console.log('Directions Ahoy')
        getLocation();
    });

    document.querySelector('button#search').addEventListener('click', (event) => {
        //event.preventDefault();
        const keywords = document.getElementById('search-terms').value;
        const redirectUrl = '@Url.Action("home","index",)';
         
        window.location.href = redirectUrl;
        
        

        //locations = KeywordSearch(keywords);
        //console.log(locations);
        ////window.location.replace("https://localhost:44392/");

        //clearMarkers();

        //addSearchResultsToPage();
    });
});

let directionsMap;
let startingLocation;

let destinationAddress = locationSerialized.address + ' ' + locationSerialized.city + ' ' + locationSerialized.state + ' ' + locationSerialized.zip;

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
    //let endLat = parseFloat(document.getElementById('lat').innerText);
    //let endLng = parseFloat(document.getElementById('lng').innerText);
    let end = destinationAddress;
    directionsService.route({
        origin: start,
        destination: end,
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
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(getDirections);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

let base = window.location.protocol + "//" + window.location.host;

async function KeywordSearch(keywords) {
    const url = `${base}/search/keywordsearch?keywords=${keywords}`;
    const settings = {
        method: 'GET'
    };

    return new Promise((resolve, reject) => {
        // Send the request
        fetch(url, settings)
            .then(response => response.json())
            .then(json => {
                console.log(json);  //<-- it may take a while until this runs
                resolve(Array.from(json));
            });
    });
}

async function addSearchResultsToPage(locations) {

    const locationArray = await KeywordSearch(keywords);

    for (let i = 0; i < locationArray.length; i++) {
        let marker = new google.maps.Marker({
            position: { lat: locationArray[i].latitude, lng: locationArray[i].longitude },
            map: map,
            title: locationArray[i].name,
            label: {
                text: `${i + 1}`,
                color: "white",
                fontWeight: "bold",
                fontSize: "16px"
            }
        });
        const newLocationDiv = getElementFromTemplate('nearbyLocation');

        newLocationDiv.querySelector('label#location-name').innerText = locationArray[i].name;
        newLocationDiv.querySelector('label#location-number').innerText = `${i + 1}.`;
        newLocationDiv.querySelector('label#location-desc').innerText = ellipsify(locationArray[i].description);
        newLocationDiv.querySelector('a').setAttribute("href", `${base}/location/detail/${locationArray[i].id}`);

        //changing max distance for demo purposes from 0.05 to
        if (locationArray[i].distanceFromUser <= 0.25) {
            const button = newLocationDiv.querySelector('button#check-in-button');
            button.classList.remove('hidden');
            newLocationDiv.querySelector('input').setAttribute("value", `${locationArray[i].id}`);
            newLocationDiv.querySelector('input').setAttribute("value", `${locationArray[i].distanceFromUser}`);
        }

        document.querySelector('div.location-name').insertAdjacentElement('beforeend', newLocationDiv);

        markers.push(marker);
    }

}

async function clearMarkers() {

    // Loop through markers and set map to null for each
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(null);
    }

    let elem = document.getElementById("locations");

    while (elem.firstChild) {
        elem.removeChild(elem.firstChild)
    }

    // Reset the markers array
    markers = [];
}