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
    var circleCSel = document.querySelectorAll("[id ^= 'circleC']");
    var circleDSel = document.querySelectorAll("[id ^= 'circleD']");
    var circleISel = document.querySelectorAll("[id ^= 'circleI']");
    var circleJSel = document.querySelectorAll("[id ^= 'circleJ']");
    var circleOSel = document.querySelectorAll("[id ^= 'circleO']");
    var circleRSel = document.querySelectorAll("[id ^= 'circleR']");
    var circleSSel = document.querySelectorAll("[id ^= 'circleS']");
    var circleWSel = document.querySelectorAll("[id ^= 'circleW']");
    for (var i = 0; i < circleCSel.length; i++) {
        circleCSel[i].addEventListener("mouseover", cCircleH, false);
        circleCSel[i].addEventListener("mouseout", circleClear, false);
        circleDSel[i].addEventListener("mouseover", dCircleH, false);
        circleDSel[i].addEventListener("mouseout", circleClear, false);
        circleISel[i].addEventListener("mouseover", iCircleH, false);
        circleISel[i].addEventListener("mouseout", circleClear, false);
        circleJSel[i].addEventListener("mouseover", jCircleH, false);
        circleJSel[i].addEventListener("mouseout", circleClear, false);
        circleOSel[i].addEventListener("mouseover", oCircleH, false);
        circleOSel[i].addEventListener("mouseout", circleClear, false);
        circleRSel[i].addEventListener("mouseover", rCircleH, false);
        circleRSel[i].addEventListener("mouseout", circleClear, false);
        circleSSel[i].addEventListener("mouseover", sCircleH, false);
        circleSSel[i].addEventListener("mouseout", circleClear, false);
        circleWSel[i].addEventListener("mouseover", wCircleH, false);
        circleWSel[i].addEventListener("mouseout", circleClear, false);
    }
    var column1Sel = document.querySelectorAll("[id ^= 'column1-']");
    var column2Sel = document.querySelectorAll("[id ^= 'column2-']");
    var column3Sel = document.querySelectorAll("[id ^= 'column3-']");
    var column4Sel = document.querySelectorAll("[id ^= 'column4-']");
    var column5Sel = document.querySelectorAll("[id ^= 'column5-']");
    var column6Sel = document.querySelectorAll("[id ^= 'column6-']");
    var column7Sel = document.querySelectorAll("[id ^= 'column7-']");
    var column8Sel = document.querySelectorAll("[id ^= 'column8-']");
    for (var j = 0; j < column1Sel.length; j++) {
        column1Sel[j].addEventListener("mouseover", column1H, false);
        column1Sel[j].addEventListener("mouseout", clear, false);
        column2Sel[j].addEventListener("mouseover", column2H, false);
        column2Sel[j].addEventListener("mouseout", clear, false);
        column3Sel[j].addEventListener("mouseover", column3H, false);
        column3Sel[j].addEventListener("mouseout", clear, false);
        column4Sel[j].addEventListener("mouseover", column4H, false);
        column4Sel[j].addEventListener("mouseout", clear, false);
        column5Sel[j].addEventListener("mouseover", column5H, false);
        column5Sel[j].addEventListener("mouseout", clear, false);
        column6Sel[j].addEventListener("mouseover", column6H, false);
        column6Sel[j].addEventListener("mouseout", clear, false);
        column7Sel[j].addEventListener("mouseover", column7H, false);
        column7Sel[j].addEventListener("mouseout", clear, false);
        column8Sel[j].addEventListener("mouseover", column8H, false);
        column8Sel[j].addEventListener("mouseout", clear, false);
    }
    var row1Sel = document.querySelectorAll("[id *= '-1-ab']");
    var row2Sel = document.querySelectorAll("[id *= '-2-ab']");
    var row3Sel = document.querySelectorAll("[id *= '-3-ab']");
    var row4Sel = document.querySelectorAll("[id *= '-4-ab']");
    var row5Sel = document.querySelectorAll("[id *= '-5-ab']");
    var row6Sel = document.querySelectorAll("[id *= '-6-ab']");
    var row7Sel = document.querySelectorAll("[id *= '-7-ab']");
    var row8Sel = document.querySelectorAll("[id *= '-8-ab']");
    for (var k = 0; k < row1Sel.length; k++) {
        row1Sel[k].addEventListener("mouseover", row1H, false);
        row1Sel[k].addEventListener("mouseout", clear, false);
        row2Sel[k].addEventListener("mouseover", row2H, false);
        row2Sel[k].addEventListener("mouseout", clear, false);
        row3Sel[k].addEventListener("mouseover", row3H, false);
        row3Sel[k].addEventListener("mouseout", clear, false);
        row4Sel[k].addEventListener("mouseover", row4H, false);
        row4Sel[k].addEventListener("mouseout", clear, false);
        row5Sel[k].addEventListener("mouseover", row5H, false);
        row5Sel[k].addEventListener("mouseout", clear, false);
        row6Sel[k].addEventListener("mouseover", row6H, false);
        row6Sel[k].addEventListener("mouseout", clear, false);
        row7Sel[k].addEventListener("mouseover", row7H, false);
        row7Sel[k].addEventListener("mouseout", clear, false);
        row8Sel[k].addEventListener("mouseover", row8H, false);
        row8Sel[k].addEventListener("mouseout", clear, false);
    }
}

