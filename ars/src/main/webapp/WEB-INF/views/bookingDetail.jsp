<%-- <c:set var="availableCount" value="${userModel.cart.cartLines}" /> --%>
<br><br><br><br>
<div class="container">
	<c:choose>
		<c:when test="${not empty flight}">
			<table id="cart" class="table table-hover table-condensed">
			   	<thead>
					<tr>
						<th style="width:50%">Flight</th>
						<th style="width:10%"></th>
						<th style="width:10%"></th>
						<th style="width:10%"></th>
						<th style="width:10%">Fare</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td data-th="Product">
							<div class="row">
								<div class="col-sm-10">
									<h4 class="nomargin">${flight.code}</h4>
									<p>Source 		: ${flight.source} <br />
									   Destination 	: ${flight.destination}</p>
								</div>
							</div>
						</td>
						<td data-th="Price">&nbsp;</td>
						<td data-th="Quantity">
							&nbsp;
						</td>
						<td data-th="Subtotal" class="text-center"></td>
						<td class="actions" data-th="">&#8377; ${flight.fare} /- </td>
					</tr>
				</tbody>
				<tfoot>
					<tr class="visible-xs">
						<td class="text-center"><strong>Total &#8377; ${flight.fare}</strong></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td colspan="2" class="hidden-xs"></td>
						<td class="hidden-xs text-center"><strong>Total &#8377; ${flight.fare}/-</strong></td>
						
						
						<td><a href="${contextRoot}/booking/${flight.id}/pay" class="btn btn-success btn-block">Payment <span class="glyphicon glyphicon-chevron-right"></span></a></td>					
					</tr>
				</tfoot>
			</table>
		</c:when>
		<c:otherwise>
			<div class="jumbotron">
				<h3 class="text-center">Your selected flight is not available!</h3>
			</div>
		</c:otherwise>
	</c:choose>
</div>
