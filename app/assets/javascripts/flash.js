(function() {
  'use strict';

  document.addEventListener("turbolinks:load", function (e) {
    var flash = document.getElementById('flash');

    setTimeout(function () {
      if (flash) {
        flash.style.display = "none";
      }
    }, 5000);
  });
}());
