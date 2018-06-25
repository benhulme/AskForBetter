'use strict'

chorus.Home = (function()
{

  var SCREEN_XS = 'screen_xs';
  var SCREEN_SM = 'screen_sm';
  var SCREEN_MD = 'screen_md';
  var SCREEN_LG = 'screen_lg';

  var _headerState = '';
  var _prevSlideXPos = -1;
  var HEADER_BASIC = 'basic';
  var HEADER_BETTER = 'better';
  var HEADER_BEST = 'best';

  var _hasAnimatedIn = false;

  var $scope = this;

  var _mobileResolutionMin = 768;
  var _currentResolution = SCREEN_LG;

  var doMobileSider = function()
  {
    //
    $('.plan-slider').addClass('mobile-slider');

    $('.plan-column-wrap').css('width', 'auto');
    $('.plan-slider-inner-wrap').css('width', 'auto');

    var columnOffsetPerc = 1; //0.75;
    var columnWrapWidth = Math.floor($('.plan-slider-inner-wrap').width() * columnOffsetPerc);

    $('.plan-column-wrap').width(columnWrapWidth);
    $('.plan-slider-inner-wrap').css('width', Math.floor(($('.plan-slider-inner-wrap').first().find('.plan-column-wrap').length * $('.plan-column-wrap').first().outerWidth())));



    // Set init position to the scroll end
    $('.mobile-slider').each(function(i,obj)
    {
      var $slider = $(this);
      $slider.scrollLeft($slider.find('.plan-slider-inner-wrap').width()-10);
    })

    // if($('.mobile-slider').length > 0) {
    //   var $firstItem = $('.mobile-slider').first();
    //
    // }
  }

  var removeSlider = function() {
    $('.plan-slider').removeClass('mobile-slider');

    $('.plan-column-wrap').attr('style', '');
    $('.plan-slider-inner-wrap').attr('style', '');
  }

  /**
   Set the UI for mobile plans slider

   @return nothing
   */
  var doPlansUI = function() {

    // Is on mobile
    if('ontouchstart' in document.documentElement) {
      if($(window).width() < _mobileResolutionMin) {
        if(_currentResolution != SCREEN_XS) {
          _currentResolution = SCREEN_XS;
          doMobileSider();
        }
      } else {
        removeSlider();
      }
    } else {
      // Keep the resize for desktop to make it look pretty when resizing
      if($(window).width() >= _mobileResolutionMin) {
        // console.log('Do Desktop');
        _currentResolution = SCREEN_SM;
        removeSlider();
      } else {
        // console.log('Do mobile');
        doMobileSider();
      }
    }
  }

  // Set the columns to the same size;
  var setColumnsHeight = function()
  {
    // console.log($('.plan-slider').length);

    $('.plan-info-description').attr('style', '');

    $('.plan-slider').each(function(i,$obj){
      var minHeight = 0;
      $(this).find('.plan-info-description').each(function(j, obj) {
        if($(obj).height()>minHeight) {
          minHeight = Math.ceil($(obj).height());
        }
      });
      // $(this).find('.plan-info-description').height(minHeight);
      // $(this).height(Math.ceil($(this.parent().height())));

      $(this).find('.plan-info-description').each(function(j, obj) {
        // if($(obj).height()>minHeight) {
        //   minHeight = Math.ceil($(obj).height());
        // }

        $(this).height(minHeight);
      });
    });

  }

  var doPlansHeader = function(to, xPos)
  {

    if($(window).width() >= _mobileResolutionMin) {
      $('.title').attr('style', '');

      return;
    }

    var switchPos = (xPos > _prevSlideXPos) ? -1 : 1;

    var wOffset = 50;
    var awayPos = $('.titles').first().width() + wOffset;

    var basicLeft;
    var betterLeft;
    var bestLeft;

    if(to != _headerState) {
      _headerState = to;
      switch(_headerState) {
        case HEADER_BASIC :
          basicLeft = Math.round((awayPos*(switchPos)));
          betterLeft = Math.round((awayPos*-1*(switchPos)));
          bestLeft = Math.round((awayPos*-1*(switchPos)));

          basicLeft = (basicLeft <= 0) ? wOffset*-1 : basicLeft;
          betterLeft = (betterLeft <= 0) ? wOffset*-1 : betterLeft;
          bestLeft = (bestLeft <= 0) ? wOffset*-1 : bestLeft;

          TweenMax.set($('.title-basic'), { left:basicLeft }) ;
          TweenMax.to($('.title-better'), 0.3, { left:betterLeft}) ;
          TweenMax.to($('.title-best'), 0.3, { left:bestLeft }) ;

          TweenMax.to($('.title-basic'), 0.3, { left:'50%' }) ;
          break;

        case HEADER_BETTER :
          basicLeft = Math.round((awayPos*-1*(switchPos)));
          betterLeft = Math.round((awayPos*(switchPos)));
          bestLeft = Math.round((awayPos*-1*(switchPos)));

          basicLeft = (basicLeft <= 0) ? wOffset*-1 : basicLeft;
          betterLeft = (betterLeft <= 0) ? wOffset*-1 : betterLeft;
          bestLeft = (bestLeft <= 0) ? wOffset*-1 : bestLeft;

          TweenMax.set($('.title-better'), { left:betterLeft }) ;
          TweenMax.to($('.title-basic'), 0.3, { left:basicLeft }) ;
          TweenMax.to($('.title-best'), 0.3, { left:bestLeft }) ;

          TweenMax.to($('.title-better'), 0.3, { left:'50%' }) ;
          break;

        case HEADER_BEST :
          basicLeft = Math.round((awayPos*-1*(switchPos)));
          betterLeft = Math.round((awayPos*-1*(switchPos)));
          bestLeft = Math.round((awayPos*(switchPos)));

          basicLeft = (basicLeft <= 0) ? wOffset*-1 : basicLeft;
          betterLeft = (betterLeft <= 0) ? wOffset*-1 : betterLeft;
          bestLeft = (bestLeft <= 0) ? wOffset*-1 : bestLeft;

          TweenMax.set($('.title-best'), { left:bestLeft }) ;
          TweenMax.to($('.title-basic'), 0.3, { left:basicLeft }) ;
          TweenMax.to($('.title-better'), 0.3, { left:betterLeft }) ;

          TweenMax.to($('.title-best'), 0.3, { left:'50%' }) ;
          break;
      }
    }

    _prevSlideXPos = xPos;
  }

  var doPlansSlideProgressUI = function() {
    var scrollLeft = $('.plan-slider').scrollLeft();
    var maskerWidth = $('.plan-slider-inner-wrap').width();
    // console.log(maskerWidth);
    // console.log(scrollLeft / maskerWidth);

    var perc = scrollLeft / maskerWidth;

    // var x = roundScroll((scrollLeft / maskerWidth), $('.plan-column-wrap').outerWidth());

    $('.plan-slider-progress').each(function(i, obj) {
      $(this).find('li').removeClass('active');

      if((perc<0.10)) {
        $(this).find('li').eq(0).addClass('active');

        if(i==0)
        {
          doPlansHeader(HEADER_BASIC, scrollLeft);
        }
      } else if((perc>=0.11)&&(perc<0.30)) {
        $(this).find('li').eq(1).addClass('active');

        if(i==0) {
          doPlansHeader(HEADER_BASIC, scrollLeft);
        }
      } else if((perc>=0.31)&&(perc<0.50)) {
        $(this).find('li').eq(2).addClass('active');

        if(i==0) {
          doPlansHeader(HEADER_BETTER, scrollLeft);
        }
      } else if((perc>=0.41)&&(perc<0.70)) {
        $(this).find('li').eq(3).addClass('active');

        if(i==0) {
          doPlansHeader(HEADER_BETTER, scrollLeft);
        }
      } else if((perc>=0.71)) {
        $(this).find('li').eq(4).addClass('active');

        if(i==0)
        {
          doPlansHeader(HEADER_BEST, scrollLeft);
        }

      }
    });
  }

  var updateAllScrollPosition = function($scrollInstance) {
    var scrollLeft = $scrollInstance.scrollLeft();
    $('.plan-slider').scrollLeft(scrollLeft);
    // console.log(scrollLeft);
  }

  function roundScroll(num, w)
  {
    // // return Math.ceil(x/0.20)*0.20;
    // return Math.round(num * w) / w;
  }

  var onPlansSlider_handler = function(ev)
  {
    // console.log(ev.type);
    // console.log(ev.currentTarget);
    switch(ev.type) {
      case 'scroll' :
        doPlansSlideProgressUI();

        updateAllScrollPosition($(ev.currentTarget));

        break;

      case 'scrollstop' :

        break;
    }


  }

  var animateInRestOfHeader = function() {
    $('header').addClass('animated fadeIn');
    TweenMax.delayedCall(1, function() {
      $('header h1').addClass('animated fadeIn');
    });
    TweenMax.delayedCall(2, function() {
      $('header .search-address-form').addClass('animated fadeIn');
    });
  }

  var doHeaderIntro = function() {
    var url = $('header').css('background-image');
    var imgSrc = url.split('"')[1];

    var img = new Image();
    img.src = imgSrc;

    $(img).on('load', function(ev){
      animateInRestOfHeader();
    }).on('error', function(ev) {
      animateInRestOfHeader();
    });
  }

  var onWindowResize_handler = function(ev)
  {
    setColumnsHeight();
    doPlansUI();
    doPlansSlideProgressUI();
  }

  var onWindowScroll_handler = function(ev)
  {

  }

  var titles = [{titleId:'#WIRELESS', rings:['#WIRELESS_ring1'], text:'#WIRELESS_title_text', bg:'#WIRELESS_bg', bgZoom:1},
                {titleId:'#ADSL', rings:['#ADSL_ring1'], text:'#ADSL_title_text', bg:'#ADSL_bg', bgZoom:1},
                {titleId:'#VDSL', rings:['#VDSL_ring1', '#VDSL_ring2'], text:'#VDSL_title_text', bg:'#VDSL_bg', bgZoom:0.5},
                {titleId:'#FIBRE', rings:['#FIBRE_ring1', '#FIBRE_ring2'], text:'#FIBRE_title_text', bg:'#FIBRE_bg', bgZoom:0.4},
                {titleId:'#FIBRE_PRO', rings:['#FIBRE_PRO_ring1', '#FIBRE_PRO_ring2', '#FIBRE_PRO_ring3'], text:'#FIBRE_PRO_title_text', bg:'#FIBRE_PRO_bg', bgZoom:0.1}];

  var initAnimationPositions = function()
  {
    $(titles).each(function(i, title)
    {
      TweenMax.set($(title['text']), { attr:{opacity:0}});
      TweenMax.set($(title['bg']), { transformOrigin:'50% 50%' });
      TweenMax.set($(title['bg']), { scale: 0});

      $(title['rings']).each(function(i, ringId)
      {
        TweenMax.set($(ringId), { transformOrigin:'50% 50%' });
        TweenMax.set($(ringId), { attr:{x:$(title['titleId']).width()/2}, scale: 0 });
      });
    });
  }


  var animateInBBOptionTitles = function() {

    // if(Cookies.get('homeAnimated') == 'true') return;
    // Cookies.set('homeAnimated', true);

    if(_hasAnimatedIn) return;
    _hasAnimatedIn = true;

    TweenMax.delayedCall(0.3, function() {
      // Circles
      TweenMax.to($(titles[4]['bg']), titles[4]['bgZoom'], {scale:1, ease:Sine.easeOut});
      TweenMax.to($(titles[3]['bg']), titles[3]['bgZoom'], {scale:1, ease:Sine.easeOut});
      TweenMax.to($(titles[2]['bg']), titles[2]['bgZoom'], {scale:1, ease:Sine.easeOut});
      TweenMax.to($(titles[1]['bg']), titles[1]['bgZoom'], {scale:1, ease:Sine.easeOut});
      TweenMax.to($(titles[0]['bg']), titles[0]['bgZoom'], {scale:1, ease:Sine.easeOut, onComplete:function() {
        // Text
        TweenMax.to($(titles[4]['text']), 0.4, {opacity:1, ease:Sine.easeOut});
        TweenMax.to($(titles[3]['text']), 0.4, {opacity:1, ease:Sine.easeOut});
        TweenMax.to($(titles[2]['text']), 0.4, {opacity:1, ease:Sine.easeOut});
        TweenMax.to($(titles[1]['text']), 0.4, {opacity:1, ease:Sine.easeOut});
        TweenMax.to($(titles[0]['text']), 0.4, {opacity:1, ease:Sine.easeOut});

        TweenMax.to($(titles[4]['bg']), 0.1, {scale:1.1, delay:1, ease:Sine.easeIn});
        TweenMax.to($(titles[3]['bg']), 0.1, {scale:1.1, delay:1, ease:Sine.easeIn});
        TweenMax.to($(titles[2]['bg']), 0.1, {scale:1.1, delay:1, ease:Sine.easeIn});
        TweenMax.to($(titles[1]['bg']), 0.1, {scale:1.1, delay:1, ease:Sine.easeIn});
        TweenMax.to($(titles[0]['bg']), 0.1, {scale:1.1, delay:1, ease:Sine.easeIn, onComplete:function()
        {
          TweenMax.to($(titles[4]['bg']), 0.2, {scale:1, delay:0.1, ease:Sine.easeOut});
          TweenMax.to($(titles[3]['bg']), 0.2, {scale:1, delay:0.1, ease:Sine.easeOut});
          TweenMax.to($(titles[2]['bg']), 0.2, {scale:1, delay:0.1, ease:Sine.easeOut});
          TweenMax.to($(titles[1]['bg']), 0.2, {scale:1, delay:0.1, ease:Sine.easeOut});
          TweenMax.to($(titles[0]['bg']), 0.2, {scale:1, delay:0.1, ease:Sine.easeOut});

          $(titles).each(function(i, title)
          {
            $(title['rings']).each(function(j, ringId)
            {
              TweenMax.to($(ringId), 0.5, {scale:1, delay: j*0.05, ease:Sine.easeOut});
            });
          });


        }});
      }});


    });




    // $(titles).each(function(i, title)
    // {
    //   // console.log($(title['titleId']).length);
    //   $(title['rings']).each(function(j, ringId)
    //   {
    //     // console.log(ringId + ' = '+$(ringId).length);
    //     // TweenMax.set($(ringId), { transformOrigin:'50% 50%' });
    //     // TweenMax.set($(ringId), { attr:{x:$(title['titleId']).width()/2}, scale: 0 });
    //   console.log(ringId);
    //     timeline.to($(ringId), 1, {scale:1, ease:Sine.easeOut}, '-=0.8');
    //
    //     // if(j == (title['rings'].length-1)) {
    //     //   TweenMax.to($(ringId), 1, {scale:1, delay: 2+(j*0.2), ease:Sine.easeOut});
    //     // } else {
    //     //   TweenMax.to($(ringId), 1, {scale:1, delay: 2+(j*0.2), ease:Sine.easeOut});
    //     // }
    //   });
    // });

    // timeline.play();

    // $(titles).each(function(i, title)
    // {
    //   // console.log($(title['titleId']).length);
    //   $(title['rings']).each(function(j, ringId)
    //   {
    //     // console.log(ringId + ' = '+$(ringId).length);
    //     // TweenMax.set($(ringId), { transformOrigin:'50% 50%' });
    //     // TweenMax.set($(ringId), { attr:{x:$(title['titleId']).width()/2}, scale: 0 });
    //
    //     if(j == (title['rings'].length-1)) {
    //       TweenMax.to($(ringId), 1, {scale:1, delay: 2+(j*0.2), ease:Sine.easeOut});
    //     } else {
    //       TweenMax.to($(ringId), 1, {scale:1, delay: 2+(j*0.2), ease:Sine.easeOut});
    //     }
    //   });
    // });

  }

  /**
   Add the Home page listeners

   @return nothing
   */
  var addListeners = function()
  {
    $(window).on('scroll', onWindowScroll_handler);
    $(window).on('resize', onWindowResize_handler);
    // $('.plan-slider').on('scrollstart', onPlansSlider_handler);
    // $('.plan-slider').on('scrollstop', onPlansSlider_handler);

    // doPlansUI();
    setColumnsHeight();

    $('.plan-slider').on('scroll', onPlansSlider_handler);
    doPlansSlideProgressUI();

    setTimeout(function() {
      $(window).trigger('resize');
    },100);

  }

  var Home = function() {

    // console.log('Home');

    addListeners();
    doPlansUI();

    if($(window).width() > _mobileResolutionMin) {
      // if(Cookies.get('homeAnimated') != 'true') {
        initAnimationPositions();
      // }
    }

    doHeaderIntro();
  }

  return {
    Home : Home,

    initAnimationPositions : initAnimationPositions,
    animateInBBOptionTitles : animateInBBOptionTitles
  }


});
