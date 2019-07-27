<div class="container">
	<div class="row">
		<!-- Would be to display sidebar -->
		<div class="col-md-3">
			<%@include file="./shared/sidebar.jsp"%>
		</div>

		<!-- to display the actual products -->
		<div class="col-md-9">

			<!-- Added breadcrumb component -->
			<div class="row">

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
					
					<c:if test="${userClickCategoryFlights == true}">
						<script>
							window.categoryId = '${category.id}';
						</script>
					
						<ol class="breadcrumb">
							<li><a href="${contextRoot}/home">Home</a></li>
							<li class="active">Category</li>
							<li class="active">${category.name}</li>
						</ol>
					</c:if>
				</div>
			</div>
			
			<div class="row">
				<div class="col-xs-12">
					<table id="productListTable" class="table table-striped table-borderd">
						<thead>
							<tr>
								<th>F.Code</th>
								<th>Source</th>
								<th>Dest.</th>
								<th>Dep. Time</th>
								<th>Arr. Time</th>
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