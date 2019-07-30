<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<br><br><br><br><br>
<div class="container">

<c:choose>
		<c:when test="${not empty flight}">
			<div class="row">
			<!--  To display all the goods -->
			<div class="col-md-6">
				
				<div class="row">
					<div class="col-xs-12">
						
						<div>
							<h3>${flight.code}</h3>
							<hr/>
							<h4>Source -${flight.source}</h4>
							<h4>Destination -${flight.destination}</h4>
							<h5>Fare - &#8377; ${flight.fare}/-</h5>							
						</div>						
						<hr/>
						<div class="text-right">
							<h3>Total - &#8377; ${flight.fare}/-</h3>
						</div>						
					</div>
				</div>
				
				
			</div>
			
			<div class="col-md-6">
	            <div class="panel panel-default">
	                <div class="panel-heading">
	                    <h3 class="panel-title">
	                        Payment Details
	                    </h3>
	                </div>
	                <div class="panel-body">
	                
	                <sf:form class="form-horizontal" modelAttribute="payment" action="${contextRoot}/booking/payment" method="POST" >
	                    <!-- <form role="form"> -->
	                    <div class="form-group">
	                        <label for="cardNumber">
	                            CARD NUMBER</label>
	                        <div class="input-group">
	                            <!-- <input type="text" class="form-control" id="cardNumber" placeholder="Valid Card Number"
	                                required autofocus /> -->
	                             <sf:input type="text" path="creditCardNumber" class="form-control" id="cardNumber"
									placeholder="Valid Card Number"/>
								<sf:errors path="creditCardNumber" cssClass="help-block" element="em"/>
	                                
	                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-xs-7 col-md-7">
	                            <div class="form-group">
	                                <label for="expityMonth">EXPIRY DATE</label>
	                                <br/>
	                                <div class="col-xs-6 col-lg-6 pl-ziro">
	                                    <!-- <input type="text" class="form-control" id="expityMonth" placeholder="MM" required /> -->
	                                    
	                                    <sf:input type="text" path="expiryDateMM" class="form-control" id="expityMonth"
									placeholder="MM"/>
										<sf:errors path="expiryDateMM" cssClass="help-block" element="em"/>
	                                    
	                                </div>
	                                <div class="col-xs-6 col-lg-6 pl-ziro">
	                                    <!-- <input type="text" class="form-control" id="expityYear" placeholder="YY" required /> -->
	                                	<sf:input type="text" path="expiryDateYY" class="form-control" id="expityYear"
									placeholder="YY"/>
										<sf:errors path="expiryDateYY" cssClass="help-block" element="em"/>    
                                    </div>
	                                    
	                            </div>
	                        </div>
	                        <div class="col-xs-5 col-md-5 pull-right">
	                            <div class="form-group">
	                                <label for="cvCode">
	                                    CV CODE</label>
	                                <!-- <input type="password" class="form-control" id="cvCode" placeholder="CV" required /> -->
	                                <sf:input type="text" path="cvCode" id="cvCode" class="form-control"
									placeholder="CV"/>
										<sf:errors path="cvCode" cssClass="help-block" element="em"/>    
	                            </div>
	                        </div>
	                    </div>
	                    
	                    <sf:input type="hidden" path="flightId" value="${flight.id}"/>
	                    <sf:input type="hidden" path="finalPayment" value="${flight.fare}"/>
	                    <!-- </form> -->
	                    <input type="submit" name="submit" value="submit" class="btn btn-primary"/>
	                    </sf:form>
	                </div>
	            </div>
	            <ul class="nav nav-pills nav-stacked">
	                <li class="active"><a href="#"><span class="badge pull-right"> &#8377; ${flight.fare}/-</span> Final Payment</a></li>
	            </ul>
	            <br/>
	            <!-- <a href="#" class="btn btn-success btn-lg btn-block" role="button">Pay</a> -->
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
