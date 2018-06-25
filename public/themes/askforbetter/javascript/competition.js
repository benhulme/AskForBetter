/* competition.js - Custom JS functions for Chorus Competition */

$(document).ready(function(){
  createShareEvent('facebook');
  createShareEvent('twitter');
});

function createShareEvent(type) {
  var id = 'a div#share-' + type;
  $(id).on('click',function(event){
    //console.log('share click');
    if(type == 'facebook') {
      invokeFacebookShare();
    } else if(type == 'twitter') {
      invokeTweetShare();
    }
  });
}

function invokeFacebookShare() {
   FB.ui({
     method: 'share',
     href: 'http://askforbetter.ap-southeast-2.elasticbeanstalk.com/',
     redirect_uri: 'http://askforbetter.ap-southeast-2.elasticbeanstalk.com/auto-close'
   }, function(response) {

   });
}

function invokeTweetShare() {
  var url = 'https://twitter.com/intent/tweet?title=Chorus%20Broadband%20Competition&text=';
  var tweet = 'I%20have%20just%20entered%20the%20Chorus%20Broadband%20Competition%20to%20win%20free%20broadband%20for%20a%20year!%20Enter%20at%20https://www.askforbetter.co.nz/'
  var fullTweetURL = url + tweet;
  window.open(fullTweetURL,'_blank','location=yes,height=570,width=520,scrollbars=yes,status=yes');
}
