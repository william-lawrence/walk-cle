function getElementFromTemplate(id) {
    let domNode = document.importNode(document.getElementById(id).content, true).firstElementChild;

    return domNode;
}

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
        });


}

