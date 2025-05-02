
let slideIndex = 0;
let slides = document.getElementsByClassName("slide");
let dots = document.getElementsByClassName("dot");
let timer;

function showSlides() {
  for (let i = 0; i < slides.length; i++) {
    slides[i].classList.remove("active");
  }
  for (let i = 0; i < dots.length; i++) {
    dots[i].classList.remove("active");
  }

  slideIndex++;
  if (slideIndex > slides.length) { slideIndex = 1 }

  slides[slideIndex - 1].classList.add("active");
  dots[slideIndex - 1].classList.add("active");

  timer = setTimeout(showSlides, 4000);
}

function plusSlides(n) {
  slideIndex += n - 1;
  if (slideIndex < 0) slideIndex = slides.length - 1;
  clearTimeout(timer);
  showSlides();
}

function currentSlide(n) {
  slideIndex = n - 1;
  clearTimeout(timer);
  showSlides();
}

showSlides();

