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
    for (var s = 0; s < row56.length; s++){
        row56[s].style.fill = "#13a2f6";
    }
    for (var t = 0; t < row76.length; t++){
        row76[t].style.fill = "#147bf7";
    }
    for (var u = 0; u < row96.length; u++){
        row96[u].style.fill = "#164bf8";
    }
    for (var v = 0; v < row116.length; v++){
        row116[v].style.fill = "#171ff9";
    }
    for (var w = 0; w < row136.length; w++){
        row136[w].style.fill = "#3c18fa";
    }
    for (var x = 0; x < row156.length; x++){
        row156[x].style.fill = "#6a19fb";
    }
    for (var y = 0; y < row176.length; y++){
        row176[y].style.fill = "#981bfc";
    }
    for (var z = 0; z < row196.length; z++){
        row196[z].style.fill = "#c61cfd";
    }
    for (var aa = 0; aa < row216.length; aa++){
        row216[aa].style.fill = "#f31d4e";
    }
    for (var ab = 0; ab < row236.length; ab++){
        row236[ab].style.fill = "#ff1fdd";
    }
    for (var ac = 0; ac < row0.length; ac++){
        row0[ac].style.fill = "black";
    }
}
