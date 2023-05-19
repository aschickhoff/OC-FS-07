document.addEventListener("DOMContentLoaded", function () {
  var countdownElement = document.getElementById("countdown");

  function updateCountdown() {
    var raceDate = new Date("April 1, 2024").getTime();
    var currentDate = new Date().getTime();

    var timeDifference = raceDate - currentDate;

    var days = Math.floor(timeDifference / (1000 * 60 * 60 * 24));
    var hours = Math.floor(
      (timeDifference % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)
    );
    var minutes = Math.floor((timeDifference % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((timeDifference % (1000 * 60)) / 1000);

    countdownElement.innerHTML =
      days +
      " days, " +
      hours +
      " hours, " +
      minutes +
      " minutes, " +
      seconds +
      " seconds";
  }

  // Update the countdown immediately
  updateCountdown();

  // Update the countdown every second
  setInterval(updateCountdown, 1000);
});
