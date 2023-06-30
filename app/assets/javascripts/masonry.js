document.addEventListener("DOMContentLoaded", function () {
  var grid = document.querySelector(".masonry-grid");
  var masonry = new Masonry(grid, {
    itemSelector: ".masonry-item",
    columnWidth: ".col-md-4",
    percentPosition: true,
  });
});
