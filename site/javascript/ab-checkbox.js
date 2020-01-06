function start() {
    init();
    scroll();
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

function init() {
    var svgSelect = document.querySelectorAll('g[id]');
    for (var i = 0; i < svgSelect.length; i++)
    {
        svgSelect[i].addEventListener('mouseover', svgShow, false);
    }
}
function svgShow() {
    hide_last();
    var tsvg = document.getElementById(this.id.split("-")[1]);
    for (var i = 0; i < tsvg.length; i++){
        tsvg[i].style.display = "block";
    }
}

function hide_last() {
    trow.style.display = "none";
}
