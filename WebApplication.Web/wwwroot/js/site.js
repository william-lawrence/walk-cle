document.addEventListener('DOMContentLoaded', () => {
    // Code that runs when the DOM is loaded and verifies we have attached event handlers
    console.log('DOM Loaded');
    getLocation();

    /*
  
    1. create function that makes an api call to our own api controller and returns all the locations we have in DB within 1k of user's current position.
    2. create for loop within a map function (probably a new one that responds to button click event?) that creates a marker each time through the for loop 
    3. call function that makes an api call to our own api controller and returns all the locations we have within 1k of user's current position.
  
    */

});

//variable to hold our google map API call object
let map;
let youAreHere;
/**
 * A function that calls google's maps API and returns a map centered on the user's position (comes from html getLocation function) and puts a marker on the map to denote where they are on the map.  We use the map.setOptions property to hide the standard point of interest markers so that we can throw up our own poi's that we will get from the locations database.
 * @param {Object} position (has latitude and longitude properties)
 */
async function initMap(position) {
    youAreHere = { lat: position.coords.latitude, lng: position.coords.longitude };
    map = new google.maps.Map(document.getElementById('map'), {
        center: youAreHere,
        zoom: 16,
        mapTypeControl: true
    });
    //puts a marker on the map with the user's position
    let userMarker = new google.maps.Marker({
        position: youAreHere,
        map: map,
        title: 'You Are Here!'
    });


    const locationArray = await getNearbyLocations(youAreHere);

    /*let dummies = [{ name: "galuccis", latitude: 41.503404, longitude: -81.642882 },
    { name: "dunham", latitude: 41.5044482, longitude: -81.6473448 },
        { name: "popeyes", latitude: 41.5013711, longitude: -81.7100359 }
    ];*/
    
    for (let i = 0; i < locationArray.length; i++) {
        let marker = new google.maps.Marker({
            position: { lat: locationArray[i].latitude, lng: locationArray[i].longitude },
            map: map,
            title: locationArray[i].name,
            label: {
                text: locationArray[i].name,
                color: "red",
                fontWeight: "bold",
                fontSize: "16px"
            }
        });
    };

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

/*Use html's geolocation service to pull the latitude and longitude of the user's current position, then call google's maps api to return a map centered on the user's position.*/
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(initMap);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}



let locations;
let locationArray;
/**
 * a function that will call our own api and return a json "array" with all of the locations in our db that are within 1km of the user's current position.
 */
function getNearbyLocations(youAreHere) {
    const url = `https://localhost:44392/location/nearbylocations?latitude=${youAreHere.lat}&longitude=${youAreHere.lng}`;
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


