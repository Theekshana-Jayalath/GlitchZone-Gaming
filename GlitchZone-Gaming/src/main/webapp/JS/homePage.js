let slideIndex = 1;
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

  if (slideIndex > slides.length) { slideIndex = 1 }
  if (slideIndex < 1) { slideIndex = slides.length }

  slides[slideIndex - 1].classList.add("active");
  dots[slideIndex - 1].classList.add("active");

  slideIndex++;
  timer = setTimeout(showSlides, 4000);
}

function plusSlides(n) {
  slideIndex += n - 1;
  clearTimeout(timer);
  showSlides();
}

function currentSlide(n) {
  slideIndex = n;
  clearTimeout(timer);
  showSlides();
}

showSlides(); // 👈 This ensures first slide is shown when the page loads