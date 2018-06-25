
$(document).ready(function(){
  var lookup = getUrlParameter('lookup');
  if(lookup !== '' || lookup !== null || lookup !== undefined) {
    updateSiteWrapper();
  }
  function updateSiteWrapper() {
    var siteWrapper = $('div#navigationDockPoint.site-scroll-wrap');
    $(siteWrapper).css('margin-top','0px');
    $('<div class="tool-top-padding"></div>').insertBefore(siteWrapper);
  }
});

/* Used to check for the lookup parameter */
var getUrlParameter = function getUrlParameter(sParam) {
  var sPageURL = decodeURIComponent(window.location.search.substring(1)),
      sURLVariables = sPageURL.split('&'),
      sParameterName,
      i;
  for (i = 0; i < sURLVariables.length; i++) {
    sParameterName = sURLVariables[i].split('=');
    if (sParameterName[0] === sParam) {
      return sParameterName[1] === undefined ? true : sParameterName[1];
    }
  }
};
