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
        circleCSel[i].addEventListener("mouseover", cH, false);
        circleCSel[i].addEventListener("mouseout", circleClear, false);
        circleDSel[i].addEventListener("mouseover", dH, false);
        circleDSel[i].addEventListener("mouseout", circleClear, false);
        circleISel[i].addEventListener("mouseover", iH, false);
        circleISel[i].addEventListener("mouseout", circleClear, false);
        circleJSel[i].addEventListener("mouseover", jH, false);
        circleJSel[i].addEventListener("mouseout", circleClear, false);
        circleOSel[i].addEventListener("mouseover", oH, false);
        circleOSel[i].addEventListener("mouseout", circleClear, false);
        circleRSel[i].addEventListener("mouseover", rH, false);
        circleRSel[i].addEventListener("mouseout", circleClear, false);
        circleSSel[i].addEventListener("mouseover", sH, false);
        circleSSel[i].addEventListener("mouseout", circleClear, false);
        circleWSel[i].addEventListener("mouseover", wH, false);
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
    var tc = document.querySelectorAll("[id ^= 'head-C']");
    var td = document.querySelectorAll("[id ^= 'head-D']");
    var ti = document.querySelectorAll("[id ^= 'head-I']");
    var tj = document.querySelectorAll("[id ^= 'head-J']");
    var to = document.querySelectorAll("[id ^= 'head-O']");
    var tr = document.querySelectorAll("[id ^= 'head-R']");
    var ts = document.querySelectorAll("[id ^= 'head-S']");
    var tw = document.querySelectorAll("[id ^= 'head-W']");
    for (var n = 0; n < tc.length; n++) {
        tc[n].addEventListener("mouseover", cH, false);
        tc[n].addEventListener("mouseout", clear, false);
        td[n].addEventListener("mouseover", dH, false);
        td[n].addEventListener("mouseout", clear, false);
        ti[n].addEventListener("mouseover", iH, false);
        ti[n].addEventListener("mouseout", clear, false);
        tj[n].addEventListener("mouseover", jH, false);
        tj[n].addEventListener("mouseout", clear, false);
        to[n].addEventListener("mouseover", oH, false);
        to[n].addEventListener("mouseout", clear, false);
        tr[n].addEventListener("mouseover", rH, false);
        tr[n].addEventListener("mouseout", clear, false);
        ts[n].addEventListener("mouseover", sH, false);
        ts[n].addEventListener("mouseout", clear, false);
        tw[n].addEventListener("mouseover", wH, false);
        tw[n].addEventListener("mouseout", clear, false);
    }
    var tdSel = document.querySelectorAll("[id ^= 'column']");
    for (var l = 0; l < tdSel.length; l++) {
        tdSel[l].addEventListener("mouseover", matchH, false);
    }
    var lineSel = document.querySelectorAll("[id ^= 'line-']")
    for (var m = 0; m < lineSel.length; m++) {
        lineSel[m].addEventListener("mouseover", matchH, false);
        lineSel[m].addEventListener("mouseout", clear, false);
    }
}

function clear() {
    var columns = document.querySelectorAll("[id *= 'column']");
    var headers = document.querySelectorAll("[id ^= 'head-']");
    for (var i = 0; i < columns.length; i++) {
        columns[i].style.background = "#ffe6b3";
        columns[i].style.color = "black";
        columns[i].style.fontWeight = "normal";
    }
    for (var j = 0; j < headers.length; j++) {
        headers[j].style.backgroundColor = "#ffe6b3";
        headers[j].style.color = "black";
    }
    var lines = document.querySelectorAll("[id ^= 'line']");
    for (var k = 0; k < lines.length; k++) {
        lines[k].style.stroke ="black";
    }
    var tds = document.querySelectorAll("[id ^= 'td-']");
    for (var l = 0; l < tds.length; l++) {
        tds[l].style.backgroundColor = "#ffe6b3";
    }
    var circles = document.querySelectorAll("[id ^= 'circle']");
    for (var m = 0; m < circles.length; m++) {
        circles[m].style.stroke = "black";
    }
}

