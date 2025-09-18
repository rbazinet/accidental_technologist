// Strip social sharing parameters from URLs to ensure clean canonical URLs
(function() {
  // Check if URL has unwanted parameters
  var url = window.location.href;
  var params = ['share', 'nb', 'utm_source', 'utm_medium', 'utm_campaign', 'fbclid'];
  var hasParams = false;

  for (var i = 0; i < params.length; i++) {
    if (url.indexOf('?' + params[i] + '=') > -1 || url.indexOf('&' + params[i] + '=') > -1) {
      hasParams = true;
      break;
    }
  }

  if (hasParams) {
    // Get the clean URL without parameters
    var cleanUrl = url.split('?')[0];

    // Redirect to clean URL
    window.location.replace(cleanUrl);
  }
})();