/* 12-6-2019-Prepared by Amber Peddicord */
function start() {
    initialize();
    scroll();
    secondTimelines();
    init_highlight();
}
window.onload = start;

function scroll() {
    window.onscroll = function () {
        myFunction()
    };

    var navbar = document.getElementById("navbar");
    var sticky = navbar.offsetTop;

    function myFunction() {
        if (window.pageYOffset >= sticky) {
            navbar.classList.add("sticky")
        } else {
            navbar.classList.remove("sticky");
        }
    }
}

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
    var divs = document.querySelectorAll('foreignObject > div[class ^= "t"]');
    for (var i = 0; i < divs.length; i++){
    divs[i].style.display = "none"
    }
}

function init_highlight() {
    var circleSelect = document.querySelectorAll("circle[id ^= 'cr']");
    var ellipseSelect = document.querySelectorAll("ellipse[id ^= 'cr']");
    for (var i = 0; i < circleSelect.length; i++) {
        circleSelect[i].addEventListener("mouseover", textHighlight, false);
    }
    for (var j = 0; j < circleSelect.length; j++) {
        circleSelect[j].addEventListener("mouseout", textReturn, false);
    }
    for (var k = 0; k < ellipseSelect.length; k++) {
        ellipseSelect[k].addEventListener("mouseover", textHighlight, false);
    }
    for (var l = 0; l < ellipseSelect.length; l++) {
        ellipseSelect[l].addEventListener("mouseout", textReturn, false);
    }
}

function textHighlight() {
    var textH = document.getElementsByClassName(this.id.split("r")[1]);
    var divs = document.querySelectorAll("[class ^= 'c']");
    for (var j = 0; j < divs.length; j++) {
        divs[j].style.display = "block";
    }
    for (var i = 0; i < textH.length; i++) {
        textH[i].style.color = "red";
    }
}

function textReturn() {
    var textR = document.getElementsByClassName(this.id.split("r")[1]);
    for (var i = 0; i < textR.length; i++) {
        textR[i].style.color = "black";
    }
}

function secondTimelines() {
    show1213();
    show1314();
    show1415();
    show1516();
    show1617();
    var svgs = document.querySelectorAll("[id ^= 'tl-']");
    for (var i = 0; i < svgs.length; i++) {
        svgs[i].style.display = "none"
    }
}

function show1213() {
    document.getElementById("tl-1213").style.display = "block";
    document.getElementById("tl-1314").style.display = "none";
    document.getElementById("tl-1415").style.display = "none";
    document.getElementById("tl-1516").style.display = "none";
    document.getElementById("tl-1617").style.display = "none";
}

function show1314() {
    document.getElementById("tl-1213").style.display = "none";
    document.getElementById("tl-1314").style.display = "block";
    document.getElementById("tl-1415").style.display = "none";
    document.getElementById("tl-1516").style.display = "none";
    document.getElementById("tl-1617").style.display = "none";
}

function show1415() {
    document.getElementById("tl-1213").style.display = "none";
    document.getElementById("tl-1314").style.display = "none";
    document.getElementById("tl-1415").style.display = "block";
    document.getElementById("tl-1516").style.display = "none";
    document.getElementById("tl-1617").style.display = "none";
}

function show1516() {
    document.getElementById("tl-1213").style.display = "none";
    document.getElementById("tl-1314").style.display = "none";
    document.getElementById("tl-1415").style.display = "none";
    document.getElementById("tl-1516").style.display = "block";
    document.getElementById("tl-1617").style.display = "none";
}

function show1617() {
    document.getElementById("tl-1213").style.display = "none";
    document.getElementById("tl-1314").style.display = "none";
    document.getElementById("tl-1415").style.display = "none";
    document.getElementById("tl-1516").style.display = "none";
    document.getElementById("tl-1617").style.display = "block";
}
