window.onload = init
function init() {
    leftCompC();
    leftCompD();
    leftCompI();
    leftCompJ();
    leftCompO();
    leftCompR();
    leftCompS();
    leftCompW();
    centerCompC();
    centerCompD();
    centerCompI();
    centerCompJ();
    centerCompO();
    centerCompR();
    centerCompS();
    centerCompW();
    rightCompC();
    rightCompD();
    rightCompI();
    rightCompJ();
    rightCompO();
    rightCompR();
    rightCompS();
    rightCompW();
}
window.onload = function () {
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

    function leftCompC() {
        var checkBox = document.getElementById("leftCompCnav");
        var text = document.getElementById("leftCompC");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
        function leftCompD() {
        var checkBox = document.getElementById("leftCompDnav");
        var text = document.getElementById("leftCompD");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function leftCompI() {
        var checkBox = document.getElementById("leftCompInav");
        var text = document.getElementById("leftCompI");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function leftCompJ() {
        var checkBox = document.getElementById("leftCompJnav");
        var text = document.getElementById("leftCompJ");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function leftCompO() {
        var checkBox = document.getElementById("leftCompOnav");
        var text = document.getElementById("leftCompO");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function leftCompR() {
        var checkBox = document.getElementById("leftCompRnav");
        var text = document.getElementById("leftCompR");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function leftCompS() {
        var checkBox = document.getElementById("leftCompSnav");
        var text = document.getElementById("leftCompS");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function leftCompW() {
        var checkBox = document.getElementById("leftCompWnav");
        var text = document.getElementById("leftCompW");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function centerCompC() {
        var checkBox = document.getElementById("centerCompCnav");
        var text = document.getElementById("centerCompC");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function centerCompD() {
        var checkBox = document.getElementById("centerCompDnav");
        var text = document.getElementById("centerCompD");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function centerCompI() {
        var checkBox = document.getElementById("centerCompInav");
        var text = document.getElementById("centerCompI");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function centerCompJ() {
        var checkBox = document.getElementById("centerCompJnav");
        var text = document.getElementById("centerCompJ");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function centerCompO() {
        var checkBox = document.getElementById("centerCompOnav");
        var text = document.getElementById("centerCompO");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function centerCompR() {
        var checkBox = document.getElementById("centerCompRnav");
        var text = document.getElementById("centerCompR");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function centerCompS() {
        var checkBox = document.getElementById("centerCompSnav");
        var text = document.getElementById("centerCompS");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function centerCompW() {
        var checkBox = document.getElementById("centerCompWnav");
        var text = document.getElementById("centerCompW");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function rightCompC() {
        var checkBox = document.getElementById("rightCompCnav");
        var text = document.getElementById("rightCompC");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function rightCompD() {
        var checkBox = document.getElementById("rightCompDnav");
        var text = document.getElementById("rightCompD");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function rightCompI() {
        var checkBox = document.getElementById("rightCompInav");
        var text = document.getElementById("rightCompI");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function rightCompJ() {
        var checkBox = document.getElementById("rightCompJnav");
        var text = document.getElementById("rightCompJ");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function rightCompO() {
        var checkBox = document.getElementById("rightCompOnav");
        var text = document.getElementById("rightCompO");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function rightCompR() {
        var checkBox = document.getElementById("rightCompRnav");
        var text = document.getElementById("rightCompR");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function rightCompS() {
        var checkBox = document.getElementById("rightCompSnav");
        var text = document.getElementById("rightCompS");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
    function rightCompW() {
        var checkBox = document.getElementById("rightCompWnav");
        var text = document.getElementById("rightCompW");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
