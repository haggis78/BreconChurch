function start () {
    init();
    scroll();
}
window.onload = start;
function init() {
    var fieldset = document.getElementsByTagName ('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}
function toggle() {
    var id = this.id;
    var variances = document.getElementsByClassName("variance");
    switch (id) {
        case "VARtoggle": {
            var i;
            for (var i = 0; i < variances.length; i++)
                {variances[i].classList.toggle("on")
            }
        };
        break;
    }
}
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
