<div class="container">
	<div class="row">
		
		<div class="col-md-12">

			<!-- Added breadcrumb component -->
			<div class="row">
				<br><br><br><br><br>
				<div class="col-lg-12">

					<c:if test="${userClickAllFlights == true}">
					
						<script>
							window.categoryId = '';
						</script>
					
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">All Flights</li>
						</ol>
					</c:if>
					
				</div>
			</div>
			
			<div class="row">
				<div class="col-xs-12">
					<table id="productListTable" class="table table-striped table-borderd">
						<thead>
							<tr>
								<th>Flight Code</th>
								<th>Source</th>
								<th>Destination</th>
								<th>Departure Time</th>
								<th>Arrival Time</th>
								<th>Days</th>
								<th>Fare</th>
								<th></th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
			
		</div>
	</div>
</div>