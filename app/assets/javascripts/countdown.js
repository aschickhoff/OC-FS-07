function updateCountdown() {
  var countdownElement = document.getElementById("countdown");
  if (countdownElement) {
    var raceDate = new Date("April 1, 2024").getTime();
    var currentDate = new Date().getTime();

    var timeDifference = (raceDate - currentDate) / 1000;

    var days = timeDifference / (24 * 60 * 60);
    timeDifference %= 24 * 60 * 60;

    var hours = timeDifference / (60 * 60);
    timeDifference %= 60 * 60;

    var minutes = timeDifference / 60;
    var seconds = timeDifference % 60;

    countdownElement.innerHTML =
      "The Boulder Bike Tour starts in " +
      (days | 0) +
      " days, " +
      (hours | 0) +
      " hours, " +
      (minutes | 0) +
      " minutes, " +
      (seconds | 0) +
      " seconds";
  }
}

document.addEventListener("DOMContentLoaded", function () {
  updateCountdown();
  setInterval(updateCountdown, 1000);
});

