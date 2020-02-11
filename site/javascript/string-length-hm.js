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
    var row9 = document.querySelectorAll("[id *= '-9-']");
    var row10 = document.querySelectorAll("[id *= '-10-']");
    var row11 = document.querySelectorAll("[id *= '-11-']");
    var row12 = document.querySelectorAll("[id *= '-12-']");
    var row13 = document.querySelectorAll("[id *= '-13-']");
    var row14 = document.querySelectorAll("[id *= '-14-']");
    var row15 = document.querySelectorAll("[id *= '-15-']");
    var row16 = document.querySelectorAll("[id *= '-16-']");
    var row36 = document.querySelectorAll("[id *= '-36-']");
    var row56 = document.querySelectorAll("[id *= '-56-']");
    var row76 = document.querySelectorAll("[id *= '-76-']");
    var row96 = document.querySelectorAll("[id *= '-96-']");
    var row116 = document.querySelectorAll("[id *= '-116-']");
    var row136 = document.querySelectorAll("[id *= '-136-']");
    var row156 = document.querySelectorAll("[id *= '-156-']");
    var row176 = document.querySelectorAll("[id *= '-176-']");
    var row196 = document.querySelectorAll("[id *= '-196-']");
    var row216 = document.querySelectorAll("[id *= '-216-']");
    var row236 = document.querySelectorAll("[id *= '-236-']");
    for (var aa = 0; aa < row0.length; aa++){
        row0[aa].style.fill = "black";
    }
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
    for (var i = 0; i < row9.length; i++){
        row9[i].style.fill = "#67ed08";
    }
    for (var j = 0; j < row10.length; j++){
        row10[j].style.fill = "#3bee0a";
    }
    for (var k = 0; k < row11.length; k++){
        row11[k].style.fill = "#0fef0b";
    }
    for (var l = 0; l < row12.length; l++){
        row12[l].style.fill = "#0cf035";
    }
    for (var m = 0; m < row13.length; m++){
        row13[m].style.fill = "#0df163";
    }
    for (var n = 0; n < row14.length; n++){
        row14[n].style.fill = "#0ef291";
    }
    for (var o = 0; o < row15.length; o++){
        row15[o].style.fill = "#0ff3bf";
    }
    for (var p = 0; p < row16.length; p++){
        row16[p].style.fill = "#11f4ed";
    }
    for (var r = 0; r < row36.length; r++){
        row36[r].style.fill = "#12cef5";
    }
    for (var t = 0; t < row56.length; t++){
        row56[t].style.fill = "#13a2f6";
    }
    for (var v = 0; v < row76.length; v++){
        row76[v].style.fill = "#147bf7";
    }
    for (var x = 0; x < row96.length; x++){
        row96[x].style.fill = "#164bf8";
    }
    for (var z = 0; z < row116.length; z++){
        row116[z].style.fill = "#171ff9";
    }
    for (var ac = 0; ac < row136.length; ac++){
        row136[ac].style.fill = "#3c18fa";
    }
    for (var ae = 0; ae < row156.length; ae++){
        row156[ae].style.fill = "#6a19fb";
    }
    for (var ag = 0; ag < row176.length; ag++){
        row176[ag].style.fill = "#981bfc";
    }
    for (var ai = 0; ai < row196.length; ai++){
        row196[ai].style.fill = "#c61cfd";
    }
    for (var ak = 0; ak < row216.length; ak++){
        row216[ak].style.fill = "#f31d4e";
    }
    for (var am = 0; am < row236.length; am++){
        row236[am].style.fill = "#ff1fdd";
    }
}
