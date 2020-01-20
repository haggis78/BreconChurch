function start() {
    scroll();
}
window.onload = start;

function scroll() {
    window.onscroll = function () {
        myFunction()
        showHideGraphs()
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

    var chart1 = document.getElementById("switch-1");
    var chart2 = document.getElementById("switch-2");
    var chart3 = document.getElementById("switch-3");
    var chart4 = document.getElementById("switch-4");
    var chart5 = document.getElementById("switch-5");
    var chart6 = document.getElementById("switch-6");
    var chart7 = document.getElementById("switch-7");
    var chart8 = document.getElementById("switch-8");
    var chart9 = document.getElementById("switch-9");
    var chart10 = document.getElementById("switch-10");
    var chart11 = document.getElementById("switch-11");
    var chart12 = document.getElementById("switch-12");
    var chart13 = document.getElementById("switch-13");
    var chart14 = document.getElementById("switch-14");
    var chart15 = document.getElementById("switch-15");
    var chart16 = document.getElementById("switch-16");
    var chart17 = document.getElementById("switch-17");
    var chart18 = document.getElementById("switch-18");
    var chart19 = document.getElementById("switch-19");
    var chart20 = document.getElementById("switch-20");
    var chart21 = document.getElementById("switch-21");
    var chart22 = document.getElementById("switch-22");
    var chart23 = document.getElementById("switch-23");
    var chart24 = document.getElementById("switch-24");
    var chart25 = document.getElementById("switch-25");

    var offset1 = chart.offsetTop;
    var offset2 = chart.offsetTop;
    var offset3 = chart.offsetTop;
    var offset4 = chart.offsetTop;
    var offset5 = chart.offsetTop;
    var offset6 = chart.offsetTop;
    var offset7 = chart.offsetTop;
    var offset8 = chart.offsetTop;
    var offset9 = chart.offsetTop;
    var offset10 = chart1.offsetTop;
    var offset11 = chart1.offsetTop;
    var offset12 = chart1.offsetTop;
    var offset13 = chart1.offsetTop;
    var offset14 = chart1.offsetTop;
    var offset15 = chart1.offsetTop;
    var offset16 = chart1.offsetTop;
    var offset17 = chart1.offsetTop;
    var offset18 = chart1.offsetTop;
    var offset19 = chart1.offsetTop;
    var offset20 = chart2.offsetTop;
    var offset21 = chart2.offsetTop;
    var offset22 = chart2.offsetTop;
    var offset23 = chart2.offsetTop;
    var offset24 = chart2.offsetTop;
    var offset25 = chart2.offsetTop;

    var graph1 = document.getElementById("ab1-bar-graphs");
    var graph2 = document.getElementById("ab2-bar-graphs");
    var graph3 = document.getElementById("ab3-bar-graphs");
    var graph4 = document.getElementById("ab4-bar-graphs");
    var graph5 = document.getElementById("ab5-bar-graphs");
    var graph6 = document.getElementById("ab6-bar-graphs");
    var graph7 = document.getElementById("ab7-bar-graphs");
    var graph8 = document.getElementById("ab8-bar-graphs");
    var graph9 = document.getElementById("ab9-bar-graphs");
    var graph10 = document.getElementById("ab10-bar-graphs");
    var graph11 = document.getElementById("ab11-bar-graphs");
    var graph12 = document.getElementById("ab12-bar-graphs");
    var graph13 = document.getElementById("ab13-bar-graphs");
    var graph14 = document.getElementById("ab14-bar-graphs");
    var graph15 = document.getElementById("ab15-bar-graphs");
    var graph16 = document.getElementById("ab16-bar-graphs");
    var graph17 = document.getElementById("ab17-bar-graphs");
    var graph18 = document.getElementById("ab18-bar-graphs");
    var graph19 = document.getElementById("ab19-bar-graphs");
    var graph20 = document.getElementById("ab20-bar-graphs");
    var graph21 = document.getElementById("ab21-bar-graphs");
    var graph22 = document.getElementById("ab22-bar-graphs");
    var graph23 = document.getElementById("ab23-bar-graphs");
    var graph24 = document.getElementById("ab24-bar-graphs");
    var graph25 = document.getElementById("ab25 -bar-graphs");
}
