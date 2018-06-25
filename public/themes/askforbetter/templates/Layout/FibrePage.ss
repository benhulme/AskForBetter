<% include Navigation %>

<div class="site-scroll-wrap fibre-page">

	<!-- Header Start -->
	<div class="container-fluid no-padding-right no-padding-left">
		<div class="row">
			<header class="header-generic header-fibre">
				<div class="header-fibre-container">
					<p class="fibre-heading">
						Everything you need to know <span class="mobile-break"></span>about fibre, right here.
					</p>
					<div class="fibre-heading-links">
						<a title="Why fibre?" class="btn btn-standard" id="why-fibre-link" href="#why-fibre">Why fibre?</a>
						<a title="How to get fibre?" class="btn btn-standard" id="getting-fibre-link" href="#getting-fibre">How to get fibre?</a>
						<a title="Fibre tips" class="btn btn-standard" id="fibre-tips-link" href="#fibre-tips">Fibre tips</a>
					</div>
				</div>
			</header>
		</div>
	</div>
	<!-- Header End -->

	<main>
		<div class="container-fluid">
		<!-- Why Fibre Section -->
		<div class="row">
			<a class="anchor" id="why-fibre"></a>
			<div class="container why-fibre-header" id="navigationDockPoint">
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2>Why fibre?</h2>
					</div>
					<div class="col-md-8 col-md-offset-2">
						<p>
							We’re in the middle of the biggest telecommunications upgrade the country has ever seen. Our 
							new ultra-fast fibre broadband network brings some of the best, most reliable broadband in 
							the world right to your place – and right now, you could get it installed for free.
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Why Fibre END -->

		<!-- Why Fibre Features Section -->
		<div class="row">
			<div class="container why-fibre">
				<div class="container content">
					<div class="row no-transition">
						<div class="col-sm-4">
							<div class="why-fibre-feature-container">
								<img class="fibre-icon" src="{$ThemeDir}/images/fibre-reliability.png"/>
								<h2 class="subtitle">Better reliability</h2>
								<p>
									A dedicated, reliable connection means everyone can do what they want, when they want, without interruption. 
									Fibre provides a consistently great online experience – the best available on our network – even at the busiest 
									time of day when everyone at your place is online at the same time.
								</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="why-fibre-feature-container">
								<img class="fibre-icon" src="{$ThemeDir}/images/fibre-capacity.png"/>
								<h2 class="subtitle">Better capacity</h2>
								<p>
									Fibre gives you dedicated capacity so multiple people on multiple devices can watch, listen, 
									play, post, work, and chat all at the same time, without any loss of quality. And even at 
									the busiest times of day, your fixed line connection won’t slow or drop out.
								</p>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="why-fibre-feature-container">
								<img class="fibre-icon" src="{$ThemeDir}/images/fibre-speed.png"/>
								<h2 class="subtitle">Better speed</h2>
								<p>
									The faster your connection, the faster data moves through it. Which means you can do more in a 
									shorter space of time, from ultra-high definition video streaming to simple web browsing. Find 
									out more about choosing the right speed for you below.
								</p>
							</div>
						</div>
					</div>
					<div class="row no-transition">
						<div class="col-md-8 col-md-offset-2 col-lg-10 col-lg-offset-1">
							<p class="note note-smaller animated fadeIn text-center">
								Chorus currently offers <a class="text-underline" href="https://www.chorus.co.nz/broadband-options/for-home/fibre/installing" target="_blank">
								standard residential fibre</a> installations for FREE in areas that have fibre in the street. Some broadband providers 
								may charge a fee for installation of their equipment, so check when placing your order.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Why Fibre Features END -->

		<!-- Fibre Videos Section -->
		<div class="row">
			<div class="container-fluid no-padding-left no-padding-right background-grey fibre-speed-videos">
				<div class="row no-transition">
					<div class="col-sm-12 col-md-5 col-md-offset-1">
						<h2>Fibre 100MB</h2>
						<p>What does 100MB mean for you?</p>
						<div class="col-sm-10 col-sm-offset-1">
							<div class="preview preview-item-video" style="background-image: url('{$ThemeDir}/images/fibre-video-preview.png')" data-videoplatform="vimeo" data-videoid="171340603">
								<img src="{$ThemeDir}/images/video-scaler.png" class="video-scaler" />
								<button class="preview-play-button"></button>
							</div>
						</div>
					</div>	
					<div class="col-sm-12 col-md-5">
						<h2>Fibre 1GB</h2>
						<p>Find out all about the Gig.</p>
						<div class="col-sm-10 col-sm-offset-1">
							<div class="preview preview-item-video" style="background-image: url('{$ThemeDir}/images/fibre-video-preview.png')" data-videoplatform="vimeo" data-videoid="210659906">
								<img src="{$ThemeDir}/images/video-scaler.png" class="video-scaler" />
								<button class="preview-play-button"></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Fibre Videos END -->

		<!-- Broadband Checker Section -->
		<div class="row">
			<div class="container-fluid can-i-get-fibre">
				<div class="container content">
					<div class="row no-transition">
						<div class="col-sm-12">
								<h2 class="subtitle text-center">Can I get fibre?</h2>
							<p style="margin-bottom: 40px" class="text-center">
								Enter your address below to see if you can get fibre at your place.
							</p>
							<div class="search-address-form" style="position: relative">
								<form action=".">
									<input type="text" 
										class="search-addr-input-alt" 
										id="search-addr-input" 
										placeholder="Enter your address" 
										autocomplete="off">
									<ul class="suggestion-hidden" 
										id="search-suggestions" 
										style="z-index:999;">
									</ul>							
									<div id="hidden-list"></div>
									<input type="submit" 
										id="search-addr-submit" 
										class="btn btn-address-search-action hidden-xs" 
										value="Ask for better">
									<button type="search" 
										id="search-addr-btn" 
										class="btn btn-address-search-action visible-xs mobile-btn">
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Broadband Checker END -->

		<!-- Getting Fibre Section -->
		<div class="row">
			<a class="anchor" id="getting-fibre"></a>
			<div class="container getting-fibre">
				<div class="row">
					<div class="col-lg-12 text-center">
						<h2 class="subtitle">Getting fibre</h2>
					</div>
					<div class="col-md-8 col-md-offset-2">
						<p>
							Fibre is a new and different technology to the one you use for your phone and broadband 
							services today, so we need to install some equipment at your place to get you connected.
						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- Getting Fibre END -->

		<!-- Fibre Dwelling Section -->
		<div class="row">
			<div class="container fibre-dwellings">
				<div class="container content">
					<div class="row no-transition">
						<div class="col-md-5 col-md-offset-1 sdu">
							<div class="dwelling-heading">
								<div class="col-sm-12 col-md-1 dwelling-image-container">
									<img class="dwelling-icon" src="{$ThemeDir}/images/fibre-single-dwelling-unit.png">
								</div>
								<div class="col-sm-12 col-md-10 dwelling-title">
									<h2 class="sdu-title subtitle-small">Single-dwelling unit</h2>
								</div>
							</div>
							<div class="col-md-12 dwelling-content">
								<p>
									If your home is on its own section and you don’t share a driveway, your place is most 
									likely a single-dwelling unit, or SDU, and the installation should be relatively straightforward.
								</p>
								<a title="More info" class="btn btn-standard" href="https://www.chorus.co.nz/fibre-centre/sdu-process" target="_blank">More info</a>
								<div class="col-md-12 dwelling-video-container">
									<div class="preview preview-item-video" 
										style="background-image: url('{$ThemeDir}/images/fibre-video-preview.png')" 
										data-videoplatform="vimeo" 
										data-videoid="132182130">
										<img src="{$ThemeDir}/images/video-scaler.png" class="video-scaler" />
										<button class="preview-play-button"></button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-5 mdu">
							<div class="dwelling-heading">
								<div class="col-sm-12 col-md-2 dwelling-image-container">
									<img class="fibre-dwelling-icon" src="{$ThemeDir}/images/fibre-multi-dwelling-unit.png">
								</div>
								<div class="col-sm-12 col-md-10 dwelling-title">
										<h2 class="mdu-title subtitle-small">Multi-dwelling unit</h2>
								</div>
							</div>
							<div class="col-md-12 dwelling-content">
								<p>
									To connect properties such as apartments or units, or those that share driveways, to our fibre 
									network, we have to do some build work in areas that are shared by multiple residents. This means 
									we need to notify your neighbours before getting started. The consent process recently changed to 
									help make it easier for more people to get connected to fibre. 
								</p>
								<p>
									Click through to find out how, and if, this impacts you.
								</p>
								<a title="More info" class="btn btn-standard" href="https://www.chorus.co.nz/propertyaccess" target="_blank">More info</a>
							</div>
						</div>
							</div>
						</div>
					</div>
				</div>
		<!-- Fibre Dwelling END -->
		
		<!-- Ordering Fibre Section -->
		<div class="row">
			<div class="container-fluid no-padding-left no-padding-right background-grey ordering-fibre">
				<div class="row no-transition">
					<div class="col-md-12 ordering-fibre-item">
						<div class="col-md-12">
							<h2>Ordering your new fibre connection</h2>
							<h2 class="subtitle-small">Already have a broadband provider?</h2>
						</div>
						<div class="col-md-6 col-md-offset-3">
							<p>
								Look at the different plans they offer and decide which one is right for you. You’ll need to consider 
								how much data and what speed you need.
							</p>
						</div>
						<div class="col-md-12">
							<div class="ordering-fibre-link-container">
								<div class="fibre-providers-container">
									<select id="fibre-providers">
										<option value="" disabled selected>Select your current broadband provider</option>
										<option value="https://www.2degreesmobile.co.nz/broadband/">2degrees</option>
										<option value="http://www.2talk.co.nz/">2Talk</option>
										<option value="http://acsdata.co.nz/">ACS Data</option>
										<option value="https://www.actrix.co.nz/">Actrix</option>
										<option value="https://www.bigpipe.co.nz/">Big Pipe</option>
										<option value="http://www.bryte.co.nz/">Bryte</option>
										<option value="http://www.CityLink.co.nz/">CityLink</option>
										<option value="https://compass.net.nz/">Compass</option>
										<option value="https://econofibre.co.nz/">Econofibre</option>
										<option value="http://www.digitalisland.co.nz/data/ultra-fast_broadband">Digital Island</option>
										<option value="http://dts.net.nz/">DTS</option>
										<option value="http://www.fastcom.co.nz/">Fastcom</option>
										<option value="http://www.fusionnetworks.co.nz/">Fusion</option>
										<option value="http://about.gisborne.net.nz/">Gisborne.net.nz</option>
										<option value="http://www.hd.net.nz/">HD Net</option>
										<option value="http://www.hitechsolutions.co.nz/">Hi-Tech Solutions</option>
										<option value="https://www.iwv.works/">ICONZ / Plan B</option>
										<option value="https://www.inspire.net.nz/">Inspire Net</option>
										<option value="http://www.kiwilink.co.nz/">Kiwilink</option>
										<option value="http://www.kordia.co.nz/">Kordia</option>
										<option value="http://www.lightwire.co.nz/">Lightwire</option>
										<option value="http://www.lightwirebusiness.com/">Lightwire Business</option>
										<option value="http://www.megatel.co.nz/">Megatel</option>
										<option value="https://myrepublic.net/nz/">MyRepublic</option>
										<option value="http://www.networkedge.co.nz/">Network Edge</option>
										<option value="http://www.networktasman.co.nz/">Network Tasman</option>
										<option value="https://website.nownz.co.nz/#!/home">Now</option>
										<option value="http://nztechnologygroup.com/internetproviders">New Zealand Technology Group</option>
										<option value="http://www.nzwireless.co.nz/">NZWireless</option>
										<option value="http://www.on.net.nz/">OnNetworks</option>
										<option value="https://www.orcon.net.nz/">Orcon</option>
										<option value="http://primowireless.co.nz/">Primo Wireless</option>
										<option value="https://www.skinny.co.nz/">Skinny Broadband</option>
										<option value="https://www.slingshot.co.nz/">Slingshot</option>
										<option value="http://www.snap.net.nz/">Snap</option>
										<option value="http://www.solarix.co.nz/">Solarix Networks Limited</option>
										<option value="http://www.spark.co.nz/">Spark</option>
										<option value="http://www.sparkdigital.co.nz/">Spark Digital</option>
										<option value="https://stuff-fibre.co.nz/">Stuff Fibre</option>
										<option value="http://telnet.co.nz/">Telnet</option>
										<option value="https://www.trustpower.co.nz/">Trustpower</option>
										<option value="http://www.unifone.net.nz/index.php">Unifone</option>
										<option value="https://unlimitedinternet.co.nz/">Unlimited Internet</option>
										<option value="http://www.vectorfibre.co.nz/">Vector</option>
										<option value="http://www.Velocitynet.co.nz/">Velocitynet</option>
										<option value="http://www.vibecommunications.co.nz/">Vibe Communications</option>
										<option value="http://www.vocus.co.nz/">Vocus</option>
										<option value="https://www.vodafone.co.nz/">Vodafone</option>
										<option value="http://www.vorco.net/">Vorco</option>
										<option value="https://voyager.nz/">Voyager</option>
										<option value="http://www.wickednetworks.co.nz/">Wicked Networks</option>
										<option value="https://wirelessnation.co.nz/">Wireless Nation</option>
										<option value="http://www.worldnet.co.nz/">Worldnet</option>
										<option value="https://www.wxc.co.nz/">WXC</option>
										<option value="http://www.xtreme.net.nz/">Xtreme Networks</option>
										<option value="http://www.unicomnz.co.nz/">Unicom New Zealand Ltd</option>
									</select>
									<i class="dropdown"></i>
								</div>
								<button class="btn" id="fibre-providers-go" disabled>GO</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 ordering-fibre-item">
							<h2 class="subtitle-small">Looking for a broadband provider?</h2>
						<div class="col-md-6 col-md-offset-3">
							<p>
								There are many options when it comes to choosing a fibre plan. Check out the sites below to compare a 
								range of plans and pricing.
							</p>
						</div>
						<div class="col-md-12">
							<div class="ordering-fibre-link-container">
								<a title="Glimp.co.nz" 
									class="btn btn-standard" 
									href="https://www.glimp.co.nz/"
									target="_blank">
									Glimp.co.nz
								</a>
								<a title="Broadbandcompare.co.nz" 
									class="btn btn-standard" 
									href="https://www.broadbandcompare.co.nz/"
									target="_blank">
									Broadbandcompare.co.nz
								</a>
								<a title="Mycompare.co.nz" 
									class="btn btn-standard"
									href="https://www.mycompare.co.nz/"
									target="_blank">
									Mycompare.co.nz
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 ordering-fibre-item">
							<h2 class="subtitle-small">Top tips for ordering fibre</h2>
						<div class="col-md-6 col-md-offset-3">
							<p>
								The choices you make when ordering your new fibre plan can affect your online experience. Speed, data, 
								and the equipment you use will make the greatest difference. Click through for our tips on what to ask 
								your broadband provider when placing your order, or to work out what data plan you will need.
							</p>
						</div>
						<div class="col-md-12">
							<div class="ordering-fibre-link-container">
								<a title="Data calculator" 
									class="btn btn-standard" 
									href="https://www.askforbetter.co.nz/data-usage-calculator/">
									Data calculator
								</a>
								<a title="Things to ask your provider" 
									class="btn btn-standard" 
									href="https://www.askforbetter.co.nz/top-tips-for-ordering-broadband"
									target="_blank">
									Things to ask your provider
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Ordering Fibre END -->

		<!-- 7 Ways Section -->
		<div class="row">
			<a class="anchor" id="fibre-tips"></a>
			<div class="container-fluid fibre-7-ways-best">
				<div class="row no-transition">
					<div class="col-sm-12">
						<h2>7 ways to get the best out of your fibre</h2>
					</div>
					<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 fibre-7-ways-item-container">
						<div class="media">
							<div class="media-left fibre-7-ways-item">
									<img src="{$ThemeDir}/images/fibre-best-1.png">
							</div>
							<div class="media-body">
									<p>
										Opt for <a class="text-underline text-bold" href="https://blog.chorus.co.nz/the-case-for-100mbps-or-more/" target="_blank">at least 100Mbps</a> with unlimited data so you 
										can do more, and do it faster. Go for the Gig if you want the best.
									</p>
							</div>
						</div>
					</div>
					<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 fibre-7-ways-item-container">
						<div class="media">
							<div class="media-left fibre-7-ways-item">
									<img src="{$ThemeDir}/images/fibre-best-2.png">
							</div>
							<div class="media-body">
								<p>
									Make sure your <a class="text-underline text-bold" href="https://blog.chorus.co.nz/get-the-best-out-of-your-fibre-broadband/" target="_blank">ONT is installed</a> in a location where 
									you use the internet the most - your modem will plug into it making this important for WiFi.
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 fibre-7-ways-item-container">
						<div class="media">
							<div class="media-left fibre-7-ways-item">
									<img src="{$ThemeDir}/images/fibre-best-3.png">
							</div>
							<div class="media-body">
								<p>
									Not all modems are created equal so, if within your means, <a class="text-underline text-bold" href="https://blog.chorus.co.nz/tips-for-the-ultimate-wifi-set-up/" target="_blank">
									upgrade your modem</a> for faster speeds and better WiFi coverage.
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 fibre-7-ways-item-container">
						<div class="media">
							<div class="media-left fibre-7-ways-item">
									<img src="{$ThemeDir}/images/fibre-best-4.png">
							</div>
							<div class="media-body">
								<p>
									Plug data hungry devices like smart TVs into the modem with an Ethernet cable to free up your WiFi 
									for the devices that need it.
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 fibre-7-ways-item-container">
						<div class="media">
							<div class="media-left fibre-7-ways-item">
									<img src="{$ThemeDir}/images/fibre-best-5.png">
							</div>
							<div class="media-body">
								<p>
									If you don’t have a smart TV, you don’t need to miss out. <a class="text-underline text-bold" href="https://blog.chorus.co.nz/three-ways-to-make-your-tv-smarter/" target="_blank">
									Make it smart</a> using one of the many gadgets available.
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 fibre-7-ways-item-container">
						<div class="media">
							<div class="media-left fibre-7-ways-item">
									<img src="{$ThemeDir}/images/fibre-best-6.png">
							</div>
							<div class="media-body">
								<p>
									Make sure your WiFi signal is at its strongest by putting your modem somewhere you can see it.
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 fibre-7-ways-item-container">
						<div class="media">
							<div class="media-left fibre-7-ways-item">
									<img src="{$ThemeDir}/images/fibre-best-7.png">
							</div>
							<div class="media-body">
								<p>
									Sometimes your WiFi needs a little help to get to all corners of your house. 
									<a class="text-underline text-bold" href="https://blog.chorus.co.nz/internet-sluggish-boost-your-wifi/" target="_blank">WiFi mesh systems</a> 
									can help turbo charge your WiFi.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 7 Ways END -->

		<!-- Common Fibre Questions Section -->
		<div class="row">
			<div class="container fibre-questions">
				<div class="row">
					<div class="col-lg-12 text-center">
							<h2 class="subtitle">Common fibre questions</h2>
						<p>See answers to common questions below.</p>
					</div>
					<div class="col-md-8 col-md-offset-2 fibre-questions-link-container">
						<a title="How do I get fibre?" 
							class="btn btn-standard"
							href="https://www.chorus.co.nz/help-and-support/fibre-explained/how-do-i-order-fibre"
							target="_blank">
							How do I get fibre?
						</a>
						<a title="Should I get fibre?" 
							class="btn btn-standard"
							href="https://www.chorus.co.nz/help-and-support/fibre-explained/what-fibre"
							target="_blank">
							Should I get fibre?
						</a>
						<a title="What is the ABC installation process?" 
							class="btn btn-standard"
							href="https://www.chorus.co.nz/help-and-support/fibre-explained/what-abc-installation-process"
							target="_blank">
							What is the ABC installation process?
						</a>
					</div>
					<div class="col-md-12 fibre-questions-link-container">
						<h5>Still have questions?</h5>
						<a title="Help and support" class="btn btn-standard" href="https://www.chorus.co.nz/help-and-support" target="_blank">Help and support</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Common Fibre Questions END -->
		</div>
	</main>

<% include Footer %>
</div>
