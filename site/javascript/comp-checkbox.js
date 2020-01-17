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
    clearFunction();
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
        var chars = document.getElementsByClassName("id-c")
        var textList = document.querySelectorAll("[class *= 'C']");
        var i;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompD() {
        var checkBox = document.getElementById("CompDNav");
        var chars = document.getElementsByClassName("id-d")
        var textList = document.querySelectorAll("[class *= 'D']");
        var i;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompI() {
        var checkBox = document.getElementById("CompINav");
        var chars = document.getElementsByClassName("id-i")
        var textList = document.querySelectorAll("[class *= 'I']");
        var i;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompJ() {
        var checkBox = document.getElementById("CompJNav");
        var chars = document.getElementsByClassName("id-j")
        var textList = document.querySelectorAll("[class *= 'J']");
        var i;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompO() {
        var checkBox = document.getElementById("CompONav");
        var chars = document.getElementsByClassName("id-o")
        var textList = document.querySelectorAll("[class *= 'O']");
        var i;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompR() {
        var checkBox = document.getElementById("CompRNav");
        var chars = document.getElementsByClassName("id-r")
        var textList = document.querySelectorAll("[class *= 'R']");
        var i;
        if (checkBox.checked == true){
            for (i = 0; i < textList.length; i++) {
                textList[i].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompS() {
        var checkBox = document.getElementById("CompSNav");
        var chars = document.getElementsByClassName("id-s")
        var textList = document.querySelectorAll("[class *= 'S']");
        var i;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompW() {
        var checkBox = document.getElementById("CompWNav");
        var chars = document.getElementsByClassName("id-w")
        var textList = document.querySelectorAll("[class *= 'W']");
        var i;
        if (checkBox.checked == true){
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (text = 0; text < textList.length; text++) {
                textList[text].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    var clearButton = document.getElementById("clearButton").addEventListener("click", clearFunction);
    function clearFunction() {
        document.querySelectorAll("[class ^= 'edition-']").style.display = "none"
    }

