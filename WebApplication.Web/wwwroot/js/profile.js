function getElementFromTemplate(id) {
    let domNode = document.importNode(document.getElementById(id).content, true).firstElementChild;

    return domNode;
}

// Ensures that the page is fully loaded before scripts run.
document.addEventListener('DOMContentLoaded', () => {
    console.log('DOM Loaded');
    
});