function clear() {
    var columns = document.querySelectorAll("[id *= 'column']");
    var headers = document.querySelectorAll("[id ^= 'head-']");
    for (var i = 0; i < columns.length; i++) {
        columns[i].style.background = "#ffe6b3";
    }
    for (var j = 0; j < headers.length; j++) {
        headers[j].style.backgroundColor = "#ffe6b3";
        headers[j].style.color = "black";
    }
}

function cCircleH() {
    var cLines = document.querySelectorAll("[id *= 'C']");
    for (var i = 0; i < cLines.length; i++) {
        cLines[i].style.stroke = "red"
    }
}
function dCircleH() {
    var dLines = document.querySelectorAll("[id *= 'D']");
    for (var i = 0; i < dLines.length; i++) {
        dLines[i].style.stroke = "red"
    }
}
function iCircleH() {
    var iLines = document.querySelectorAll("[id *= 'I']");
    for (var i = 0; i < iLines.length; i++) {
        iLines[i].style.stroke = "red"
    }
}
function jCircleH() {
    var jLines = document.querySelectorAll("[id *= 'J']");
    for (var i = 0; i < jLines.length; i++) {
        jLines[i].style.stroke = "red"
    }
}
function oCircleH() {
    var oLines = document.querySelectorAll("[id *= 'O']");
    for (var i = 0; i < oLines.length; i++) {
        oLines[i].style.stroke = "red"
    }
}
function rCircleH() {
    var rLines = document.querySelectorAll("[id *= 'R']");
    for (var i = 0; i < rLines.length; i++) {
        rLines[i].style.stroke = "red"
    }
}
function sCircleH() {
    var sLines = document.querySelectorAll("[id *= 'S']");
    for (var i = 0; i < sLines.length; i++) {
        sLines[i].style.stroke = "red"
    }
}
function wCircleH() {
    var wLines = document.querySelectorAll("[id *= 'W']");
    for (var i = 0; i < wLines.length; i++) {
        wLines[i].style.stroke = "red"
    }
}
function circleClear() {
    var lines = document.querySelectorAll("[id ^= 'line']");
    var strokes = document.querySelectorAll("[id ^= 'circle']");
    for (var i = 0; i < lines.length; i++) {
        lines[i].style.stroke = "black"
    }
    for (var j = 0; j < strokes.length; j++) {
        strokes[j].style.stroke = "black"
    }
}

