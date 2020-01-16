window.onload = init
function init() {
    CompC();
    CompD();
    CompI();
    CompJ();
    CompO();
    CompR();
    CompS();
    CompW();
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

    function CompC() {
        var checkBox = document.getElementById("CompCNav");
        var textList = document.querySelectorAll("[class *= 'C']");
        var text;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
        }
    }
    function CompD() {
        var checkBox = document.getElementById("CompDNav");
        var textList = document.querySelectorAll("[class *= 'D']");
        var text;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
        }
    }
    function CompI() {
        var checkBox = document.getElementById("CompINav");
        var textList = document.querySelectorAll("[class *= 'I']");
        var text;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
        }
    }
    function CompJ() {
        var checkBox = document.getElementById("CompJNav");
        var textList = document.querySelectorAll("[class *= 'J']");
        var text;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
        }
    }
    function CompO() {
        var checkBox = document.getElementById("CompONav");
        var textList = document.querySelectorAll("[class *= 'O']");
        var text;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
        }
    }
    function CompR() {
        var checkBox = document.getElementById("CompRNav");
        var textList = document.querySelectorAll("[class *= 'R']");
        var text;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
        }
    }
    function CompS() {
        var checkBox = document.getElementById("CompSNav");
        var textList = document.querySelectorAll("[class *= 'S']");
        var text;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
        }
    }
    function CompW() {
        var checkBox = document.getElementById("CompWNav");
        var textList = document.querySelectorAll("[class *= 'W']");
        var text;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
        }
    }
