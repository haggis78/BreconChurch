/* 12-6-2019-Prepared by Amber Peddicord */
function start() {
    initialize();
    scroll();
    show1213();
    show1314();
    show1415();
    show1516();
    show1617();
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
    var divs = document.querySelectorAll('foreignObject > div[class]');
    for (var i = 0; i < divs.length; i++){

    divs[i].style.display = "none"
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

function h1269() {document.getElementById("a1269").style.color = "red";}
function r1269() {document.getElementById("a1269").style.color = "black";}
function h1283() {document.getElementById("a1283").style.color = "red";}
function r1283() {document.getElementById("a1283").style.color = "black";}
function h1287() {document.getElementById("a1287").style.color = "red";}
function r1287() {document.getElementById("a1287").style.color = "black";}
function h1509() {document.getElementById("a1509").style.color = "red";}
function r1509() {document.getElementById("a1509").style.color = "black";}
function h1534() {document.getElementById("a1534").style.color = "red";}
function r1534() {document.getElementById("a1534").style.color = "black";}
function h1536() {document.getElementById("a1536").style.color = "red";}
function r1536() {document.getElementById("a1536").style.color = "black";}
function h1538() {document.getElementById("a1538").style.color = "red";}
function r1538() {document.getElementById("a1538").style.color = "black";}
function h1539() {document.getElementById("a1539").style.color = "red";}
function r1539() {document.getElementById("a1539").style.color = "black";}
function h1541() {document.getElementById("a1541").style.color = "red";}
function r1541() {document.getElementById("a1541").style.color = "black";}
function h1543() {document.getElementById("a1543").style.color = "red";}
function r1543() {document.getElementById("a1543").style.color = "black";}
function h1561() {document.getElementById("a1561").style.color = "red";}
function r1561() {document.getElementById("a1561").style.color = "black";}
function h1567() {document.getElementById("a1567").style.color = "red";}
function r1567() {document.getElementById("a1567").style.color = "black";}
function h1680() {
    document.getElementById("a1680").style.color = "red";
    document.getElementById("a1740").style.color = "red";
}
function r1680() {
    document.getElementById("a1680").style.color = "black";
    document.getElementById("a1740").style.color = "black";
}
function h1739() {document.getElementById("a1739").style.color = "red";}
function r1739() {document.getElementById("a1739").style.color = "black";}
function h1719() {document.getElementById("a1719").style.color = "red";}
function r1719() {document.getElementById("a1719").style.color = "black";}