function cH() {
    var cLines = document.querySelectorAll("[id *= 'C']");
    for (var i = 0; i < cLines.length; i++) {
        cLines[i].style.stroke = "red"
    }
    var cTD = document.querySelectorAll("[id ^= 'td-c']");
    for (var k = 0; k < cTD.length; k++) {
        cTD[k].style.backgroundColor = "lightGrey";
    }
    var cRow = document.querySelectorAll("[id *= '-1-ab']");
    var crHead = document. querySelectorAll("[id ^= 'head-C-col']");
    var cColumn = document.querySelectorAll("[id ^= 'column1-']");
    var ccHead = document.querySelectorAll("[id ^= 'head-C-row']");
    for (var l = 0; l < cRow.length; l++) {
        cRow[l].style.backgroundColor = "lightGrey";
    }
    for (var m = 0; m < cColumn.length; m++) {
        cColumn[m].style.backgroundColor = "lightGrey";
    }
    for (var n = 0; n < crHead.length; n++) {
        crHead[n].style.backgroundColor = "grey";
        crHead[n].style.color = "white";
    }
    for (var o = 0; o < ccHead.length; o++) {
        ccHead[o].style.backgroundColor = "grey";
        ccHead[o].style.color = "white";
    }
}
function dH() {
    var dLines = document.querySelectorAll("[id *= 'D']");
    for (var i = 0; i < dLines.length; i++) {
        dLines[i].style.stroke = "red"
    }
    var dTD = document.querySelectorAll("[id ^= 'td-d']");
    for (var k = 0; k < dTD.length; k++) {
        dTD[k].style.backgroundColor = "lightGrey";
    }
    var dRow = document.querySelectorAll("[id *= '-2-ab']");
    var drHead = document. querySelectorAll("[id ^= 'head-D-col']");
    var dColumn = document.querySelectorAll("[id ^= 'column2-']");
    var dcHead = document.querySelectorAll("[id ^= 'head-D-row']");
    for (var l = 0; l < dRow.length; l++) {
        dRow[l].style.backgroundColor = "lightGrey";
    }
    for (var m = 0; m < dColumn.length; m++) {
        dColumn[m].style.backgroundColor = "lightGrey";
    }
    for (var n = 0; n < drHead.length; n++) {
        drHead[n].style.backgroundColor = "grey";
        drHead[n].style.color = "white";
    }
    for (var o = 0; o < dcHead.length; o++) {
        dcHead[o].style.backgroundColor = "grey";
        dcHead[o].style.color = "white";
    }
}
function iH() {
    var iLines = document.querySelectorAll("[id *= 'I']");
    for (var i = 0; i < iLines.length; i++) {
        iLines[i].style.stroke = "red"
    }
    var iTD = document.querySelectorAll("[id ^= 'td-i']");
    for (var k = 0; k < iTD.length; k++) {
        iTD[k].style.backgroundColor = "lightGrey";
    }
    var iRow = document.querySelectorAll("[id *= '-3-ab']");
    var irHead = document. querySelectorAll("[id ^= 'head-I-col']");
    var iColumn = document.querySelectorAll("[id ^= 'column3-']");
    var icHead = document.querySelectorAll("[id ^= 'head-I-row']");
    for (var l = 0; l < iRow.length; l++) {
        iRow[l].style.backgroundColor = "lightGrey";
    }
    for (var m = 0; m < iColumn.length; m++) {
        iColumn[m].style.backgroundColor = "lightGrey";
    }
    for (var n = 0; n < irHead.length; n++) {
        irHead[n].style.backgroundColor = "grey";
        irHead[n].style.color = "white";
    }
    for (var o = 0; o < icHead.length; o++) {
        icHead[o].style.backgroundColor = "grey";
        icHead[o].style.color = "white";
    }
}
function jH() {
    var jLines = document.querySelectorAll("[id *= 'J']");
    for (var i = 0; i < jLines.length; i++) {
        jLines[i].style.stroke = "red"
    }
    var jTD = document.querySelectorAll("[id ^= 'td-j']");
    for (var k = 0; k < jTD.length; k++) {
        jTD[k].style.backgroundColor = "lightGrey";
    }
    var jRow = document.querySelectorAll("[id *= '-4-ab']");
    var jrHead = document. querySelectorAll("[id ^= 'head-J-col']");
    var jColumn = document.querySelectorAll("[id ^= 'column4-']");
    var jcHead = document.querySelectorAll("[id ^= 'head-J-row']");
    for (var l = 0; l < jRow.length; l++) {
        jRow[l].style.backgroundColor = "lightGrey";
    }
    for (var m = 0; m < jColumn.length; m++) {
        jColumn[m].style.backgroundColor = "lightGrey";
    }
    for (var n = 0; n < jrHead.length; n++) {
        jrHead[n].style.backgroundColor = "grey";
        jrHead[n].style.color = "white";
    }
    for (var o = 0; o < jcHead.length; o++) {
        jcHead[o].style.backgroundColor = "grey";
        jcHead[o].style.color = "white";
    }
}
function oH() {
    var oLines = document.querySelectorAll("[id *= 'O']");
    for (var i = 0; i < oLines.length; i++) {
        oLines[i].style.stroke = "red"
    }
    var oTD = document.querySelectorAll("[id ^= 'td-o']");
    for (var k = 0; k < oTD.length; k++) {
        oTD[k].style.backgroundColor = "lightGrey";
    }
    var oRow = document.querySelectorAll("[id *= '-5-ab']");
    var orHead = document. querySelectorAll("[id ^= 'head-O-col']");
    var oColumn = document.querySelectorAll("[id ^= 'column5-']");
    var ocHead = document.querySelectorAll("[id ^= 'head-O-row']");
    for (var l = 0; l < oRow.length; l++) {
        oRow[l].style.backgroundColor = "lightGrey";
    }
    for (var m = 0; m < oColumn.length; m++) {
        oColumn[m].style.backgroundColor = "lightGrey";
    }
    for (var n = 0; n < orHead.length; n++) {
        orHead[n].style.backgroundColor = "grey";
        orHead[n].style.color = "white";
    }
    for (var o = 0; o < ocHead.length; o++) {
        ocHead[o].style.backgroundColor = "grey";
        ocHead[o].style.color = "white";
    }
}
function rH() {
    var rLines = document.querySelectorAll("[id *= 'R']");
    for (var i = 0; i < rLines.length; i++) {
        rLines[i].style.stroke = "red"
    }
    var rHead = document.querySelectorAll("[id ^= 'head-r']");
    for (var j = 0; j < rHead.length; j++) {
        rHead[j].style.backgroundColor = "grey";
        rHead[j].style.color = "white";
    }
    var rTD = document.querySelectorAll("[id ^= 'td-r']");
    for (var k = 0; k < rTD.length; k++) {
        rTD[k].style.backgroundColor = "lightGrey";
    }
    var rRow = document.querySelectorAll("[id *= '-6-ab']");
    var rrHead = document. querySelectorAll("[id ^= 'head-R-col']");
    var rColumn = document.querySelectorAll("[id ^= 'column6-']");
    var rcHead = document.querySelectorAll("[id ^= 'head-R-row']");
    for (var l = 0; l < rRow.length; l++) {
        rRow[l].style.backgroundColor = "lightGrey";
    }
    for (var m = 0; m < rColumn.length; m++) {
        rColumn[m].style.backgroundColor = "lightGrey";
    }
    for (var n = 0; n < rrHead.length; n++) {
        rrHead[n].style.backgroundColor = "grey";
        rrHead[n].style.color = "white";
    }
    for (var o = 0; o < rcHead.length; o++) {
        rcHead[o].style.backgroundColor = "grey";
        rcHead[o].style.color = "white";
    }
}
function sH() {
    var sLines = document.querySelectorAll("[id *= 'S']");
    for (var i = 0; i < sLines.length; i++) {
        sLines[i].style.stroke = "red"
    }
    var sHead = document.querySelectorAll("[id ^= 'head-s']");
    for (var j = 0; j < sHead.length; j++) {
        sHead[j].style.backgroundColor = "grey";
        sHead[j].style.color = "white";
    }
    var sTD = document.querySelectorAll("[id ^= 'td-s']");
    for (var k = 0; k < sTD.length; k++) {
        sTD[k].style.backgroundColor = "lightGrey";
    }
    var sRow = document.querySelectorAll("[id *= '-7-ab']");
    var srHead = document. querySelectorAll("[id ^= 'head-S-col']");
    var sColumn = document.querySelectorAll("[id ^= 'column7-']");
    var scHead = document.querySelectorAll("[id ^= 'head-S-row']");
    for (var l = 0; l < sRow.length; l++) {
        sRow[l].style.backgroundColor = "lightGrey";
    }
    for (var m = 0; m < sColumn.length; m++) {
        sColumn[m].style.backgroundColor = "lightGrey";
    }
    for (var n = 0; n < srHead.length; n++) {
        srHead[n].style.backgroundColor = "grey";
        srHead[n].style.color = "white";
    }
    for (var o = 0; o < scHead.length; o++) {
        scHead[o].style.backgroundColor = "grey";
        scHead[o].style.color = "white";
    }
}
function wH() {
    var wLines = document.querySelectorAll("[id *= 'W']");
    for (var i = 0; i < wLines.length; i++) {
        wLines[i].style.stroke = "red"
    }
    var wHead = document.querySelectorAll("[id ^= 'head-w']");
    for (var j = 0; j < wHead.length; j++) {
        wHead[j].style.backgroundColor = "grey";
        wHead[j].style.color = "white";
    }
    var wTD = document.querySelectorAll("[id ^= 'td-w']");
    for (var k = 0; k < wTD.length; k++) {
        wTD[k].style.backgroundColor = "lightGrey";
    }
    var wRow = document.querySelectorAll("[id *= '-8-ab']");
    var wrHead = document. querySelectorAll("[id ^= 'head-W-col']");
    var wColumn = document.querySelectorAll("[id ^= 'column8-']");
    var wcHead = document.querySelectorAll("[id ^= 'head-W-row']");
    for (var l = 0; l < wRow.length; l++) {
        wRow[l].style.backgroundColor = "lightGrey";
    }
    for (var m = 0; m < wColumn.length; m++) {
        wColumn[m].style.backgroundColor = "lightGrey";
    }
    for (var n = 0; n < wrHead.length; n++) {
        wrHead[n].style.backgroundColor = "grey";
        wrHead[n].style.color = "white";
    }
    for (var o = 0; o < wcHead.length; o++) {
        wcHead[o].style.backgroundColor = "grey";
        wcHead[o].style.color = "white";
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
    var heads = document.querySelectorAll("[id ^= 'head']")
    for (var k = 0; k < heads.length; k++) {
        heads[k].style.backgroundColor = "#ffe6b3";
        heads[k].style.color = "black";
    }
    var tds = document.querySelectorAll("[id ^= 'td']");
    for (var l = 0; l < tds.length; l++) {
        tds[l].style.backgroundColor = "#ffe6b3";
    }
    var tLines = document.querySelectorAll("[id ^= 'column']");
    for (var m = 0; m < tLines.length; m++) {
        tLines[m].style.backgroundColor = "#ffe6b3";
    }
}

function column1H() {
    var column1 = document.querySelectorAll("[id ^= 'column1']");
    var columnC = document.querySelectorAll("[id *= 'C-col-']");
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
    var columnD = document.querySelectorAll("[id *= 'D-col-']");
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
    var columnI = document.querySelectorAll("[id *= 'I-col-']");
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
    var columnJ = document.querySelectorAll("[id *= 'J-col-']");
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
    var columnO = document.querySelectorAll("[id *= 'O-col-']");
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
    var columnR = document.querySelectorAll("[id *= 'R-col-']");
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
    var columnS = document.querySelectorAll("[id *= 'S-col-']");
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
    var columnW = document.querySelectorAll("[id *= 'W-col-']");
    for (var i = 0; i < column8.length; i++) {
        column8[i].style.backgroundColor = "lightGrey";
    }
    for (var j = 0; j < columnW.length; j++) {
        columnW[j].style.backgroundColor = "grey";
        columnW[j].style.color = "white";
    }
}

function row1H() {
    var row1 = document.querySelectorAll("[id *= '1-ab']");
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

function matchH() {
    var tdHighlight = document.getElementsByClassName(this.id.split("match")[1]);
    for (var i = 0; i < tdHighlight.length; i++) {
        tdHighlight[i].style.backgroundColor = "red";
        tdHighlight[i].style.color = "white";
        tdHighlight[i].style.fontWeight = "bold";
    }
    var lineHighlight = document.getElementsByClassName(this.id.split("match")[1]);
    for (var i = 0; i < lineHighlight.length; i++) {
        lineHighlight[i].style.stroke = "red";
    }
}

function redraw(evt) {
    var newtarget = evt.target || event.target;
    var topmost = document.getElementById("use");
    topmost.setAttributeNS("http://www.w3.org/1999/xlink",
        "xlink:href",
        "#" + newtarget.id);
}