function getElementFromTemplate(id) {
    let domNode = document.importNode(document.getElementById(id).content, true).firstElementChild;

    return domNode;
}

document.addEventListener('DOMContentLoaded', () => {
    // Code that runs when the DOM is loaded and verifies we have attached event handlers
    console.log('DOM Loaded');
    getLocation();

    document.querySelector('button#search').addEventListener('click', (event) => {
        event.preventDefault();
        keywords = document.getElementById('search-terms').value;

        locations = KeywordSearch(keywords);

        clearMarkers();

        addSearchResultsToPage();
    });
});

let map;
let youAreHere;

/**
 * A function that calls google's maps API and returns a map centered on the user's position (comes from html getLocation function) and puts a marker on the map to denote where they are on the map.  We use the map.setOptions property to hide the standard point of interest markers so that we can throw up our own poi's that we will get from the locations database.
 * @param {Object} position (has latitude and longitude properties)
 */
function initMap(position) {
    youAreHere = { lat: position.coords.latitude, lng: position.coords.longitude };
    map = new google.maps.Map(document.getElementById('map'), {
        center: youAreHere,
        zoom: 15,
        mapTypeControl: true
    });
    //puts a marker on the map with the user's position
    let userMarker = new google.maps.Marker({
        position: youAreHere,
        map: map,
        title: 'You Are Here!'
    });

    setCategoryMarkers(locationArray);

    //declares a style to apply to the map object that hides standard poi's
    let noPoi = [
        {
            featureType: "poi",
            stylers: [
                { visibility: "off" }
            ]
        }
    ];
    //tells the map object to honor our hide all standard poi's style
    map.setOptions({ styles: noPoi });
}

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(initMap);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

let category;
let locationArray;
var markers = [];
let base = window.location.protocol + "//" + window.location.host;

function CategorySearch(youAreHere) {
    category = document.querySelector('p.hidden').innerText;
    console.log(category);
    const url = `${base}/Search/CategorySearch?latitude=${youAreHere.lat}&longitude=${youAreHere.lng}&cat=${category}`;
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

function ellipsify(str) {
    if (str.length > 100) {
        return (str.substring(0, 100) + ". . .");
    }
    else {
        return str;
    }
}

async function setCategoryMarkers(locations) {

    locationArray = await CategorySearch(youAreHere, category);
    console.log(locationArray);

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

        newLocationDiv.querySelector('a').setAttribute("href", `https://localhost:44392/location/detail/${locationArray[i].id}?distanceFromUser=${locationArray[i].distanceFromUser}`);

        newLocationDiv.querySelector('label#distance-from-user').innerText = `${locationArray[i].distanceFromUser} mi away`;

        //changing max distance for demo purposes from 0.05 to
        if (locationArray[i].distanceFromUser <= 0.25) {
            const button = newLocationDiv.querySelector('button#check-in-button');
            button.classList.remove('hidden');
            newLocationDiv.querySelector('input').setAttribute("value", `${locationArray[i].id}`);
        }

        document.querySelector('div.category-location-name').insertAdjacentElement('beforeend', newLocationDiv);

        markers.push(marker);
    }
}

async function KeywordSearch(keywords) {
    const url = `${base}/search/keywordsearch?latitude=${youAreHere.lat}&longitude=${youAreHere.lng}&keywords=${keywords}`;
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

        newLocationDiv.querySelector('a').setAttribute("href", `https://localhost:44392/location/detail/${locationArray[i].id}?distanceFromUser=${locationArray[i].distanceFromUser}`);

        newLocationDiv.querySelector('label#distance-from-user').innerText = `${locationArray[i].distanceFromUser} mi away`;

        //changing max distance for demo purposes from 0.05 to
        if (locationArray[i].distanceFromUser <= 0.25) {
            const button = newLocationDiv.querySelector('button#check-in-button');
            button.classList.remove('hidden');
            newLocationDiv.querySelector('input').setAttribute("value", `${locationArray[i].id}`);
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

// Here are some of the coordinate ranges that we can choose from
const coordChoices = [
    { latitude: 41.4997236, longitude: -81.6958457 },
    { latitude: 41.498284, longitude: -81.705700 },
    { latitude: 41.509941, longitude: -81.610130 },
];


// We override the getCurrentPosition function
// and assign it our own function to run
navigator.geolocation.getCurrentPosition = (success) => {

    // Get a random index from the location of coordinates
    const rndIdx = Math.floor(Math.random() * coordChoices.length);

    // Get the position associated with that randomIndex
    const position = {
        coords: coordChoices[rndIdx]
    };

    // Call the function passed to indicate "we're done"
    success(position);
}