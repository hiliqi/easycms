(function (c, d) {
  var e = document.documentElement || document.body,
    a = "orientationchange" in window ? "orientationchange" : "resize",
    b = function () {
      var f = e.clientWidth;
      e.style.fontSize = (f >= 750) ? "100px" : 100 * (f / 750) + "px"
    };
  b();
  c.addEventListener(a, b, false)
})(window);

//document.body.addEventListener('touchstart', function () { });

var os = function () {
  var ua = navigator.userAgent,
    isWindowsPhone = /(?:Windows Phone)/.test(ua),
    isSymbian = /(?:SymbianOS)/.test(ua) || isWindowsPhone,
    isAndroid = /(?:Android)/.test(ua),
    isFireFox = /(?:Firefox)/.test(ua),
    isChrome = /(?:Chrome|CriOS)/.test(ua),
    isTablet = /(?:iPad|PlayBook)/.test(ua) || (isAndroid && !/(?:Mobile)/.test(ua)) || (isFireFox && /(?:Tablet)/.test(ua)),
    isPhone = /(?:iPhone)/.test(ua) && !isTablet,
    isPc = !isPhone && !isAndroid && !isSymbian;
  return {
    isTablet: isTablet,
    isPhone: isPhone,
    isAndroid: isAndroid,
    isPc: isPc
  };
}();