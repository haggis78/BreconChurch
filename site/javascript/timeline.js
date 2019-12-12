/* 12-6-2019-Prepared by Amber Peddicord */

window.onload = initialize;

function initialize() {
    var circleSelect = document.querySelectorAll('circle[id]');
    var ellipseSelect = document.querySelectorAll('ellipse[id]');
    for (var i = 0; i < circleSelect.length; i++)
    {
        circleSelect[i].addEventListener('mouseover', textShow, false);
    }
     for (var j = 0; j < ellipseSelect.length; j++)
    {
        ellipseSelect[j].addEventListener('mouseover', textShow, false);
    }
}


function textShow() {
    hide_last();
    var ts = document.getElementsByClassName(this.id.split("-")[1]);
    for (var i = 0; i < ts.length; i++){
        ts[i].style.display = "block";
    }
}

function hide_last() {
    var divs = document.querySelectorAll('foreignObject > div[class]');
    for (var i = 0; i < divs.length; i++){
    
    divs[i].style.display = "none"
    }
}
