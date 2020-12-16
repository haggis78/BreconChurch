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
        var chars = document.getElementsByClassName("id-c");
        var textList = document.querySelectorAll("[class *= 'c-variance'']");
        var i;
        if (checkBox.checked == true){
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompD() {
        var checkBox = document.getElementById("CompDNav");
        var chars = document.getElementsByClassName("id-d");
        var textList = document.querySelectorAll('[class ^= "d-variance"]');
        var i;
        var x;
        if (checkBox.checked == true){
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompI() {
        var checkBox = document.getElementById("CompINav");
        var chars = document.getElementsByClassName("id-i");
        var textList = document.querySelectorAll("[class *= 'i-variance'']");
        var i;
        var x;
        if (checkBox.checked == true){
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompJ() {
        var checkBox = document.getElementById("CompJNav");
        var chars = document.getElementsByClassName("id-j");
        var textList = document.querySelectorAll("[class *= 'j-variance'']");
        var i;
        var x;
        if (checkBox.checked == true){
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompO() {
        var checkBox = document.getElementById("CompONav");
        var chars = document.getElementsByClassName("id-o");
        var textList = document.querySelectorAll("[class *= 'o-variance'']");
        var i;
        var x;
        if (checkBox.checked == true){
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompR() {
        var checkBox = document.getElementById("CompRNav");
        var chars = document.getElementsByClassName("id-r");
        var textList = document.querySelectorAll("[class *= 'r-variance'']");
        var i;
        var x;
        if (checkBox.checked == true){
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompS() {
        var checkBox = document.getElementById("CompSNav");
        var chars = document.getElementsByClassName("id-s");
        var textList = document.querySelectorAll("[class *= 's-variance'']");
        var i;
        var x;
        if (checkBox.checked == true){
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function CompW() {
        var checkBox = document.getElementById("CompWNav");
        var chars = document.getElementsByClassName("id-w");
        var textList = document.querySelectorAll("[class *= 'w-variance'']");
        var i;
        var x;
        if (checkBox.checked == true){
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "block"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "red"
            }
        } else {
            for (x = 0; x < textList.length; x++) {
                textList[x].style.display = "none"
            }
            for (i = 0; i < chars.length; i++) {
                chars[i].style.color = "black"
            }
        }
    }
    function clearFunction() {
        var clearList = document.querySelectorAll("[class ^= 'edition-']");
        var editionsList = document.querySelectorAll("[class ^= 'id-']");
        var clearChecks = document.querySelectorAll("[id ^= 'Comp']");
        var i;
        var x;
        var y;
        for (i = 0; i < clearList.length; i++) {
            clearList[i].style.display = "none"
        }
        for (x = 0; x < clearChecks.length; x++) {
            clearChecks[x].checked = false;
        }
        for (y = 0; y < editionsList.length; y++) {
            editionsList[y].style.color = "black"
        }
    }
