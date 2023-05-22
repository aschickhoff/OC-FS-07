document.addEventListener("DOMContentLoaded", function () {
  // Initialize the map
  var map = L.map("map").setView([0, 0], 2);

  // Add the OpenStreetMap tile layer
  L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
    attribution: "Map data © OpenStreetMap contributors",
  }).addTo(map);

  // Retrieve rider locations from data attribute
  var riderLocationsData =
    document.getElementById("map").dataset.riderLocations;
  var riderLocations = JSON.parse(riderLocationsData);

  // Add a marker for each rider
  riderLocations.forEach(function (location) {
    L.marker([location[0], location[1]]).addTo(map).bindPopup(location[2]);
  });
});
