'use strict'

chorus.ComponentAddress = (function()
{

  var placeSearch;
  // var autocomplete;

  var $scope = this;

  var addListeners = function()
  {

  }

  function doPageSwitch(placeSearch) {
    var toUrl = encodeURI(placeSearch.place_id);

    // console.log(placeSearch);
    // console.log(toUrl);
    //
    // return;

    if(window.location.pathname.search('ask-for-better') > 0) {
      console.log('we are on the page');

      // $('#noAddressSplash').remove();
      // $('#theAddress').text(address);
      // ('#bbCheckerContent').removeClass('content-no-show');
      var begin = '//' + location.host + location.pathname;
      window.location.href = begin+'#?lookup='+toUrl;
      window.location.reload(true);
    } else {
      window.location.href = '/ask-for-better/#?lookup='+toUrl;
      // window.location.href = '/ask-for-better.html?lookup='+toUrl;
    }
  }

  var onSearchAction_handler = function(ev)
  {
    ev.preventDefault();

    var $btn = $(ev.currentTarget);

    var address = $btn.parent().find('.search-address-text-input').val();

    //doPageSwitch(placeSearch);

  }

  function fillInAddress() {
    if(this.getPlace().place_id != undefined)
    {
      var place = this.getPlace();
      placeSearch = place;

      if(this['boundElementTracking']) {
        var GAprops = JSON.parse(this['boundElementTracking']);
        var category = GAprops['category'];
        common.doGoogleAnalyticsTrack(category, 'submit', 'googleapi');
      }
    }


    //doPageSwitch(placeSearch);
  }

  var initAutocomplete = function()
  {
    var embedIds = [];
    $('.search-address-text-input').each(function(i, obj) {
      embedIds.push($(obj).attr('id'));

      // Create the autocomplete object, restricting the search to geographical
      // location types.
      var autocomplete = new google.maps.places.Autocomplete(
        /** @type {!HTMLInputElement} */(document.getElementById($(obj).attr('id'))),
        {
          types: ['geocode'],
          componentRestrictions: {country: 'nz'}
        });

      autocomplete['boundElementTracking'] = $(obj).attr('data-gaprop');

      // When the user selects an address from the dropdown, populate the address
      // fields in the form.
      //autocomplete.addListener('place_changed', fillInAddress);

      //$(this).parent().find('.btn-address-search-action').on('click', onSearchAction_handler);

      $(this).on('input', function(ev) {
        setTimeout(function() {
          var $pacItem = $('.pac-item').first();
          var s1 = $($pacItem).find('span').eq(2).text();
          var s2 = $($pacItem).find('span').eq(3).text();
          var lookupText = s1 + '' + s2;

          var geocoder = new google.maps.Geocoder();
          geocoder.geocode( { 'address': lookupText, componentRestrictions: {
            country: 'nz',
          }}, function(results, status) {
            if (status == 'OK') {
              if (results[0]) {
                var result = results[0];
                console.log(result);
                placeSearch = result;
              }
            } else {
              console.log('Geocode was not successful for the following reason: ' + status);
            }
          });
        }, 500);

      });
    });
  }

  var ComponentAddress = function() {
    $(common).on('onGotGoogleMapsSDK', initAutocomplete);
  }

  return {
    ComponentAddress : ComponentAddress,
  }


});
