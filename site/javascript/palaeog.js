window.addEventListener('DOMContentLoaded',showHide,true);

function showHide() {
    alert ('Hi there! Looks like the page loaded! Yay!');
    var buttons = document.getElementsByTagName("button")
buttons[0].addEventListener('click', showHideN1, false)
buttons[1].addEventListener('click', showHideN2, false)
buttons[2].addEventListener('click', showHideN3, false)
buttons[3].addEventListener('click', showHideN4, false)
}

function showHideN1() {
var N1 = document.getElementById("n1");
if (N1.style.display == 'none') 
{N1.style.display='block';}
else {N1.style.display='none';}
}

function showHideN2() {
var N2 = document.getElementById("n2");
if (N2.style.display == 'none') 
{N2.style.display='block';}
else {N2.style.display='none';}
}

function showHideN3() {
var N3 = document.getElementById("n3");
if (N3.style.display == 'none') 
{N3.style.display='block';}
else {N3.style.display='none';}
}

function showHideN4() {
var N4 = document.getElementById("n4");
if (N4.style.display == 'none') 
{N4.style.display='block';}
else {N4.style.display='none';}
}