var textarea = document.getElementById("comment_area");
var letter_counter = document.getElementById("number_count");

textarea.onkeyup = function(){
    var counter = 140;
    var area = textarea.value;

    if(area.length<=counter){
        letter_counter.innerHTML = counter - area.length;
        letter_counter.style.color = "#213888";
        console.log(area.length)
    }else{
        console.log("entra");
        letter_counter.innerHTML = counter - area.length;
        letter_counter.style.color = "#FF0000";
    }
};