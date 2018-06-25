<% include Navigation %>

<div class="tool-loading"><div><div class="loader-animation-container"><img src="/themes/askforbetter/images/tool-loading.gif" /></div><p>Checking for better...</p></div></div>
<div class="site-scroll-wrap" id="navigationDockPoint">
<main class="no-margin-top">

	<!-- No address splash START -->
	<%-- <div id="noAddressSplash">
		<div class="no-address-wrap">
			<div class="search-address-form-wrap">
				<h1 class="color-white text-shadow-black">Be in to WIN free broadband for a year by checking if you can get better at your place.</h1>
				<div class="search-address-form">
					<form action=".">
					<input type="text" class="search-address-text-input do-ga-track" data-gaprop='{"category":"addresscheckbbchecker", "action":"click", "label":""}' placeholder="Enter your address" id="autocomplete">
					<input type="submit" class="btn btn-address-search-action hidden-xs" value="Ask for better">
					<button type="search" class="btn btn-address-search-action visible-xs mobile-btn"></button>
					</form>
				</div>
			</div>
		</div>
	</div> --%>
	<!-- No address splash END -->

	<div class="content" id="bbCheckerContent">
	<!-- Broadband Checker START -->


	<noscript>This website requires javascript to run, you may need to enable it.</noscript>

	<div ng-controller="AppController as app">


		<div class="section-highlighted fade-in" ng-cloak ng-class="{ 'fade-out': app.hide }">

			<bbc-no-address ng-if="app.noAddress" no-address="app.noAddress" hide="app.hide" address-right="app.addressRight" location="app.location"></bbc-no-address>

        <bbc-address on-change="app.onLocationSelected" no-address="app.noAddress" ng-if="!app.noAddress" hide="app.hide" address-right="app.addressRight"></bbc-address>

			<bbc-progress-bar
                ng-if="app.location && app.steps.queue.length > 2"
                steps="app.steps.queue"
                on-change="app.onStepSelected"
                current="app.steps.currentIndex"
        ></bbc-progress-bar>

			<div class="bbc-inner">
			<div class="step" ng-if="app.location">

            <!-- Speed Dials ------------------------------------------------------ -->

            <div ng-if="app.showAllSteps" class="show-all-steps-title">Step: Dials</div>
            <bbc-step-dials
                    location="app.location" modalshown="app.modalShown"
                    ng-if="app.showAllSteps || app.steps.current.id === 'dials'"
                    steps="app.steps.queue" on-change="app.onStepSelected"
            ></bbc-step-dials>


            <!-- Consent ---------------------------------------------------------- -->

            <div ng-if="app.showAllSteps" class="show-all-steps-title">Step: Consent - MDU</div>
            <bbc-step-consent-mdu
                    address="app.location.address.name.short"
                    lead-time="app.location.technology.fastest.data.install_lead_time_human"
                    ng-if="app.showAllSteps || app.steps.current.id === 'consent-mdu'"
            ></bbc-step-consent-mdu>

            <div ng-if="app.showAllSteps" class="show-all-steps-title">Step: Consent - ROW</div>
            <bbc-step-consent-row
                    address="app.location.address.name.short"
                    lead-time="app.location.technology.fastest.data.install_lead_time_human"
                    ng-if="app.showAllSteps || app.steps.current.id === 'consent-row'"
            ></bbc-step-consent-row>


            <!-- Build ------------------------------------------------------------ -->

            <div ng-if="app.showAllSteps" class="show-all-steps-title">Step: Build - MDU</div>
            <bbc-step-build-mdu
                    address="app.location.address.name.short"
                    lead-time="app.location.technology.fastest.data.install_lead_time_human"
                    ng-if="app.showAllSteps || app.steps.current.id === 'build-mdu'"
            ></bbc-step-build-mdu>

            <div ng-if="app.showAllSteps" class="show-all-steps-title">Step: Build - ROW</div>
            <bbc-step-build-row
                    address="app.location.address.name.short"
                    lead-time="app.location.technology.fastest.data.install_lead_time_human"
                    ng-if="app.showAllSteps || app.steps.current.id === 'build-row'"
            ></bbc-step-build-row>


            <!-- ABC Process ------------------------------------------------------ -->

            <div ng-if="app.showAllSteps" class="show-all-steps-title">Step: Process - SDU</div>
            <bbc-step-process-sdu
                    address="app.location.address.name.short"
                    lead-time="app.location.technology.fastest.data.install_lead_time_human"
                    ng-if="app.showAllSteps || app.steps.current.id === 'process-sdu'"
            ></bbc-step-process-sdu>

            <div ng-if="app.showAllSteps" class="show-all-steps-title">Step: Process - MDU</div>
            <bbc-step-process-mdu
                    address="app.location.address.name.short"
                    lead-time="app.location.technology.fastest.data.install_lead_time_human"
                    ng-if="app.showAllSteps || app.steps.current.id === 'process-mdu'"
            ></bbc-step-process-mdu>

            <div ng-if="app.showAllSteps" class="show-all-steps-title">Step: Process - ROW</div>
            <bbc-step-process-row
                    location="app.location"
                    address="app.location.address.name.short"
                    lead-time="app.location.technology.fastest.data.install_lead_time_human"
                    ng-if="app.showAllSteps || app.steps.current.id === 'process-row'"
            ></bbc-step-process-row>


            <!-- Providers -------------------------------------------------------- -->

            <div ng-if="app.showAllSteps" class="show-all-steps-title">Step: Providers</div>
            <bbc-step-providers
                    location="app.location"
                    region="app.location.providersRegion"
                    lead-time="app.location.technology.fastest.data.install_lead_time_human"
                    ng-if="app.showAllSteps || app.steps.current.id === 'providers'"
            ></bbc-step-providers>

        </div>

			<div class="step-actions" ng-if="app.location" ng-class="{'single-action': !app.steps.prev || !app.steps.next}">

            <!--
            <button class="chorus-btn chorus-btn-blue prev" ng-click="app.steps.onPrev(); app.scrollTop()"
                    ng-if="app.steps.prev"><i class="fa fa-chevron-left"></i> <span
                        ng-bind="'Prev: ' + app.steps.prev.title"></span></button>
            <button class="chorus-btn chorus-btn-blue next" ng-click="app.steps.onNext(); app.scrollTop()"
                    ng-if="app.steps.next"><span ng-bind="'Next: ' + app.steps.next.title"></span> <i
                        class="fa fa-chevron-right"></i></button>
                        -->
            <button class="chorus-btn chorus-btn-blue prev" ng-click="app.steps.onPrev(); app.scrollTop()"
                    ng-if="app.steps.prev"><span
                        ng-bind="'BACK'"></span></button>
            <button class="chorus-btn chorus-btn-blue next" ng-click="app.steps.onNext(); app.scrollTop()"
                    ng-if="app.steps.next"><span ng-bind="'NEXT'"></span></button>
        </div>

			</div>

			<!-- end container -->

		</div>

		<bbc-terms ng-if="app.location" terms-visible="app.termsVisible" show-terms="app.showTerms"></bbc-terms>

		<i class="fa fa-bug" ng-click="showDebug = !showDebug" style="color:#fff; opacity:0.05; position:absolute; bottom:0; right:0"></i>
		<pre ng-cloak ng-show="showDebug">{{ {steps: app.steps, location: app.location} | json }}</pre>
	</div>


	<!-- Broadband Checker END -->

	<!-- BBC blade Start -->
	<div class="container-fluid no-padding-left no-padding-right">
		<div class="content-blade content-blade-bbc">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="blade-flex-content-outer">
							<div class="blade-flex-content">
								<h3 class="color-black">Want to know more about your broadband options?</h3>
								<a href="/" class="btn btn-standard do-ga-track" data-gaprop='{"category":"tool", "action":"click", "label":"moreinfoblade"}'>Find out more</a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- BBC blade End -->

	<!-- How To Guides Start -->
	<div class="container padme-out">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2>How to guides</h2>
				<p>Simple things you can do around your place to help get the best out of your online experience and connection.</p>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row do-grid floating-grid">
			<div class="grid-item">
				<div class="preview preview-item-video" style="background-image: url('{$ThemeDir}/images/preview-item-09.png')" data-videoplatform="vimeo" data-videoid="210659906">
					<img src="{$ThemeDir}/images/video-scaler.png" class="video-scaler" />
					<button class="preview-play-button"></button>
				</div>
				<p><a href="https://blog.chorus.co.nz/the-gig-the-best-of-the-best/" target="_blank" title="The Gig">The Gig</a></p>
			</div>

			<div class="grid-item">
				<div class="preview preview-item-video" style="background-image: url('{$ThemeDir}/images/preview-item-12.png')" data-videoplatform="vimeo" data-videoid="173295006">
					<img src="{$ThemeDir}/images/video-scaler.png" class="video-scaler" />
					<button class="preview-play-button"></button>
				</div>
				<p><a href="https://blog.chorus.co.nz/the-gig-the-best-of-the-best/" target="_blank" title="What impacts your speed?">What impacts your speed?</a></p>
			</div>

			<div class="grid-item">
				<div class="preview preview-item-video" style="background-image: url('{$ThemeDir}/images/preview-item-10.png')" data-videoplatform="vimeo" data-videoid="167810567">
					<img src="{$ThemeDir}/images/video-scaler.png" class="video-scaler" />
					<button class="preview-play-button"></button>
				</div>
				<p><a href="https://blog.chorus.co.nz/what-the-tech-broadband-connection-types-explained/" target="_blank" title="ADSL vs VDSL">ADSL vs VDSL</a></p>
			</div>

			<div class="grid-item">
				<div class="preview preview-item-video" style="background-image: url('{$ThemeDir}/images/preview-item-11.png')" data-videoplatform="vimeo" data-videoid="207341124">
					<img src="{$ThemeDir}/images/video-scaler.png" class="video-scaler" />
					<button class="preview-play-button"></button>
				</div>
				<p><a href="https://blog.chorus.co.nz/check-your-speed" target="_blank" title="Better WiFi">Better WiFi</a></p>
			</div>
		</div>
	</div>

	<div class="container padme-out">
		<div class="row">
			<div class="col-lg-12 text-center">
				<a href="/how-to-guides" title="See all guides" class="btn btn-standard do-ga-track" data-gaprop='{"category":"tool", "action":"click", "label":"seeallguides"}'>See all guides</a>
			</div>
		</div>
	</div>
	<div class="container padme-out"></div>
	<!-- How To Guides End -->
	</div>
</main>

<% include Footer %>
</div>

<script type="text/javascript">
	$(document).ready(function(){
		setTimeout(function () {
			localStorage.setItem('enteredAddr',$('input#ar-address').val());
		}, 2000);
		$('.bbc-step-dials .dials-content .competition .competition-text a').on('click',function(){
			localStorage.setItem('enteredAddr',$('input#ar-address').val());
			if($('input#ar-address').val() != '') {
				localStorage.setItem('enteredAddr',$('input#ar-address').val());
			}
		});
	});
</script>
