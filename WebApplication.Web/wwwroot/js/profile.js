function getElementFromTemplate(id) {
    let domNode = document.importNode(document.getElementById(id).content, true).firstElementChild;

    return domNode;
}

let checkIns;

// Ensures that the page is fully loaded before scripts run.
document.addEventListener('DOMContentLoaded', () => {
    console.log('DOM Loaded');

    // Once the DOM is fully loaded, get the check-ins for a user.
    let userId = 1;
    getUserCheckIns(userId);
});

/**
 * Gets all the check-ins that a user has performed.
 * @param {number} userId The number that represents the Id of the user.
 */
function getUserCheckIns(userId) {
    const url = `https://localhost:44392/account/getcheckins?userid=${userId}`
    const settings = {
        method: 'GET'
    };

    fetch(url, settings)
        .then(response => response.json())
        .then(json => {
            console.log(json);
            checkIns = json;
            addCheckInsToPage(checkIns);
        });


}

/**
 * Uses the check in data to add the elements to the page
 * @param {} checkIns the json from the database that is used to add the check ins to the page. 
 */
function addCheckInsToPage(checkIns) {

    for(let i = 0; i < checkIns.length; i++) {
         
        const newCheckInDiv = getElementFromTemplate('check-in');
        
        // Add all information that is recieved from the API to an element
        newCheckInDiv.querySelector('p.date-earned').innerText = checkIns[i].date;

        // Add the new element to the page
        document.querySelector('div.check-in').insertAdjacentElement('beforeend', newCheckInDiv);

    }

}

