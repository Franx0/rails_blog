var textarea = document.getElementById("comment_area");
var letter_counter = document.getElementById("number_count");

textarea.addEventListener("keypress", function(){count_letters(textarea.value)});

function count_letters(area){
    var counter = 140;

    if(area.length <= counter) {
        letter_counter.style.color = "#213888";
    } else {
        letter_counter.style.color = "#FF0000";
    };

    letter_counter.innerHTML = (counter - area.length);
};