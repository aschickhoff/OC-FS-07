document.addEventListener("DOMContentLoaded", function () {
  var flashMessage = document.getElementById("flash-message");

  if (flashMessage) {
    setTimeout(function () {
      flashMessage.classList.add("hidden");
    }, 4000);
  }
});