function column1H() {
    var column1 = document.querySelectorAll("[id ^= 'column1']");
    var columnC = document.querySelectorAll("[id *= 'C-column-']");
    for (var i = 0; i < column1.length; i++) {
        column1[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < columnC.length; j++) {
        columnC[j].style.backgroundColor = "grey";
        columnC[j].style.color = "white";
    }
}
function column2H() {
    var column2 = document.querySelectorAll("[id ^= 'column2']");
    var columnD = document.querySelectorAll("[id *= 'D-column-']");
    for (var i = 0; i < column2.length; i++) {
        column2[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < columnD.length; j++) {
        columnD[j].style.backgroundColor = "grey";
        columnD[j].style.color = "white";
    }
}
function column3H() {
    var column3 = document.querySelectorAll("[id ^= 'column3']");
    var columnI = document.querySelectorAll("[id *= 'I-column-']");
    for (var i = 0; i < column3.length; i++) {
        column3[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < columnI.length; j++) {
        columnI[j].style.backgroundColor = "grey";
        columnI[j].style.color = "white";
    }
}
function column4H() {
    var column4 = document.querySelectorAll("[id ^= 'column4']");
    var columnJ = document.querySelectorAll("[id *= 'J-column-']");
    for (var i = 0; i < column4.length; i++) {
        column4[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < columnJ.length; j++) {
        columnJ[j].style.backgroundColor = "grey";
        columnJ[j].style.color = "white";
    }
}
function column5H() {
    var column5 = document.querySelectorAll("[id ^= 'column5']");
    var columnO = document.querySelectorAll("[id *= 'O-column-']");
    for (var i = 0; i < column5.length; i++) {
        column5[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < columnO.length; j++) {
        columnO[j].style.backgroundColor = "grey";
        columnO[j].style.color = "white";
    }
}
function column6H() {
    var column6 = document.querySelectorAll("[id ^= 'column6']");
    var columnR = document.querySelectorAll("[id *= 'R-column-']");
    for (var i = 0; i < column6.length; i++) {
        column6[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < columnR.length; j++) {
        columnR[j].style.backgroundColor = "grey";
        columnR[j].style.color = "white";
    }
}
function column7H() {
    var column7 = document.querySelectorAll("[id ^= 'column7']");
    var columnS = document.querySelectorAll("[id *= 'S-column-']");
    for (var i = 0; i < column7.length; i++) {
        column7[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < columnS.length; j++) {
        columnS[j].style.backgroundColor = "grey";
        columnS[j].style.color = "white";
    }
}
function column8H() {
    var column8 = document.querySelectorAll("[id ^= 'column8']");
    var columnW = document.querySelectorAll("[id *= 'W-column-']");
    for (var i = 0; i < column8.length; i++) {
        column8[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < columnW.length; j++) {
        columnW[j].style.backgroundColor = "grey";
        columnW[j].style.color = "white";
    }
}

function row1H() {
    var row1 = document.querySelectorAll("[id *= '-1-ab']");
    var rowC = document.querySelectorAll("[id *= 'C-row-']");
    for (var i = 0; i < row1.length; i++) {
        row1[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < rowC.length; j++) {
        rowC[j].style.backgroundColor = "grey";
        rowC[j].style.color = "white";
    }
}
function row2H() {
    var row2 = document.querySelectorAll("[id *= '2-ab']");
    var rowD = document.querySelectorAll("[id *= 'D-row-']");
    for (var i = 0; i < row2.length; i++) {
        row2[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < rowD.length; j++) {
        rowD[j].style.backgroundColor = "grey";
        rowD[j].style.color = "white";
    }
}
function row3H() {
    var row3 = document.querySelectorAll("[id *= '3-ab']");
    var rowI = document.querySelectorAll("[id *= 'I-row-']");
    for (var i = 0; i < row3.length; i++) {
        row3[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < rowI.length; j++) {
        rowI[j].style.backgroundColor = "grey";
        rowI[j].style.color = "white";
    }
}
function row4H() {
    var row4 = document.querySelectorAll("[id *= '4-ab']");
    var rowJ = document.querySelectorAll("[id *= 'J-row-']");
    for (var i = 0; i < row4.length; i++) {
        row4[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < rowJ.length; j++) {
        rowJ[j].style.backgroundColor = "grey";
        rowJ[j].style.color = "white";
    }
}
function row5H() {
    var row5 = document.querySelectorAll("[id *= '5-ab']");
    var rowO = document.querySelectorAll("[id *= 'O-row-']");
    for (var i = 0; i < row5.length; i++) {
        row5[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < rowO.length; j++) {
        rowO[j].style.backgroundColor = "grey";
        rowO[j].style.color = "white";
    }
}
function row6H() {
    var row6 = document.querySelectorAll("[id *= '6-ab']");
    var rowR = document.querySelectorAll("[id *= 'R-row-']");
    for (var i = 0; i < row6.length; i++) {
        row6[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < rowR.length; j++) {
        rowR[j].style.backgroundColor = "grey";
        rowR[j].style.color = "white";
    }
}
function row7H() {
    var row7 = document.querySelectorAll("[id *= '7-ab']");
    var rowS = document.querySelectorAll("[id *= 'S-row-']");
    for (var i = 0; i < row7.length; i++) {
        row7[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < rowS.length; j++) {
        rowS[j].style.backgroundColor = "grey";
        rowS[j].style.color = "white";
    }
}
function row8H() {
    var row8 = document.querySelectorAll("[id *= '8-ab']");
    var rowW = document.querySelectorAll("[id *= 'W-row-']");
    for (var i = 0; i < row8.length; i++) {
        row8[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < rowW.length; j++) {
        rowW[j].style.backgroundColor = "grey";
        rowW[j].style.color = "white";
    }
}
