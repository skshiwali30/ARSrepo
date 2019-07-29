<!-- DataTable Bootstrap Script -->
<script src="${js}/angular.js"></script>

<!-- DataTable Bootstrap Script -->
<div class="container">

	<div class="row">
		<br> <br> <br>

		<div class="col-md-12">

			<div class="row carousel-holder">

				<div class="col-md-12">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
							<li data-target="#carousel-example-generic" data-slide-to="3"></li>
						</ol>
						<div class="carousel-inner">

							<div class="item active">
								<img class="slide-image" src="${images}/banner01.jpg" alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/banner02.jpg" alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/banner01.jpg" alt="">
							</div>
							<div class="item">
								<img class="slide-image" src="${images}/banner02.jpg" alt="">
							</div>
						</div>
						<a class="left carousel-control" href="#carousel-example-generic"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span>
						</a>
					</div>
				</div>

			</div>
		</div>


		<div>
			<!-- content -->
			<section id="content" style="margin-left: 1em;">
				<article class="col1">
					<div class="pad_1">
						<h2>Your Flight Planner</h2>
						<form id="form_1" action="" method="post">
							<div class="wrapper pad_bot1">
								<br>
								<div class="radio marg_right1" style="margin-left: 20px">
									<input type="radio" name="name1">Round Trip<br> <input
										type="radio" name="name1">One Way
								</div>
								<div class="radio" style="margin-top: 9px">
									<input type="radio" name="name1">Empty-Leg<br> <input
										type="radio" name="name1">Multi-Leg
								</div>
							</div>
							<div class="wrapper">
								Leaving From:
								<div class="bg">
									<input type="text" class="input input1"
										value="Enter City or Airport Code"
										onblur="if(this.value=='') this.value='Enter City or Airport Code'"
										onFocus="if(this.value =='Enter City or Airport Code' ) this.value=''">
								</div>
							</div>
							<div class="wrapper">
								Going To:
								<div class="bg">
									<input type="text" class="input input1"
										value="Enter City or Airport Code"
										onblur="if(this.value=='') this.value='Enter City or Airport Code'"
										onFocus="if(this.value =='Enter City or Airport Code' ) this.value=''">
								</div>
							</div>
							<div class="wrapper">
								Departure Date and Time:
								<div class="wrapper">
									<div class="bg left">
										<input type="text" class="input input2" value="mm/dd/yyyy "
											onblur="if(this.value=='') this.value='mm/dd/yyyy '"
											onFocus="if(this.value =='mm/dd/yyyy ' ) this.value=''">
									</div>
									<div class="bg right">
										<input type="text" class="input input2" value="12:00am"
											onblur="if(this.value=='') this.value='12:00am'"
											onFocus="if(this.value =='12:00am' ) this.value=''">
									</div>
								</div>
							</div>
							<div class="wrapper">
								Return Date and Time:
								<div class="wrapper">
									<div class="bg left">
										<input type="text" class="input input2" value="mm/dd/yyyy "
											onblur="if(this.value=='') this.value='mm/dd/yyyy '"
											onFocus="if(this.value =='mm/dd/yyyy ' ) this.value=''">
									</div>
									<div class="bg right">
										<input type="text" class="input input2" value="12:00am"
											onblur="if(this.value=='') this.value='12:00am'"
											onFocus="if(this.value =='12:00am' ) this.value=''">
									</div>
								</div>
							</div>
							<div class="wrapper">
								<p>Passenger(s):</p>
								<div class="bg left">
									<input type="text" class="input input2" value="# passengers"
										onblur="if(this.value=='') this.value='# passengers'"
										onFocus="if(this.value =='# passengers' ) this.value=''">
								</div>
								<a href="${contextRoot}/show/all/flights" class="button2"
									onClick="document.getElementById('form_1').submit()">go!</a>
							</div>
						</form>
						<h2>Recent News</h2>
						<p class="under">
							<a href="#" class="link1">Nemo enim ipsam voluptatem quia</a><br>November
							5, 2019
						</p>
						<p class="under">
							<a href="#" class="link1">Voluptas aspernatur autoditaut
								fjugit</a><br>November 1, 2019
						</p>
						<p>
							<a href="#" class="link1">Sed quia consequuntur magni</a><br>October
							23, 2019
						</p>
					</div>
				</article>
				<article class="col2 pad_left1">
					<h1>Welcome to our Website!</h1>
					<br> <br>
					<p class="color1"><strong>Until you spread your wings you have no idea how far you will fly.</strong></p>
					<br>


					<div class="marker">
						<div class="wrapper">
							<p class="pad_bot2">
								<strong>Domestic Airlines in India</strong>
							</p>
							<p class="pad_bot2">Along with the average Indian ambition,
								air travel has also soared to new heights in recent times. Local
								airlines have taken to the skies, while airline prices have
								decreased, making air travel attractive to people. There was
								more than 20% increase in air travel passengers in 2016. This
								can be explained by a boom in cheap airline flights,
								accommodative airline schedules, attractive airline ticket
								deals, and ease in the booking system. Passengers now also find
								it easy to compare airline tickets online, assuring them of the
								best possible deals. Low-cost airlines have played a huge part
								in the rise in number of Indian flyers.</p>
						</div>
					</div>

					<div class="marker">
						<div class="wrapper">
							<p class="pad_bot2">
								<strong>List of Domestic Airlines in India</strong>
							</p>
							<p class="pad_bot2">The most important factor for Indians,
								before choosing an air carrier, is finding cheap airline
								flights. Other parameters include leg room and flight
								punctuality. MakeMyTrip brings you a list of airlines in India
								to help you choose the best airline tickets.</p>
							<br>
							<p>
								<strong>Air India -</strong> No Indian airlines list is complete
								without Air India. It is a state owned enterprise and offers
								both domestic and international operations. Its symbol
								‘Maharaja’ is a sign of Indian hospitality.
							</p>
							<br>
							<p>
								<strong>Indigo -</strong> Indigo is one of the fastest growing
								of all airlines in India. Headquartered in Gurgaon, India, it is
								the largest airline in India, in terms of the passengers
								carried. It offers low fares, on-time arrivals, and a
								hassle-free flight and booking experience. It promises great
								value for money.
							</p>
							<br>
							<p>
								<strong>Spicejet -</strong> Starting its operations in 2005, it
								is one of the cheapest domestic airlines. A popular low-cost
								carrier, its tagline “Flying for everyone” sums up its
								philosophy. It has primary hubs in airports in New Delhi and
								Hyderabad.
							</p>
							<br>
							<p>
								<strong>Vistara -</strong> Recently formed in 2015, it is a
								joint venture between Tata Sons and Singapore Airlines. It
								offers the best of both worlds, with great hospitality and
								affordable airline rates. Its name signifies infinite expanse,
								and the desire to push all boundaries to be the best airline
								flights and air travel.
							</p>
							<br>
							<p>
								<strong>GoAir -</strong> GoAir flights are famous for their
								efficiency and offering state of the art services at the minimum
								cost. If you want great Indian airlines offers and cheap airline
								tickets, then look no further. Its network spans prominent
								business and leisure spots in India.
							</p>
							<br>
							<p>
								<strong>JetAirways -</strong> Based in Mumbai, it is one of the
								earliest additions to the list of airlines. It was formed in
								1992, and is now the second largest carrier in India. It is best
								known for its flight punctuality. It is the most on-time
								airlines of India.
							</p>
							<br>
							<p>ARS user friendly navigation helps you find cheap airline
								tickets; in addition to features such as checking PNR status,
								airfare calendars, price comparison tools, etc. Come, fly high
								with us!</p>
						</div>
					</div>

					<div class="wrapper">
						<article class="cols">
							<br>
							<h1>Our Clients</h1>
							<br><br>
							<p>The Air Traffic Incident Co-ordination and Communication
								Cell (ATICCC) provides a focal point for communication between
								airlines, airports, ATC organisation and media, via structured
								teleconferences, the NATS Customer Gateway website, emails and
								text messages. ATICCC has been activated during major events
								such as the 2012 Olympics and at times of crisis affecting UK
								and Irish airspace such as the Icelandic volcanic eruptions in
								2010.</p>
						</article>
						<div class="box1">
							<div class="pad_1">
								<div class="wrapper">
									<p class="pad_bot2">
										<q>Once you have tasted flight, you will forever walk the
											earth with your eyes turned skyward, for there you have been,
											and there you will always long to return.</q>
									</p>
									<p>
										<span class="right">Leonardo da Vinci</span>&nbsp;<br>
									</p>
								</div>
							</div>
						</div>
					</div>
				</article>
			</section>
			<!-- / content -->
		</div>
	</div>
</div>
<!-- /.container -->
