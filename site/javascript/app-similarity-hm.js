function start() {
    scroll();
    initialize();
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
    var row0 = document.querySelectorAll("[id *= '-0-']");
    var row1 = document.querySelectorAll("[id *= '-1-']");
    var row2 = document.querySelectorAll("[id *= '-2-']");
    var row3 = document.querySelectorAll("[id *= '-3-']");
    var row4 = document.querySelectorAll("[id *= '-4-']");
    var row5 = document.querySelectorAll("[id *= '-5-']");
    var row6 = document.querySelectorAll("[id *= '-6-']");
    var row7 = document.querySelectorAll("[id *= '-7-']");
    var row8 = document.querySelectorAll("[id *= '-8-']");
    for (var a = 0; a < row1.length; a++){
        row1[a].style.fill = "#e50000";
    }
    for (var b = 0; b < row2.length; b++){
        row2[b].style.fill = "#e62e01";
    }
    for (var c = 0; c < row3.length; c++){
        row3[c].style.fill = "#e75c02";
    }
    for (var d = 0; d < row4.length; d++){
        row4[d].style.fill = "#e88b03";
    }
    for (var e = 0; e < row5.length; e++){
        row5[e].style.fill = "#e9b904";
    }
    for (var f = 0; f < row6.length; f++){
        row6[f].style.fill = "#eae705";
    }
    for (var g = 0; g < row7.length; g++){
        row7[g].style.fill = "#bfeb06";
    }
    for (var h = 0; h < row8.length; h++){
        row8[h].style.fill = "#93ec07";
    }
    var tableSel = document.querySelectorAll("[id *= 'exp']");
    for (var i = 0; i < tableSel.length; i++){
        tableSel[i].addEventListener("click", expand, false);
    }
    var colButton = document.querySelectorAll("[id *= 'col']");
    for (var j = 0; j < colButton.length; j++){
        colButton[j].addEventListener("click", collapse, false);
    }
}

function collapse() {
    var collapseButton = document.getElementsByClassName(this.id.split("col")[1]);
    for (var k = 0; k < collapseButton.length; k++){
        collapseButton[k].style.display = "none";
    }
}

function expand() {
    var expandButton = document.getElementsByClassName(this.id.split("exp")[1]);
    for (var l = 0; l < expandButton.length; l++){
        expandButton[l].style.display = "block";
    }
}


