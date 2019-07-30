<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<div class="container">

<c:choose>
		<c:when test="${not empty flight}">
			<div class="row">
			<!--  To display all the goods -->
			<div class="col-md-9">
				<div class="row">
				
					<div class="col-xs-12">
					<p class="text-center">Your Ticket confirmed. Please take print out.</p>
						<div>
							<h4 style="float: right; class="text-right">PNR Code - MR${flight.code}P{payment.id}/-</h4>
							<h3>${flight.code}</h3>
							<hr/>
							<h4>Source -${flight.source}</h4>
							<h4>Destination -${flight.destination}</h4>
							<h5>Fare - &#8377; ${flight.fare}/-</h5>							
						</div>						
						<hr/>
					</div>
				</div>
			</div>
	</div>
		</c:when>
		<c:otherwise>
			<div class="jumbotron">
				<h3 class="text-center">Your selected flight is not available!</h3>
			</div>
		</c:otherwise>
</c:choose>	
</div>
