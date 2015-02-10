var textarea = document.getElementById("comment_area");
var letter_counter = document.getElementById("number_count");

textarea.addEventListener("keydown", function(){countLetters(textarea.value)});

function countLetters(area){
    var counter = 140;

    changeColor(area, counter);
    letter_counter.innerHTML = (counter - area.length);
};

function changeColor(area, digits) {

    if(area.length <= digits) {
        letter_counter.style.color = "#213888";
    } else {
        letter_counter.style.color = "#FF0000";
    };
};