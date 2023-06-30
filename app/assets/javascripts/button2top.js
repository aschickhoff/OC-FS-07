window.addEventListener("scroll", function () {
  var scrollButton = document.querySelector(".scroll-to-top");
  if (scrollButton) {
    if (window.pageYOffset > 100) {
      scrollButton.style.display = "block";
    } else {
      scrollButton.style.display = "none";
    }
  }
});

var scrollToTopButton = document.querySelector(".scroll-to-top");
if (scrollToTopButton) {
  scrollToTopButton.addEventListener("click", function (e) {
    e.preventDefault();
    window.scrollTo({ top: 0, behavior: "smooth" });
  });
}

