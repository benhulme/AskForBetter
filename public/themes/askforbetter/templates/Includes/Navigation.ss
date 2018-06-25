<!-- Navigation Start -->
<div class="nav-main" id="stickyNavigation">
	<div class="container-fluid no-padding-right no-padding-left">
		<nav>
			<ul class="hidden-xs hidden-sm">
				<% loop $Menu(1) %>
					<li class="$LinkingMode"><a href="$Link" title="$Title.XML" class="do-ga-track" data-gaprop='{"category":"nav", "action":"click", "label":"$MenuTitle.XML"}'>$MenuTitle.XML</a></li>
				<% end_loop %>
			</ul>

			<div class="search-address-form">
				<form action=".">
				<%-- <input type="text" class="search-address-text-input do-ga-track" data-gaprop='{"category":"addresschecknav", "action":"click", "label":""}' placeholder="Enter your address" id="autocomplete3"> --%>
				<input type="text" id="search-addr-input-nav" placeholder="Enter your address" autocomplete="off">
				<ul class="suggestion-hidden" id="search-suggestions-nav"></ul>
				<div id="hidden-list-nav"></div>
				<input type="submit" id="search-addr-submit-nav" class="btn btn-address-search-action hidden-xs" value="Ask for better">
				<button type="search" id="search-addr-btn-nav" class="btn btn-address-search-action visible-xs mobile-btn"></button>
				</form>
			</div>
		</nav>

	</div>

	<div class="container logo-wrap">
		<div class="ask-for-better-logo"><a href="/" title="Ask For Better" class="do-ga-track" data-gaprop='{"category":"nav", "action":"click", "label":"logo"}'><img src="{$ThemeDir}/images/askforbetter-logo.svg" class="img-responsive img-responsive-svg"></a></div>
		<div class="chorus-logo"><a href="https://www.chorus.co.nz/" title="Chorus - Broadband options" target="_blank" class="do-ga-track" data-gaprop='{"category":"nav", "action":"click", "label":"logo"}'><img src="{$ThemeDir}/images/chorus-logo.svg" class="img-responsive img-responsive-svg"></a></div>
		<div class="better-is-here-logo"><a href="/" title="Ask For Better" class="do-ga-track" data-gaprop='{"category":"nav", "action":"click", "label":"logo"}'><img src="{$ThemeDir}/images/better-is-here-logo.svg" class="full-width"></a></div>

		<button id="mobileMenuToggleButton" class="do-ga-track" data-gaprop='{"category":"nav", "action":"hamburger", "label":""}'>
			<ul>
				<% loop $Menu(1) %>
					<li></li>
				<% end_loop %>
			</ul>
		</button>
	</div>
</div>

<div id="navigationOverlay">
	<div class="background-filler"></div>
	<div class="list-items-wrap">
		<ul>
			<% loop $Menu(1) %>
				<li class="$LinkingMode"><a href="$Link" title="$Title.XML" class="do-ga-track" data-gaprop='{"category":"nav", "action":"click", "label":"$MenuTitle.XML"}'>$MenuTitle.XML</a></li>
			<% end_loop %>
		</ul>
	</div>

	<div class="navigation-overlay-footer">
		<div class="container">
			<div class="row border-below">
				<div class="col-lg-2 col-md-2 col-sm-3 text-center">
					<div class="chorus-logo"><a href="https://www.chorus.co.nz/" title="Chorus - Broadband options" target="_blank" class="do-ga-track" data-gaprop='{"category":"nav", "action":"click", "label":"logo"}'><img src="{$ThemeDir}/images/chorus-logo.svg" class="img-responsive img-responsive-svg"></a></div>
				</div>
				<div class="col-lg-4 col-md-3 col-sm-4 chorus-direct-wrap">
					<a href="https://www.chorus.co.nz/" title="Chorus - Broadband options" target="_blank" class="chorus-direct-link hidden-xs do-ga-track" data-gaprop='{"category":"footer", "action":"click", "label":"choruswebsitetext"}'>Chorus Website</a>
				</div>
				<div class="col-lg-6 col-md-7 col-sm-5" style="position:relative">
					<div class="social-links">
						<ul>
							<li><a href="http://www.facebook.com/pages/Chorus/232281130146993" target="_blank" title="Facebook" class="facebook do-ga-track" data-gaprop='{"category":"footer", "action":"click", "label":"facebook"}'></a></li>
							<li><a href="https://twitter.com/ChorusNZ" target="_blank" title="Twitter" class="twitter do-ga-track" data-gaprop='{"category":"footer", "action":"click", "label":"twitter"}'></a></li>
							<li><a href="http://www.linkedin.com/company/chorus-nz-limited" target="_blank" title="LinkedIn" class="linkedin do-ga-track" data-gaprop='{"category":"footer", "action":"click", "label":"linkedin"}'></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row navigation-overlay-links-below">
				<div class="col-lg-12">
					<ul>
						<li><a href="https://www.chorus.co.nz/contact-us" target="_blank" title="Chorus - Contact" class="do-ga-track" data-gaprop='{"category":"footer", "action":"click", "label":"contact"}'>Contact</a></li>
						<li><a href="https://www.chorus.co.nz/privacy-policy" target="_blank" title="Chorus - Privacy Policy" class="do-ga-track" data-gaprop='{"category":"footer", "action":"click", "label":"privacypolicy"}'>Privacy Policy</a></li>
						<li><a href="https://www.chorus.co.nz/legal-disclaimer" target="_blank" title="Chorus - Legal Disclaimer" class="do-ga-track" data-gaprop='{"category":"footer", "action":"click", "label":"legal"}'>Legal Disclaimer</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Navigation End -->
