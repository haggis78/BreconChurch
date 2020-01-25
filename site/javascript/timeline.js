/* 12-6-2019-Prepared by Amber Peddicord */
function start() {
    initialize();
    scroll();
    secondTimelines();
    init_highlight();
    init_shape_highlight();
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
    var circleSelect = document.querySelectorAll("circle[id ^= 'dr']");
    var ellipseSelect = document.querySelectorAll("ellipse[id ^= 'dr']");
    for (var i = 0; i < circleSelect.length; i++) {
        circleSelect[i].addEventListener("mouseover", textHighlight, false);
        circleSelect[i].addEventListener("mouseout", textReturn, false);
        circleSelect[i].addEventListener("mouseover", shapeHighlight, false);
        circleSelect[i].addEventListener("mouseout", shapeReturn, false);
    }
    for (var k = 0; k < ellipseSelect.length; k++) {
        ellipseSelect[k].addEventListener("mouseover", textHighlight, false);
        ellipseSelect[k].addEventListener("mouseout", textReturn, false);
        ellipseSelect[k].addEventListener("mouseover", shapeHighlight, false);
        ellipseSelect[k].addEventListener("mouseout", shapeReturn, false);
    }
}

function textHighlight() {
    var textH = document.getElementsByClassName(this.id.split("r")[1]);
    var divs = document.querySelectorAll("[class ^= 'c']");
    for (var j = 0; j < divs.length; j++) {
        divs[j].style.display = "block";
    }
    for (var i = 0; i < textH.length; i++) {
        textH[i].style.color = "#1f78b4";
    }
}

function textReturn() {
    var textR = document.getElementsByClassName(this.id.split("r")[1]);
    for (var i = 0; i < textR.length; i++) {
        textR[i].style.color = "black";
    }
}

function shapeHighlight() {
    var shapeH = document.getElementsByClassName(this.id.split("d")[1]);
    var divs = document.querySelectorAll("[class ^= 'drc']");
    for (var j = 0; j < divs.length; j++) {
        divs[j].style.display = "block";
    }
    for (var i = 0; i < shapeH.length; i++) {
        shapeH[i].style.fill = "#f768a1";
    }
}

function shapeReturn() {
    var circleR = document.querySelectorAll("circle[id ^= 'dr']");
    for (var i = 0; i < circleR.length; i++) {
        circleR[i].style.fill = "#a6cee3";
    }
    var ellipseR = document.querySelectorAll("ellipse[id ^= 'dr']");
    for (var j = 0; j < ellipseR.length; j++) {
        ellipseR[j].style.fill = "#b2df8a";
    }
}

function secondTimelines() {
    show1213();
    show1314();
    show1415();
    show1516();
    show1617();
    var svgs = document.querySelectorAll("[id ^= 'tl-']");
    var rectangles = document.querySelectorAll("[id ^= 'rect']");
    for (var i = 0; i < svgs.length; i++) {
        svgs[i].style.display = "none";
    }
    for (var j = 0; j < rectangles.length; j++) {
        rectangles[j].style.opacity = "0";
    }
}

function show1213() {
    document.getElementById("tl-1213").style.display = "block";
    document.getElementById("tl-1314").style.display = "none";
    document.getElementById("tl-1415").style.display = "none";
    document.getElementById("tl-1516").style.display = "none";
    document.getElementById("tl-1617").style.display = "none";
    document.getElementById("rect1213").style.opacity = "0.5";
    document.getElementById("rect1314").style.opacity = "0";
    document.getElementById("rect1415").style.opacity = "0";
    document.getElementById("rect1516").style.opacity = "0";
    document.getElementById("rect1617").style.opacity = "0";
}

function show1314() {
    document.getElementById("tl-1213").style.display = "none";
    document.getElementById("tl-1314").style.display = "block";
    document.getElementById("tl-1415").style.display = "none";
    document.getElementById("tl-1516").style.display = "none";
    document.getElementById("tl-1617").style.display = "none";
    document.getElementById("rect1213").style.opacity = "0";
    document.getElementById("rect1314").style.opacity = "0.5";
    document.getElementById("rect1415").style.opacity = "0";
    document.getElementById("rect1516").style.opacity = "0";
    document.getElementById("rect1617").style.opacity = "0";
}

function show1415() {
    document.getElementById("tl-1213").style.display = "none";
    document.getElementById("tl-1314").style.display = "none";
    document.getElementById("tl-1415").style.display = "block";
    document.getElementById("tl-1516").style.display = "none";
    document.getElementById("tl-1617").style.display = "none";
    document.getElementById("rect1213").style.opacity = "0";
    document.getElementById("rect1314").style.opacity = "0";
    document.getElementById("rect1415").style.opacity = "0.5";
    document.getElementById("rect1516").style.opacity = "0";
    document.getElementById("rect1617").style.opacity = "0";
}

function show1516() {
    document.getElementById("tl-1213").style.display = "none";
    document.getElementById("tl-1314").style.display = "none";
    document.getElementById("tl-1415").style.display = "none";
    document.getElementById("tl-1516").style.display = "block";
    document.getElementById("tl-1617").style.display = "none";
    document.getElementById("rect1213").style.opacity = "0";
    document.getElementById("rect1314").style.opacity = "0";
    document.getElementById("rect1415").style.opacity = "0";
    document.getElementById("rect1516").style.opacity = "0.5";
    document.getElementById("rect1617").style.opacity = "0";
}

function show1617() {
    document.getElementById("tl-1213").style.display = "none";
    document.getElementById("tl-1314").style.display = "none";
    document.getElementById("tl-1415").style.display = "none";
    document.getElementById("tl-1516").style.display = "none";
    document.getElementById("tl-1617").style.display = "block";
    document.getElementById("rect1213").style.opacity = "0";
    document.getElementById("rect1314").style.opacity = "0";
    document.getElementById("rect1415").style.opacity = "0";
    document.getElementById("rect1516").style.opacity = "0";
    document.getElementById("rect1617").style.opacity = "0.5";
}
