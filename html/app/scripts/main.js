'use strict'

console.log('Chorus : welcome');

var $buoop = {vs:{i:10,f:-4,o:-4,s:8,c:-4},api:4};
function $buo_f(){
  var e = document.createElement('script');
  e.src = '//browser-update.org/update.min.js';
  document.body.appendChild(e);
};
try {document.addEventListener('DOMContentLoaded', $buo_f,false)}
catch(e){window.attachEvent('onload', $buo_f)}

$.urlParam = function(name){
  var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
  if (results==null){
    return null;
  }else{
    return results[1] || 0;
  }
}

chorus.Common = (function()
{
  var $scope = this;

  var GOOGLE_API_KEY = 'AIzaSyDrBkTwzJJ3lzu8ddK6D9bPO_6Y5ILIMpc'; //'AIzaSyC9k-RsqCJ2LHyn3Gm-epGcuP-D61tOB1M'; // 'AIzaSyDYSUoa2NnPCK3Ooyrgd77cpj2OXtksuBw'; //'AIzaSyC9k-RsqCJ2LHyn3Gm-epGcuP-D61tOB1M';

  var SCREEN_XS = {title:'screen_xs', minResolution:768};
  var SCREEN_SM = {title:'screen_sm'};
  var SCREEN_MD = {title:'screen_md'};
  var SCREEN_LG = {title:'screen_lg'};

  var $mobileMenuToggleButton = $('#mobileMenuToggleButton');

  /**
   * detect IE
   * returns version of IE or false, if browser is not Internet Explorer
   */
  function detectIE() {
    var ua = window.navigator.userAgent;

    var isIE = false;
    var ieVersion = '';

    var msie = ua.indexOf('MSIE ');
    if (msie > 0) {
      // IE 10 or older => return version number
      // return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);

      ieVersion = parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
      isIE = true;
    }

    var trident = ua.indexOf('Trident/');
    if (trident > 0) {
      // IE 11 => return version number
      var rv = ua.indexOf('rv:');
      // return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);

      ieVersion = parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
      isIE = true;
    }

    var edge = ua.indexOf('Edge/');
    if (edge > 0) {
      // Edge (IE 12+) => return version number
      // return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);

      ieVersion = parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
      isIE = true;
    }

    // other browser
    // return false;

    if(isIE)
    {
      $('html').addClass('is-ie');
      $('html').addClass('ie-version-'+ieVersion);
    }
  }

  var getGoogleMapsSDK = function(ev)
  {
    var mapsSrc;
    $('script').each(function(i,obj) {
      var $srcTag = $(obj);
      if(($srcTag.attr('src') != undefined) && ($srcTag.attr('src').search('https://maps.googleapis.com/maps/api/js') >= 0)){
        // console.log(i + ' the source is')
        // console.log($srcTag.attr('src').search('https://maps.googleapis.com/maps/api/js'));
        mapsSrc = $srcTag;

        // break;
      }
    });

    if(mapsSrc != undefined) {
      // console.log('there is a maps source!');
      // The SDK is already added just init straight away
      // setTimeout(function() {
        onGetGoogleMapsSDK_handler();
      // }, 100);

    } else {
      // console.log('there is NOT a maps source! EMBED IT');
      $.getScript( 'https://maps.googleapis.com/maps/api/js?key='+common.GOOGLE_API_KEY+'&libraries=places&callback=common.onGetGoogleMapsSDK_handler');
    }

  }

  var onGetGoogleMapsSDK_handler = function()
  {
    $(common).trigger('onGotGoogleMapsSDK');
  }

  /**
   When a user clicks the Inline Player play button, embed the Player in the parent HTML element

   @return nothing
   */
  var onVideoInlinePlayClick_handler = function(ev)
  {
    ev.preventDefault();

    var $playBtn = $(this);
    var $parentWrap = $playBtn.parent();
    var platform = $parentWrap.data('videoplatform');
    var videoId = $parentWrap.data('videoid');

    // console.log(platform, videoId);
    var iframe;

    if($parentWrap.has('iframe').length<=0) {
      switch(platform) {
        case 'vimeo' :
          iframe = '<iframe src="https://player.vimeo.com/video/'+videoId+'?autoplay=1&title=0&byline=0&portrait=0" class="video-item" width="560" height="315" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>';
          break;
      }


      $parentWrap.append(iframe);
    }
  }

  /**
   Set the header navigation to 'sticky' UI

   @return nothing
   */
  var doStickyNav = function() {

    var $stickyNavigation = $('#stickyNavigation');
    var $body = $('body');
    var currentScrollTop = $(window).scrollTop();
    var navigationHeight = $stickyNavigation.find('nav').outerHeight();

    if(currentScrollTop >= navigationHeight) {
      $stickyNavigation.addClass('add-sticky');
    } else {
      $stickyNavigation.removeClass('add-sticky');
    }

  }

  var doBetterIsHereLogo = function() {
    // var $betterLogo = $('.better-is-here-logo').first();
    // if ($(window).width() < SCREEN_XS.minResolution) {
    //   TweenMax.to($betterLogo, 0.4, {y:0, ease:Sine.easeInOut});
    // } else {
    //   TweenMax.to($betterLogo, 0.4, {y:-68, ease:Sine.easeInOut});
    // }
  }

  var _hasAnimatedHomeSlider = false;

  var doScrollAnimation = function($element) {
    // scroll-point-animated
    // $element.addClass('animated fadeIn');
    if($element.hasClass('sliding-row') && !$element.hasClass('intro-animated')) {

      if(_hasAnimatedHomeSlider) return;
      _hasAnimatedHomeSlider = true;


      // plan-info-bubble
      if($(window).width() > SCREEN_XS.minResolution)
      {
        // Do the desktop type animation
        // TweenMax.set();
        home.animateInBBOptionTitles();
      } else {
        // Do the mobile type animation
        $('.mobile-slider').each(function(i,obj)
        {
          var $slider = $(this);
          TweenMax.to($slider, 1, {scrollTo:{x:0, ease:Sine.easeInOut, delay:1}});
          // $slider.scrollLeft($slider.find('.plan-slider-inner-wrap').width()-10);
        });
      }


    }
    $element.addClass('intro-animated');
  }

  var doShowScrollButton = function() {
    if($(window).scrollTop() > ($(window).height()/2)) {
      $('#backToTop').addClass('do-show animated fadeIn');
    } else {
      $('#backToTop').removeClass('do-show animated fadeIn');
    }
  }

  var doScrollAnimationPoint = function()
  {
    // console.log('site scroll = '+$(window).scrollTop());
    $('.scroll-point-animated').each(function(i, obj) {
      var $element = $(obj);

      // console.log($element.offset().top);

      if($(window).width() > SCREEN_XS.minResolution)
      {
        if($(window).scrollTop() > ($element.offset().top-$(window).height())) {

          doScrollAnimation($element);
        }
      } else {
        if($element.offset().top <= ($(window).height()*0.5)) {
          doScrollAnimation($element);
        }
      }
    });

    $('.init-opacity-none').each(function(i,obj) {
      var $element = $(obj);
      // console.log($element.offset().top);

      if($(window).width() >= SCREEN_XS.minResolution)
      {
        if($(window).scrollTop() > ($element.offset().top-($(window).height()*0.8))) {

          if($element.hasClass('animated')) {

          } else {
            $element.addClass('animated fadeIn');
          }
        }
      } else {
        if($element.offset().top <= ($(window).height()*0.5)) {
          // if($element.hasClass('animated')) {
          //
          // } else {
          //   $element.addClass('animated fadeIn');
          // }
        }
      }
    });
  }

  var onMenuToggleClick_handler = function(ev)
  {
    ev.preventDefault();

    if($('body').hasClass('mobile-navigation-active')) {
      $('body').removeClass('mobile-navigation-active');
    } else {
      $('body').addClass('mobile-navigation-active');

      $('#stickyNavigation').addClass('docked');
    }
  }

  var onBackToTopClick_handler = function(ev) {
    ev.preventDefault();

    TweenMax.to($(window), 1, {scrollTo:0});
  }

  var onWindowResize_handler = function(ev)
  {
    setBodyResolutionAttrs();

    doBetterIsHereLogo();

    setScrollViewport();

  }

  var onWindowScroll_handler = function(ev)
  {
    doStickyNav();
    doScrollAnimationPoint();
    doShowScrollButton();

    // console.log('onWindowScroll_handler');

    if(($('#navigationDockPoint').length > 0)) { //  && ($(window).width() > SCREEN_XS.minResolution)
      var dockPointTop = $('#navigationDockPoint').offset().top;

      var currentScrollTop = $(window).scrollTop();

      if(currentScrollTop >= dockPointTop) {

        $('#stickyNavigation').addClass('docked');
      } else {
        $('#stickyNavigation').removeClass('docked');
      }
    }
  }

  /**
   iOS has majr problems with Fixed postioning so we need to set it
   to remove fixed and use absolute. We then can allow scrolling of
   the content view port.

   @return nothing
   */
  var setScrollViewport = function()
  {
     $('.site-scroll-wrap').css('max-height', '');

    if($('body').hasClass('use-mobile-viewport')) {


      var height = $(window).height();
      var minusNav = height-$('nav').height();

      $('.site-scroll-wrap').css('max-height',minusNav+'px');

      $(window).off('scroll', onWindowScroll_handler);
      $('.site-scroll-wrap').on('scroll', onWindowScroll_handler);

    } else {
      $('.site-scroll-wrap').css('max-height', 'auto');

      $(window).on('scroll', onWindowScroll_handler);
      $('.site-scroll-wrap').off('scroll', onWindowScroll_handler);
    }

  }

  var setBodyResolutionAttrs = function () {
    if($(window).width() < SCREEN_XS.minResolution) {
      $('body').addClass('use-mobile-viewport');
      $('html').addClass('mobile-no-scroll');
    } else {
      $('body').removeClass('use-mobile-viewport');
      $('html').removeClass('mobile-no-scroll');
    }
  }

  var doGoogleAnalyticsTrack = function(category, action, label)
  {
    var trackerName = ga.getAll()[0].get('name');
    ga(trackerName + '.send', 'event', category, action, label);
  }

  var addGoogleAnalytics = function() {
    $('.do-ga-track').each(function(i, obj)
    {
      var $trackedItem = $(obj);
      var GAprops;
      var label;
      var action;
      var category;

      $trackedItem.on('click', function(ev) {

        GAprops = $trackedItem.data('gaprop');
        label = GAprops.label;
        action = GAprops.action;
        category = GAprops.category;

        if(action == 'hamburger') {
          label = ($('body').hasClass('mobile-navigation-active')) ? 'open':'close';
        }

        switch(category) {
          case 'addresschecknav' :
          case 'addresscheckblade' :
            return;
            break;

          default :
            doGoogleAnalyticsTrack(category, action, label);
            break;
        }
      });

      if($trackedItem.is(':text')) {
        $trackedItem.on('focusin', function(ev)
        {

          GAprops = $trackedItem.data('gaprop');
          category = GAprops.category;

          $trackedItem.addClass('didfocus');

          doGoogleAnalyticsTrack(category, 'focusin', '');
        });

        $trackedItem.on('focusout', function(ev)
        {
          GAprops = $trackedItem.data('gaprop');
          category = GAprops.category;

          $trackedItem.removeClass('didfocus didwrite');

          doGoogleAnalyticsTrack(category, 'focusout', '');
        });

        $trackedItem.on('input', function(ev)
        {

          GAprops = $trackedItem.data('gaprop');
          category = GAprops.category;

          if(!$trackedItem.hasClass('didwrite')) {
            $trackedItem.addClass('didwrite');

            doGoogleAnalyticsTrack(category, 'typing', '');
          }

        });
      }

    });
  }

  /**
   Add the common listeners shared across the site

   @return nothing
   */
  var addListeners = function()
  {

    setBodyResolutionAttrs();

    $(window).on('resize', onWindowResize_handler);
    $mobileMenuToggleButton.on('click', onMenuToggleClick_handler);

    $('.btn-back-to-top').on('click', onBackToTopClick_handler);

    // Add inline video embedding
    $('.preview-play-button').on('click', onVideoInlinePlayClick_handler);
    doBetterIsHereLogo();
    setScrollViewport();

    doScrollAnimationPoint();
    addGoogleAnalytics();
  }

  var Common = function() {
    // console.log('Common');

    detectIE();

    addListeners();

    getGoogleMapsSDK();
  }

  return {
    Common : Common,

    onGetGoogleMapsSDK_handler : onGetGoogleMapsSDK_handler,

    GOOGLE_API_KEY : GOOGLE_API_KEY,

    doGoogleAnalyticsTrack : doGoogleAnalyticsTrack
  }


});

