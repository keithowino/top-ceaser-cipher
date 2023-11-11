"use strict";

const appName = "404";

let cascadeTitleAlternativeMsg = "";

function cascadeTitleMsg(){
    const option = [
        "Checking diagnostics...", 
        "System Malfunction.", 
        "Inspect your hardware."
    ]
    let max = option.length - 1;
    let random_value = Math.floor(Math.random() * (max + 1));
    cascadeTitleAlternativeMsg = " | " + option[random_value]
};
cascadeTitleMsg();

document.title = appName + cascadeTitleAlternativeMsg;

let footerSiteTileRefElement = document.querySelector('.js-title-ref');
footerSiteTileRefElement.innerHTML = appName