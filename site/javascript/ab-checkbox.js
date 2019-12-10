window.onload = init
function init() {
    wordCountBG();
    stringCountBG();
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

    function wordCountBG() {
        var checkBox = document.getElementById("wordCountNav");
        var text = document.getElementById("word-count");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }
        function stringCountBG() {
        var checkBox = document.getElementById("stringCountNav");
        var text = document.getElementById("string-count");
        if (checkBox.checked == true){
            text.style.display = "block";
        } else {
            text.style.display = "none";
        }
    }