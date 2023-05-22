function initializeMap() {
  var map = L.map("map").setView([40.01499, -105.27055], 13);

  L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
    attribution: "Map data © OpenStreetMap contributors",
  }).addTo(map);

  var riderLocationsData =
    document.getElementById("map").dataset.riderLocations;
  var riderLocations = JSON.parse(riderLocationsData);

  riderLocations.forEach(function (location) {
    var firstName = location[2];
    var lastName = location[3];
    var fullName = firstName + " " + lastName;

    L.marker([location[0], location[1]]).addTo(map).bindPopup(fullName);
  });
}

document.addEventListener("DOMContentLoaded", function () {
  initializeMap();
});
