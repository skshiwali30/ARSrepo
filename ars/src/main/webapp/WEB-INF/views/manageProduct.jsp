<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<div class="container">

	<hr />
	<h1>Available Flights</h1>
	<hr />

	<div class="row">
		<div class='col-xs-12'>
			<table id="productsTable"
				class="table table-condensed table-bordered">

				<thead>
					<tr>
						<th>Id</th>
						<th>Code</th>
						<th>Source</th>
						<th>Destination</th>
						<th>Departure Time</th>
						<th>Arrival Time</th>
						<th>Days</th>
						<th>NoOfSeats</th>
						<th>Fare</th>
						<th>Enable / Disable</th>
						<th>Edit</th>
					</tr>
				</thead>
			</table>
		</div>
	</div>

<br>
<br>
<br>
	<c:if test="${not empty message}">
		<div class="row">
			<div class="col-xs-12 col-md-offset-2 col-md-8">
				<div class="alert alert-info fade in">${message}</div>
			</div>
		</div>
	</c:if>

	<div class="row">
		<div class="col-md-offset-2 col-md-8">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4>Flight Management</h4>
				</div>
				<div class="panel-body">
					<sf:form class="form-horizontal" modelAttribute="flight"
						action="${contextRoot}/manage/flight" method="POST">
						
						<sf:input type="hidden" path="id" class="form-control" />

						<div class="form-group">
							<label class="control-label col-md-4">Flight Code</label>
							<div class="col-md-8">
								<sf:input type="text" path="code" class="form-control"
									placeholder="Flight Code" />
								<sf:errors path="code" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Source</label>
							<div class="col-md-8">
								<sf:input type="text" path="source" class="form-control"
									placeholder="Source" />
								<sf:errors path="source" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Destination</label>
							<div class="col-md-8">
								<sf:input type="text" path="destination" class="form-control"
									placeholder="Destination" />
								<sf:errors path="destination" cssClass="help-block" element="em" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-md-4">Departure Time</label>
							<div class="col-md-8">
								<sf:input path="departureTime" class="form-control"
									placeholder="Departure Time" />
								<sf:errors path="departureTime" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Arrival Time</label>
							<div class="col-md-8">
								<sf:input path="arrivalTime" class="form-control"
									placeholder="Arrival Time" />
								<sf:errors path="arrivalTime" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Days</label>
							<div class="col-md-8">
								<sf:input path="days" class="form-control"
									placeholder="Days" />
								<sf:errors path="days" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">noOfSeats</label>
							<div class="col-md-8">
								<sf:input type="number" path="noOfSeats" class="form-control"
									placeholder="Enter total seat" />
								<sf:errors path="noOfSeats" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-4">Fare</label>
							<div class="col-md-8">
								<sf:input type="number" path="fare" class="form-control"
									placeholder="Total amount"/>
								<sf:errors path="fare" cssClass="help-block" element="em" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-offset-4 col-md-4">
								<input type="submit" name="submit" value="Save"
									class="btn btn-primary" />
							</div>
						</div>
					</sf:form>
				</div>
			</div>
		</div>
	</div>
</div>