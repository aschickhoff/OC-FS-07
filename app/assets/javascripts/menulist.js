document.querySelectorAll(".dropdown-submenu").forEach(function (dropdown) {
  dropdown.addEventListener("mouseenter", function () {
    this.querySelector(".dropdown-menu").classList.add("show");
  });

  dropdown.addEventListener("mouseleave", function () {
    this.querySelector(".dropdown-menu").classList.remove("show");
  });
});

