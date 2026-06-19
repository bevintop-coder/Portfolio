window.onload = function () {
    console.log("Welcome to Bevinto Paul's Portfolio");
};


document.querySelectorAll("a").forEach(link => {

    link.addEventListener("click", function(e){

        if(this.hash !== ""){

            e.preventDefault();

            let section = document.querySelector(this.hash);

            section.scrollIntoView({
                behavior:"smooth"
            });

        }

    });

});


let text = [
    "Java Developer",
    "Web Developer",
    "Problem Solver",
    "Computer Science Student"
];


let index = 0;
let charIndex = 0;

let typingElement = document.querySelector("header p:nth-child(3)");


function typeEffect(){

    if(charIndex < text[index].length){

        typingElement.innerHTML += text[index].charAt(charIndex);

        charIndex++;

        setTimeout(typeEffect,100);

    }

    else{

        setTimeout(deleteEffect,1500);

    }

}


function deleteEffect(){

    if(charIndex > 0){

        typingElement.innerHTML =
        text[index].substring(0,charIndex-1);

        charIndex--;

        setTimeout(deleteEffect,50);

    }

    else{

        index++;

        if(index >= text.length){
            index=0;
        }

        setTimeout(typeEffect,500);

    }

}


typingElement.innerHTML="";
typeEffect();


let cards = document.querySelectorAll(".card, .project");


cards.forEach(card => {


card.addEventListener("mouseenter",()=>{

    card.style.transform="scale(1.05)";
    card.style.transition="0.3s";

});


card.addEventListener("mouseleave",()=>{

    card.style.transform="scale(1)";

});


});


let button = document.querySelector(".btn");


button.addEventListener("click",()=>{

    alert("Thanks for visiting my portfolio! 🚀");

});