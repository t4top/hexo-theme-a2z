//-- Helper functions --//

function addClass(obj, cls) {
  if (obj) {
    var arr = obj.className.split(" ");
    if (-1 == arr.indexOf(cls)) {
      obj.className += " " + cls;
    }
  }
}

function removeClass(obj, cls) {
  if (obj) {
    var re = new RegExp("\\s*\\b" + cls + "\\b", 'g');
    obj.className = obj.className.replace(re, "");
  }
}

function createCORSRequest(method, action) {
  var xhr = new XMLHttpRequest();
  if ("withCredentials" in xhr) {
    // XHR for Chrome/Firefox/Opera/Safari
    xhr.open(method, action, true);
  } else if (typeof XDomainRequest != "undefined") {
    // XDomainRequest for IE
    xhr = new XDomainRequest();
    xhr.open(method, action);
  } else {
    // CORS not supported
    xhr = null;
  }
  return xhr;
}

function isValidEmail(email) {
  var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/i;
  return re.test(email);
}

function addListener(obj, evt, callback) {
  if (obj) {
    if (typeof(obj.addEventListener) != "undefined") {
      obj.addEventListener(evt, callback, false);
    } else if (typeof obj.attachEvent != "undefined") {
      obj.attachEvent(("on" + evt), callback);
    } else {}
  }
}

//-- Initial configurations --//

// Netlify CMS authentication redirect
if (window.netlifyIdentity) {
  window.netlifyIdentity.on("init", function (user) {
    if (!user) {
      window.netlifyIdentity.on("login", function () {
        document.location.href = "/admin/";
      });
    }
  });
}

// Lightbox option
lightbox.option({
  'alwaysShowNavOnTouchDevices': true,
  'wrapAround': true
})

// LightGallery init
$(document).ready(function() {
  var cls = ".google_photo_album .photos";
  var width = Math.max(window.screen.height, window.screen.width); // * window.devicePixelRatio;
  $(cls + " a").each(function() {
    $(this).attr('href', $(this).attr('href') + "=w" + width);
  });
  $(cls).lightGallery({
    download: false,
    preload: 5
  });
});
