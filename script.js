// Typing Animation

const words = [
    "Front-End Developer",
    "Back-End Developer",
    "PHP Developer",
    "Web Designer",
    "UI/UX Designer"
];

let wordIndex = 0;
let charIndex = 0;
let deleting = false;

const heading = document.querySelector(".right h2");

function typeEffect() {

    let currentWord = words[wordIndex];

    if (!deleting) {

        heading.textContent = currentWord.substring(0, charIndex++);

        if (charIndex > currentWord.length) {

            deleting = true;

            setTimeout(typeEffect, 1200);

            return;
        }

    } else {

        heading.textContent = currentWord.substring(0, charIndex--);

        if (charIndex == 0) {

            deleting = false;

            wordIndex++;

            if (wordIndex == words.length) {

                wordIndex = 0;
            }

        }

    }

    setTimeout(typeEffect, deleting ? 60 : 120);

}

typeEffect();


// Smooth Button Animation

const btn = document.querySelector("button");

btn.addEventListener("mouseenter", () => {

    btn.style.boxShadow = "0 0 30px red";

});

btn.addEventListener("mouseleave", () => {

    btn.style.boxShadow = "none";

});
const observer = new IntersectionObserver(entries => {

    entries.forEach(entry => {

        if (entry.isIntersecting) {

            entry.target.classList.add("show");

        }

    });

});

document.querySelectorAll("section").forEach(sec => {

    sec.classList.add("hidden");

    observer.observe(sec);

});
const sections = document.querySelectorAll("section");
const navLinks = document.querySelectorAll("nav a");

window.addEventListener("scroll", () => {

    let current = "";

    sections.forEach(section => {

        const sectionTop = section.offsetTop - 150;

        if (scrollY >= sectionTop) {

            current = section.getAttribute("id");

        }

    });

    navLinks.forEach(link => {

        link.classList.remove("active");

        if (link.getAttribute("href") == "#" + current) {

            link.classList.add("active");

        }

    });

});
const topBtn = document.getElementById("topBtn");

window.onscroll = function () {

    if (document.documentElement.scrollTop > 400) {

        topBtn.style.display = "block";

    } else {

        topBtn.style.display = "none";

    }

};

topBtn.onclick = function () {

    window.scrollTo({

        top: 0,

        behavior: "smooth"

    });

};
window.addEventListener("load", () => {

    document.getElementById("loader").style.display = "none";

});
window.addEventListener("load", function () {
    document.getElementById("loader").style.display = "none";
});
setTimeout(function () {
    document.getElementById("loader").style.display = "none";
}, 2000);
// const topBtn = document.getElementById("topBtn");

topBtn.onclick = function () {
    window.scrollTo({
        top: 0,
        behavior: "smooth"
    });
};
document.getElementById("menuBtn").onclick = function () {

}

