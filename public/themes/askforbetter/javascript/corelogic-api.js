
if(localStorage.getItem('tool-loading') == 0) {
  $('div.tool-loading').hide();
}
transitionLoader();


$(document).ready(function(){
  var mainInput = $('input#search-addr-input');
  var navInput = $('input#search-addr-input-nav');
  var mainSuggestions = $('ul#search-suggestions li.suggestion-result');
  var navSuggestions = $('ul#search-suggestions-nav li.suggestion-result');
  var addrStr;
  var addrId;

  localStorage.setItem('tool-loading',0);


  /* Key press controls */
  $(mainInput).keydown(function(e){
    performKeyPress(mainInput,'main',e);
  });

  $(navInput).keydown(function(e){
    performKeyPress(navInput,'nav',e);
  });

  alignSuggestionsBox();
  displaySuggestions('main');
  mainSuggestions = $('ul#search-suggestions');
  navSuggestions = $('ul#search-suggestions-nav');

  // Check for any input changes
  $('input#search-addr-input').on('input', function() {
    getSuggestions($('input#search-addr-input').val(),'main');
  });
  $('input#search-addr-input-nav').on('input', function() {
    getSuggestions($('input#search-addr-input-nav').val(),'nav');
    alignSuggestionsBox();
  });

  // Update suggestion box position on screen resize
  $(window).on('resize', function() {
    alignSuggestionsBox();
  });
  $(window).scroll(function(){
    updateNavVisibilityOnScroll();
    if($(window).top == 0) {
      $('ul#search-suggestions-nav').removeClass('suggestion-visible').addClass('suggestion-hidden');
    }
  });

  /* Request and display suggestions from API */
  function getSuggestions(searchString,type) {
    if(searchString != '' || searchString != null) {
      var fullSearch = 'https://addressright.co.nz/autocomplete?api_key=278227_fie2iuwleqoEfrlu&term=' + searchString;
      $.get(fullSearch, function(data) {
        var suggestions = $.parseHTML(data);
        if(type == 'main')
          var target = $('ul#search-suggestions');
        else if(type == 'nav')
          var target = $('ul#search-suggestions-nav');
        updateSuggestions(target,suggestions,type);
      });
    }
    displaySuggestions(type);
  }

  /* Show or hide the suggestions box */
  function displaySuggestions(type) {
    if(searchEntered(type)) {
      if(type == 'main') {
        if($('input#search-addr-input').length && $('input#search-addr-input') !== undefined)
          $('ul#search-suggestions').removeClass('suggestion-hidden').addClass('suggestion-visible');
      }
      if(type == 'nav') {
        if($('input#search-addr-input-nav').length && $('input#search-addr-input-nav') !== undefined)
          $('ul#search-suggestions-nav').removeClass('suggestion-hidden').addClass('suggestion-visible');
      }
    } else {
      if(type == 'main')
        $('ul#search-suggestions').removeClass('suggestion-visible').addClass('suggestion-hidden');
      if(type == 'nav')
        $('ul#search-suggestions-nav').removeClass('suggestion-visible').addClass('suggestion-hidden');
    }
  }

  /* Align the suggestions box under the input */
  function alignSuggestionsBox() {
    if($('input#search-addr-input').length && $('input#search-addr-input') !== undefined) {
      var suggestionsBoxMain = $('ul#search-suggestions');
      var inputBoxMain = $('input#search-addr-input');
      suggestionsBoxMain.css('width',inputBoxMain.width());
      var suggestionsMainLeft = inputBoxMain.position().left;
      suggestionsBoxMain.css('left',suggestionsMainLeft);
    }

    var suggestionsBoxNav = $('ul#search-suggestions-nav');
    var inputBoxNav = $('input#search-addr-input-nav');
    suggestionsBoxNav.css('width',inputBoxNav.width());
    if($(window).width() > 768) {
      var spacer = 40;
    } else {
      if($('div#navigationOverlay').css('opacity') == 1) // check for hamburger
        var spacer = 170;
      else
        var spacer = 80;
    }
    var suggestionsNavTop = inputBoxNav.position().top + inputBoxNav.height() + spacer;
    var suggestionsNavLeft = inputBoxNav.position().left;
    suggestionsBoxNav.css('top',suggestionsNavTop).css('left',suggestionsNavLeft);
  }

  /* Check if any input is present in input box */
  function searchEntered(type) {
    var searchString = '';
    if(type == 'main')
      searchString = $('input#search-addr-input').val();
    if(type == 'nav')
      searchString = $('input#search-addr-input-nav').val();
    if(searchString === undefined) { searchString = ''; }
    if(searchString == '')
      return false;
    else
      return true;
  }

  function updateNavVisibilityOnScroll() {
    if($(window).scrollTop() != 0) {
      if($('div#stickyNavigation').hasClass('docked')) {
        if(searchEntered('nav'))
          $('ul#search-suggestions-nav').removeClass('suggestion-hidden').addClass('suggestion-visible');
      } else {
        $('ul#search-suggestions-nav').removeClass('suggestion-visible').addClass('suggestion-hidden');
      }
    } else {
      $('ul#search-suggestions-nav').removeClass('suggestion-visible').addClass('suggestion-hidden');
    }
  }

  /* Update the suggestions box html
      - The API generates the data preformatted in ul/li
      - This needs to be loaded, processed and recreated for customisation  */
  function updateSuggestions(target,suggestions,type) {
    // if(target == '' & type == 'main')
    //   target = $('ul#search-suggestions');
    // if(target == '' & type == 'nav')
    //   target = $('ul#search-suggestions-nav');

    // Get API generated ul/li
    $(target).html(suggestions);
    var suggestionsArray = updateSuggestionsDisplay(suggestions,type);
    $(target).html(suggestionsArray);

    if(type == 'main') {
      $('div#hidden-list').html(suggestions);
      var hiddenArray = updateHiddenList(suggestions,type);
      $('div#hidden-list').html(hiddenArray);
    } else if(type == 'nav') {
      $('div#hidden-list-nav').html(suggestions);
      var hiddenArray = updateHiddenList(suggestions,type);
      $('div#hidden-list-nav').html(hiddenArray);
    }
  }

  /* Strip tags from API and format for our checker */
  function updateSuggestionsDisplay(suggestions,type) {
    var suggestionsArray = [];
    const RETURN_LIMIT = 5; // Limit the number of returned suggestions
    // Iterate and store each individual search response
    if(type=='main') {
      $.each($('ul#search-suggestions li'), function(index,item) {
        if(index < RETURN_LIMIT) {
          suggestionsArray.push('<li class="suggestion-result" data-id="'+ item.id +'">' + item.innerHTML + '</li>');
        }
      });
    } else if(type == 'nav') {
      $.each($('ul#search-suggestions-nav li'), function(index,item) {
        if(index < RETURN_LIMIT) {
          suggestionsArray.push('<li class="suggestion-result" data-id="'+ item.id +'">' + item.innerHTML + '</li>');
        }
      });
    }
    return suggestionsArray;
  }

  /* Used to populate a list for non-clickable search
   *  - Fetches closest search return if suggestion not clicked
   */
  function updateHiddenList(suggestions,type) {
    var hiddenArray = [];
    const RETURN_LIMIT = 1; // Limit the number of returned suggestions
    // Iterate and store each individual search response
    if(type=='main') {
      $.each($('div#hidden-list li'), function(index,item) {
        if(index < RETURN_LIMIT) {
          hiddenArray.push(item.id + '');
        }
      });
    } else if(type == 'nav') {
      $.each($('div#hidden-list-nav li'), function(index,item) {
        if(index < RETURN_LIMIT) {
          hiddenArray.push(item.id + '');
        }
      });
    }
    return hiddenArray;
  }

  /* Handle user click suggestion event */
  $('ul#search-suggestions').on('click','li',function(e) {
    e.stopPropagation(); // Ignore parent click
    $('input#search-addr-input').val(this.innerHTML); // Set input value to addr
    $('ul#search-suggestions').removeClass('suggestion-visible').addClass('suggestion-hidden'); // Hide after click
    performSearch(this.innerHTML,$(this).attr('data-id'));
  });
  $('ul#search-suggestions-nav').on('click','li',function(e) {
    e.stopPropagation(); // Ignore parent click
    $('input#search-addr-input-nav').val(this.innerHTML); // Set input value to addr
    $('ul#search-suggestions-nav').removeClass('suggestion-visible').addClass('suggestion-hidden'); // Hide after click
    performSearch(this.innerHTML,$(this).attr('data-id'));
  });

  function performSearch(addr,id) {
    initToolLoader();
    var begin = '//' + location.host;
    if(window.location.pathname.search('ask-for-better') > 0) {
      var begin = begin + location.pathname;
      window.location.href = begin+'#?lookup='+id;
      window.location.reload(true);
    } else {
      var redirect = begin + '/ask-for-better/#?lookup='+id;
      window.location.href = redirect;
    }
  }

  /* Add key control on suggestion boxes for main and nav */
  function performKeyPress(input,target,e) {
    var suggestions = '';
    if(target == 'main') {
      suggestions = mainSuggestions;
    } else if(target == 'nav') {
      suggestions = navSuggestions;
    }
    var key = e.keyCode,
    $selected = suggestions.children().filter('.selected'),
    $current;
    if(key != 40 && key != 38 && key != 13) return;
    if(key == 40 || key == 38) {
      suggestions.children().removeClass('selected');
      if(key == 40) {
        if(! $selected.length || $selected.is(':last-child') ) {
          $current = suggestions.children().eq(0);
        } else {
          $current = $selected.next();
        }
      } else if(key == 38) {
        if(! $selected.length || $selected.is(':first-child') ) {
          $current = suggestions.children().last();
        } else {
          $current = $selected.prev();
        }
      }
      $current.addClass('selected');
      $(input).val($('li.suggestion-result.selected')[0].outerText);
      addrStr = $('li.suggestion-result.selected')[0].outerText;
      addrId = $('li.suggestion-result.selected').attr('data-id');
      if(target == 'main')
        $('div#hidden-list').text(addrId);
      if(target == 'nav')
        $('div#hidden-list-nav').text(addrId);
    }
    if(key == 13) {
      // Disable clicking enter
      //e.preventDefault();
      addrStr = $(input).val();
      if(addrStr == '' || addrStr == null)  {
        //e.preventDefault();
        alert('Please enter an address');
      } else {
        addrId = handleBadInput(target,addrStr);
        performSearch(addrStr,addrId);
      }
    }
  }

  /* Used if suggestion is not used, and address cannot be found */
  function handleBadInput(type,searchString) {
    var addrId;
    if(type == 'main') {
      if($('div#hidden-list').text().length > 0) {
        addrId = $('div#hidden-list').text();
      } else {
        addrId = 'A1007514434';
      }
    }
    if(type == 'nav') {
      if($('div#hidden-list-nav').text().length > 0) {
        addrId = $('div#hidden-list-nav').text();
      } else {
        addrId = 'A1007514434';
      }
    }
    return addrId;
  }

  /* Submit address */
  $('input#search-addr-submit').on('click',function(e){
    e.preventDefault();
    var searchAddr = $('input#search-addr-input').val();
    var addrId = handleBadInput('main',searchAddr);
    if(searchAddr != '') {
      performSearch(searchAddr,addrId);
    } else {
      alert('Please enter your address.');
      return;
    }
  });
  $('input#search-addr-submit-nav').on('click',function(e){
    e.preventDefault();
    var searchAddr = $('input#search-addr-input-nav').val();
    var addrId = handleBadInput('nav',searchAddr);
    if(searchAddr != '') {
      performSearch(searchAddr,addrId);
    } else {
      alert('Please enter your address.');
      return;
    }
  });
});

/* Hide first tool page when search performed from our header/nav */
function initToolLoader() {
  localStorage.setItem('tool-loading',1);
  $('div.site-scroll-wrap').fadeOut(100);
  transitionLoader();
}

function showLoadedTool() {
  $('div.tool-loading').fadeOut(1000);
  localStorage.setItem('tool-loading',0);
  $('div.site-scroll-wrap').fadeIn(100);
}

function transitionLoader() {
  if(localStorage.getItem('tool-loading') == 1) {
    $('div.tool-loading').fadeIn(100);
    $(document).ready(function(){
      setTimeout(function(){
        showLoadedTool();
      },1000);
    });
  }
}
