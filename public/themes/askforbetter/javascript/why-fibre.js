// Disable placeholder for provider select
$(document).on('change','#fibre-providers',function(){
  $('#fibre-providers-go').prop('disabled',false);  
});
// Open providers in new tabs
$(document).ready(function(){
  $('#fibre-providers-go').on('click',function(){
    var selOption = $("#fibre-providers option").filter(":selected").val();
    window.open(selOption);
  });
});
// Smooth scroll from header
if(!navigator.userAgent.match(/(iPod|iPhone|iPad|Android)/) || window.innerWidth > 400) {
  $('a[href*="#"]').not('[href="#"]').not('[href="#0"]').click(function(event) {
    if (location.pathname.replace('/^\//', '') == this.pathname.replace('/^\//', '') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      if (target.length) {
        event.preventDefault();
        var scrollTop = Math.round(target.offset().top);			 
        $('html, body').animate({
          scrollTop: scrollTop
        }, 800);
      }
    }
  });
}