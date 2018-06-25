'use strict'

chorus.HowToGuides = (function()
{

  var SCREEN_XS = 'screen_xs';
  var SCREEN_SM = 'screen_sm';
  var SCREEN_MD = 'screen_md';
  var SCREEN_LG = 'screen_lg';

  var _mobileResolutionMin = 768;

  var initMasonry = function() {

    var gutter = parseInt($('.grid-item').first().css('margin-bottom'));
    var gridWidth = $('.do-grid').width();

    if($(window).width() < _mobileResolutionMin) {
      gutter=0;
      $('.grid-item').width((gridWidth)-gutter);
    } else {
      $('.grid-item').width((gridWidth/2)-(gutter/2));
    }

    var removeAnimation = ($('.do-grid').hasClass('no-transition')) ? 0 : 500 ;

    $('.do-grid').masonry({
      // options
      itemSelector: '.grid-item',
      gutter: gutter,
      transitionDuration: removeAnimation
    });
  }

  var onWindowResize_handler = function(ev)
  {
    initMasonry();
  }

  /**
   Add the Home page listeners

   @return nothing
   */
  var addListeners = function()
  {
    $(window).on('resize', onWindowResize_handler);

    setTimeout(initMasonry, 10);
    // initMasonry();
  }

  var HowToGuides = function() {
    // console.log('HowToGuides');

    addListeners();
  }

  return {
    HowToGuides : HowToGuides
  }


});
