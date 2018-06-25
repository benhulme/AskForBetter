<% include Navigation %>

<div class="site-scroll-wrap why-vdsl">
<!-- Header Start -->
<div class="container-fluid no-padding-right no-padding-left">
	<header class="header-generic header-vdsl">

	</header>
</div>
<!-- Header End -->

<main>
	<!-- How To Guides content Start -->
	<div class="container animated fadeIn" id="navigationDockPoint">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>Why VDSL?</h2>
			</div>
		</div>
	</div>

	<div class="container animated fadeIn">
		<div class="container content">
			<div class="row no-transition">

				<div class="col-md-2 col-md-offset-1 icon-holder">
					<img class="vdsl-icon" src="{$ThemeDir}/images/speed-icon.png"/>
				</div>

				<div class="col-md-7">
					<h4>It's faster and more reliable </h4>
					<p>A simple software upgrade means VDSL provides a better broadband connection than ADSL. New technology connected at your nearest telecommunications cabinet in your street makes VDSL faster than ADSL, and gives you a more consistent experience online than other basic broadband options. </p>
				</div>

			</div>

			<div class="row no-transition">

				<div class="col-md-2 col-md-offset-1 icon-holder">
					<img class="vdsl-icon" src="{$ThemeDir}/images/upgrade-icon.png"/>
				</div>

				<div class="col-md-7">
					<h4>Upgrading is easy  </h4>
					<p>Just call your broadband provider and ask to upgrade to VDSL which is often a similar price to basic broadband options. They’ll explain your plan and will send you a new VDSL modem. It should then be as simple as plugging it in and enjoying your new broadband connection. </p>
				</div>

			</div>

			<div class="row no-transition">

				<div class="col-md-2 col-md-offset-1 speed-icon icon-holder">
					<img class="vdsl-icon" src="{$ThemeDir}/images/buffer-icon.png"/>
				</div>

				<div class="col-md-7">
					<h4>Less buffering means you can do more </h4>
					<p>Unlike basic broadband VDSL allows for a range of online activities like streaming high definition TV, video calling, or uploading photos, without disruption. You may want to consider an unlimited plan which gives you the freedom to do more without fear of bill shock should you go over your data cap.
					</p>
				</div>

			</div>

			<div class="row">
				<div class="row no-transition">
				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid no-padding-left no-padding-right background-grey animated fadeIn stats">
		<div class="row">
			<div class="col-sm-12">
				<h2>Less buffering. More enjoyment.</h2>
				<p class="text-center">May 2017: Buffering Average vs Peak Hours (8-9pm). Buffering events as a percentage of all measurements.*</p>
			</div>
		</div>


		<div class="less-buffering-line">
				<img class="vdsl-icon" src="{$ThemeDir}/images/WIRELESS.png" />
				<img class="vdsl-icon" src="{$ThemeDir}/images/ADSL.png" />
				<img class="vdsl-icon" src="{$ThemeDir}/images/CABLE.png" />
				<img class="vdsl-icon" src="{$ThemeDir}/images/VDSL.png" />
				<img class="vdsl-icon" src="{$ThemeDir}/images/fiber.png" />
		</div>


		<div class="less-buffering-grid">

			<div class="text-center">
				<img class="vdsl-icon" src="{$ThemeDir}/images/WIRELESS.png" />
				<img class="vdsl-icon" src="{$ThemeDir}/images/ADSL.png" />
			</div>

			<div class="text-center">
				<img class="vdsl-icon" src="{$ThemeDir}/images/CABLE.png" />
				<img class="vdsl-icon" src="{$ThemeDir}/images/VDSL.png" />
			</div>
			<div class="text-center">
				<img class="vdsl-icon" src="{$ThemeDir}/images/fiber.png" />
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 text-center" style="padding-bottom: 100px;">
				<a style="color: #35a6e8" href="https://truenet.nz/story/2017/06/may-2017-urban-broadband-report" target="_blank">*https://truenet.nz/story/2017/06/may-2017-urban-broadband-report</a>
			</div>
		</div>
	</div>

	<div class="container animated fadeIn">
		<div class="container content">
			<div class="row no-transition">
				<div class="col-sm-12">
					<h2 class="text-center">See if you can get VDSL</h2>
					<p style="margin-bottom: 30px" class="text-center">Enter your address below to see if you can get VDSL at your place.</p>

					<div class="search-address-form" style="position: relative">
						<form action=".">
							<%-- <input type="text" class="search-address-text-input do-ga-track" data-gaprop='{"category":"addresscheckblade", "action":"click", "label":""}' id="autocomplete4" placeholder="Enter your address"> --%>
							<input type="text" class="search-addr-input-alt" id="search-addr-input" placeholder="Enter your address" autocomplete="off">
							<ul class="suggestion-hidden" id="search-suggestions" style="z-index:999;"></ul>							
							<div id="hidden-list"></div>
							<input type="submit" id="search-addr-submit" class="btn btn-address-search-action hidden-xs" value="Ask for better">
							<button type="search" id="search-addr-btn" class="btn btn-address-search-action visible-xs mobile-btn"></button>
						</form>
					</div>

					<p class="note note-smaller animated fadeIn text-center" style="font-size:14px !important;">VDSL upgrades on the Chorus network can usually be completed within a few days. If a truck call-out is required it may take longer.<br>Check with your broadband provider to find out how quickly you can upgrade.</p>

				</div>
			</div>
		</div>
	</div>

	<div class="container-fluid animated fadeIn find-out-more">
		<div class="row">
			<div class="col-md-5 col-md-offset-1">
				<h2>Watch to find out more about upgrading from basic broadband to VDSL.</h2>
			</div>
			<div class="col-md-5 ">
				<div class="preview preview-item-video" style="background-image: url('{$ThemeDir}/images/preview-item-10.png'); padding: 30px;" data-videoplatform="vimeo" data-videoid="173295006">
					<img src="{$ThemeDir}/images/video-scaler.png" class="video-scaler" />
					<button class="preview-play-button"></button>
				</div>
			</div>
		</div>

	</div>


	<div class="container animated fadeIn questions">
		<div class="container content">
			<div class="row no-transition">
				<div class="col-sm-12">
					<h2 class="text-center">Common questions</h2>
					<p class="text-center" style="text-align: center">See answers to common questions below.</p>
				</div>
			</div>
			<div class="row" style="margin-top: 20px;">
				<div class="col-sm-8 col-sm-offset-2" >


					<!-- Accordion START -->
					<div class="panel-group" id="accordion">
						<div class="panel">
							<div class="panel-heading accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" data-target="#collapseOne">
								<h4 class="panel-title">See if you can get VDSL? <span class="arrow-down pull-right"></span> </h4>

							</div>
							<div id="collapseOne" class="panel-collapse collapse">
								<div class="panel-body">
									<p>Enter your address into our <a href="/ask-for-better">broadband checker</a> to find out if VDSL is available at your place.</p>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-heading accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" data-target="#collapseTwo">
								<h4 class="panel-title">How do I get VDSL? <span class="arrow-down pull-right"></span></h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse">
								<div class="panel-body">
									<p>
										It's easy to switch to VDSL - place an order for VDSL with your chosen broadband provider, they’ll send you a new modem and you’ll be good to go.
									</p>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-heading accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" data-target="#collapseThree">
								<h4 class="panel-title">Should I get VDSL or fibre? <span class="arrow-down pull-right"></span></h4>
							</div>
							<div id="collapseThree" class="panel-collapse collapse">
								<div class="panel-body">
									<p>
										Fibre is the best broadband on our network, providing a consistently reliable connection along with ultra-fast speeds. If fibre is available at your place, we recommend upgrading today. VDSL provides a dedicated line and a more reliable internet experience than basic broadband, and is available today to 80 percent of the country making it a great option if fibre isn’t available at your place yet.
									</p>
								</div>
							</div>
						</div>
						<div class="panel">
							<div class="panel-heading accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" data-target="#collapseFour">
								<h4 class="panel-title">Still have questions? <span class="arrow-down pull-right"></span></h4>
							</div>
							<div id="collapseFour" class="panel-collapse collapse">
								<div class="panel-body">
									<p>
										<a style="color: #35a6e8;" href=" https://www.chorus.co.nz/help-and-support" target="_blank">Support Link</a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<!-- Accordion END -->


			</div>
		</div>
	</div>

	<!-- How To Guides content End -->

	<!-- Home Data Usage blade Start -->
	<!--<div class="container-fluid no-padding-left no-padding-right init-opacity-none">-->
		<!--<div class="content-blade content-blade-htg">-->
			<!--<div class="container">-->
				<!--<div class="row">-->
					<!--<div class="col-lg-12">-->
						<!--<div class="blade-flex-content-outer">-->
							<!--<div class="blade-flex-content">-->
								<!--<h3 class="text-center">Find out what broadband options are available in your area.</h3>-->
							<!---->
							<!--</div>-->

						<!--</div>-->
					<!--</div>-->
				<!--</div>-->
			<!--</div>-->
		<!--</div>-->
	<!--</div>-->
	<!-- Home Data Usage blade End -->
</main>

<% include Footer %>
</div>
