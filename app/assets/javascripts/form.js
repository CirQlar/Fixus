(function() {
  'use strict';

  document.addEventListener("turbolinks:load", function (e) {
    var device_div = document.getElementById('device');
    var address_div = document.getElementById('address');

    var new_device_div = document.getElementById('new_device');
    var new_address_div = document.getElementById('new_address');
    var old_device_div = document.getElementById('old_device');
    var old_address_div = document.getElementById('old_address');

    if (!new_device_div) {
      return
    }

    document.getElementById('old_device_link').addEventListener("click", function (e) {
      e.preventDefault;
      device_div.className = 'form_section old';
      input_or_div(new_device_div);
    });

    document.getElementById('new_device_link').addEventListener("click", function (e) {
      e.preventDefault;
      device_div.className = 'form_section new';
      input_or_div(old_device_div);
    });

    document.getElementById('old_address_link').addEventListener("click", function (e) {
      e.preventDefault;
      address_div.className = 'form_section old';
      input_or_div(new_address_div);
    });

    document.getElementById('new_address_link').addEventListener("click", function (e) {
      e.preventDefault;
      address_div.className = 'form_section new';
      input_or_div(old_address_div);
    });


  });

  var input_or_div = function (elem) {
    if (elem.tagName == "DIV") {
      for (var i = 0; i < elem.children.length; i++) {
        input_or_div(elem.children[i]);
      }
    } else if (elem.tagName == "INPUT" || elem.tagName == "SELECT") {
      elem.value = "";
    } else {
      // nothing
    }
  }


}());
