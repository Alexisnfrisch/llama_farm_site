// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets

//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .



const blackLlamaProfileBox = document.getElementById("black-llama-profile-box");
const brownLlamaProfileBox = document.getElementById("brown-llama-profile-box");
const babyLlamaProfileBox = document.getElementById("baby-llama-profile-box");


const staticBlackLlama = document.getElementById("black-llama-static");
const hoverBlackLlama = document.getElementById("black-llama-hover");
const clickBlackLlama = document.getElementById("black-llama-click");



staticBlackLLama.onmouseover = function(){
  hoverBlackLlama.style.display = "block";
  staticBlackLlama.style.display = "none";
}

hoverBlackLlama.onmouseover = function(){
  hoverBlackLlama.style.display = "block";
  staticBlackLlama.style.display = "none";
  
}

staticBlackLlama.onmouseout = function(){
  hoverBlackLlama.style.display = "none";
  staticBlackLlama.style.display = "block";
}

hoverBlackLlama.onmouseout = function(){
  hoverBlackLlama.style.display = "none";
  staticBlackLlama.style.display = "block";
}

hoverBlackLlama.onmousedown = function(){
  	hoverBlackLlama.style.display = "none";
  	staticBlackLlama.style.display = "none";
  	clickBlackLlama.style.display = "block";
  	hoverBrownLlama.style.display = "none";
  	staticBrowmLlama.style.display = "block";
  	clickBrownLlama.style.display = "none";
  	hoverBabyLlama.style.display = "none";
  	staticBabyLlama.style.display = "block";
  	clickBabyLlama.style.display = "none";
  	blackLlamaProfileBox.style.display = "block"; 
	brownLlamaProfileBox.style.display = "none"; 
	babyLlamaProfileBox.style.display = "none"; 

		

const staticBrownLlama = document.getElementById("brown-llama-static"); 
const hoverBrownLlama = document.getElementById("brown-llama-hover"); 
const clickBrownLlama = document.getElementById("brown-llama-click");


staticBrownLlama.onmouseover = function(){
  hoverBrownLLama.style.display = "block";
  staticBrownLlama.style.display = "none";
}

hoverBrownLlama.onmouseover = function(){
  hoverBrownLlama.style.display = "block";
  staticBrownLlama.style.display = "none";
}

staticBrownLlama.onmouseout = function(){
  hoverBrownLlama.style.display = "none";
  staticBrownLlama.style.display = "block";
}

hoverBrownLlama.onmouseout = function(){
  hoverBrownLlama.style.display = "none";
  staticBrownLlama.style.display = "block";
}

hoverBrownLlama.onmousedown = function(){
  hoverBrownLlama.style.display = "none";
  staticBrownLlama.style.display = "none";
  clickBrownLlama.style.display = "block";
  hoverBabyLlama.style.display = "none";
  staticBabyLlama.style.display = "block";
  clickBabyLlama.style.display = "none";
  hoverBlackLlama.style.display = "none";
  staticBlackLlama.style.display = "block";
  clickBlackLlama.style.display = "none";
  blackLlamaProfileBox.style.display = "none"; 
	brownLlamaProfileBox.style.display = "block"; 
	babyLlamaProfileBox.style.display = "none";  

}

const staticBabyLlama = document.getElementById("baby-llama-static");
const hoverBabyLlama = document.getElementById("baby-llama-hover");
const clickBabyLlama = document.getElementById("baby-llama-click");


staticBabyLlama.onmouseover = function(){
  hoverBabyLlama.style.display = "block";
  staticBabyLlama.style.display = "none";
}

hoverBabyLlama.onmouseover = function(){
  hoverBabyLlama.style.display = "block";
  staticBabyLlama.style.display = "none";
}

staticBabyLlama.onmouseout = function(){
  hoverBabyLlama.style.display = "none";
  staticBabyLlama.style.display = "block";
}

hoverBabyLlama.onmouseout = function(){
  hoverBabyLlama.style.display = "none";
  staticBabyLlama.style.display = "block";
}

hoverBabyLlama.onmousedown = function(){
  hoverBabyLlama.style.display = "none";
  staticBabyLlama.style.display = "none";
  clickBabyLlama.style.display = "block";
  hoverBrownLlama.style.display = "none";
  staticBrownLlama.style.display = "block";
  clickBrownLlama.style.display = "none";
  hoverBlackLlama.style.display = "none";
  staticBlackLLama.style.display = "block";
  clickBlackLlama.style.display = "none";
  blackLlamaProfileBox.style.display = "none"; 
	brownLlamaProfileBox.style.display = "none"; 
	babyLlamaProfileBox.style.display = "block"; 
		

