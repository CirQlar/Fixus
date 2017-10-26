(function() {
  'use strict';

  document.addEventListener("turbolinks:load", function (e) {
    var menuBtn = document.getElementById('title');
    var header = document.getElementById('header');

    menuBtn.addEventListener("click", function (e) {
      toggleNav(header);
    });

  });

  var toggleNav = function (header) {
    if (header.className == "cf open") {
      header.className = "cf";
    } else if (header.className == "cf") {
      header.className = "cf open"
    }
  }

}());
