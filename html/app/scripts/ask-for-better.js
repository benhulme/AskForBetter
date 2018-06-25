'use strict'

chorus.AskForBetter = (function()
{
  var removeSplash = function(address) {
    $('#theAddress').text(address);
    $('#noAddressSplash').remove();
    $('#bbCheckerContent').removeClass('content-no-show');
  }

  var initCheckForPlaceId = function() {


    if($.urlParam('lookup') != null) {
      var decode = decodeURI($.urlParam('lookup'));
      // console.log('There is placeId in ?lookup and it is = ' + $.urlParam('lookup'));

      var geocoder = new google.maps.Geocoder;
      var placeId = decode;
      // console.log('There is placeId in ?lookup and it is DECODED = ' + placeId);

      geocoder.geocode({'placeId': placeId}, function(results, status) {
        if (status === 'OK') {
          if (results[0]) {
            console.log(results);
            var result = results[0];
            var address = result.formatted_address;
            removeSplash(address)
          } else {
            console.log('No results found');
            // $('#noAddressSplash').addClass('animated fadeIn');
            window.location.href = '/ask-for-better/';
            window.location.reload(true);

          }
        } else {
          console.log('Geocoder failed due to: ' + status);
          $('#noAddressSplash').addClass('animated fadeIn');
          // window.location.href = '/ask-for-better/';
          // window.location.reload(true);
        }
      });


      // console.log(decode);
      // if(parseInt(decode)>0) {
      // $('#theAddress').text(decode);
      //
      // $('#noAddressSplash').remove();
      // }
      //
    } else {
      // console.log('There was no placeId in ?lookup');
      $('#noAddressSplash').addClass('animated fadeIn');
    }
  }

  var AskForBetter = function() {
    // console.log('AskForBetter');

    console.log($.urlParam('lookup'));

    $(common).on('onGotGoogleMapsSDK', initCheckForPlaceId);
  }

  return {
    AskForBetter : AskForBetter,

    removeSplash : removeSplash
  }


});
