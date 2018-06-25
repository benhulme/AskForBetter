<% include Navigation %>
<div class="site-scroll-wrap">
  <!-- Header Start -->
  <div class="container-fluid no-padding-right no-padding-left">
  	<header class="header-generic header-competition"></header>
  </div>
  <!-- Header End -->
  <main>
  	<!-- Competition content Start -->
  	<div class="container animated fadeIn" id="navigationDockPoint">
  		<div class="row overlap-under">
  			<div class="col-lg-12">
          <a href="/ask-for-better/" style="text-decoration: none;"><p class="competition-back-link">< Back to broadband checker</p></a>
    			$Content
    			<% include EntryForm %>
        </div>
      </div>
    </div>
  </main>
  <% include Footer %>
</div>
<script type="text/javascript">
	$(document).ready(function(){
    // Store entered address
		var enteredAddr = localStorage.getItem('enteredAddr');
		$('input#Form_EntryForm_Address').val(enteredAddr);
    // Update back link
		//$('p.competition-back-link').parent().attr('href',fetchReturnURL());
	});
</script>
