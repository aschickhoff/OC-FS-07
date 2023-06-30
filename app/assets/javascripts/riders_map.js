function initializeMap(locationsData) {
  var map = L.map("map").setView([40.01499, -105.27055], 12);

  L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
    attribution: "Map data © OpenStreetMap contributors",
  }).addTo(map);

  var riderLocations;

  try {
    riderLocations = JSON.parse(locationsData);
  } catch (error) {
    // Handle previous format [latitude, longitude, first_name, last_name]
    riderLocations = [JSON.parse(locationsData)];
  }

  riderLocations.forEach(function (location) {
    var firstName = location[2];
    var lastName = location[3];
    var fullName = firstName + " " + lastName;
    var coo = location[4];
    var soo = location[5];

    var popupContent = fullName + "<br>City: " + coo + "<br>State: " + soo;

    L.marker([location[0], location[1]]).addTo(map).bindPopup(popupContent);
  });
}

document.addEventListener("DOMContentLoaded", function () {
  var mapElement = document.getElementById("map");

  if (mapElement) {
    var riderLocationsData = mapElement.dataset.riderLocations;
    initializeMap(riderLocationsData);
  }
});
