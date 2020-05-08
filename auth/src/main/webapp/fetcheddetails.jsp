<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Material Dash</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- Layout styles -->
<link rel="stylesheet" href="assets/css/demo/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="assets/images/favicon.png" />
</head>
<body>
	<script src="assets/js/preloader.js"></script>
	<div class="body-wrapper">
		<!-- partial:../../partials/_sidebar.html -->
		<aside class="mdc-drawer mdc-drawer--dismissible mdc-drawer--open">
			<div class="mdc-drawer__header">
				<a href="index.html" class="brand-logo"> <img
					src="assets/images/logo.svg" alt="logo">
				</a>
			</div>
			<div class="mdc-drawer__content">
				<div class="user-info">
					<p class="name">${pageContext.request.userPrincipal.name}</p>

				</div>
				<div class="mdc-list-group">
					<nav class="mdc-list mdc-drawer-menu">
						<div class="mdc-list-item mdc-drawer-item">
							<a class="mdc-drawer-link" href="index.html"> <i
								class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon"
								aria-hidden="true">home</i>

								<form method="get" action="${contextPath}/applyLoan">
									<button type="submit" class="btn btn-success">Apply
										Loan</button>
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
								</form>
							</a>
						</div>



						<div class="mdc-list-item mdc-drawer-item">
							<a class="mdc-drawer-link" href="pages/tables/basic-tables.html">
								<i
								class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon"
								aria-hidden="true">grid_on</i>
								<form method="get" action="${contextPath}/fetch">
									<button type="submit" class="btn btn-success">Application
										Status</button>
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
								</form>
							</a>
						</div>



					</nav>
				</div>


			</div>
		</aside>
		<!-- partial -->
		<div class="main-wrapper mdc-drawer-app-content">
			<!-- partial:../../partials/_navbar.html -->
			<header class="mdc-top-app-bar">
				<div class="mdc-top-app-bar__row">
					<div
						class="mdc-top-app-bar__section mdc-top-app-bar__section--align-start">
						<button
							class="material-icons mdc-top-app-bar__navigation-icon mdc-icon-button sidebar-toggler">menu</button>
						<span class="mdc-top-app-bar__title">Greetings
							${pageContext.request.userPrincipal.name}!</span>

					</div>
					<div
						class="mdc-top-app-bar__section mdc-top-app-bar__section--align-end mdc-top-app-bar__section-right">
						<div class="menu-button-container menu-profile d-none d-md-block">
							<button class="mdc-button mdc-menu-button">
								<span class="d-flex align-items-center"> <c:if
										test="${pageContext.request.userPrincipal.name != null}">
										<form id="logoutForm" method="POST"
											action="${contextPath}/logout">
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}" />
										</form>

										<h2>
											<a onclick="document.forms['logoutForm'].submit()">Logout</a>
										</h2>

									</c:if>
								</span>
							</button>




						</div>
					</div>
			</header>
			<!-- partial -->

			<div
				class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-12">
				<div class="mdc-card p-0">
					<h6 class="card-title card-padding pb-0">Applicant Table</h6>
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>
								<th>Loan Id</th>
									<th>User Name</th>
									<th>Aadhar Number</th>
									<th>Loan Amount</th>
									<th>Loan Period</th>
									<th>Address</th>
									<th>LoanType</th>
									<th>Intrest Rate</th>
									<th>Approval</th>
									<!-- <th>Iron (%)</th>
 -->
								</tr>
							</thead>
							<tbody>



								<c:forEach items="${applicationScope.Loanlist}" var="Loanlist">
									<tr><td>${Loanlist[0].loanid}</td>
										<td>${Loanlist[0].username}</td>
										<td>${Loanlist[0].aadharNumber}</td>
										<td>${Loanlist[0].loanAmt}</td>
										<td>${Loanlist[0].loanPeriod}</td>
										<td>${Loanlist[0].address}</td>
										<td>${Loanlist[0].loanType}</td>
										<td>${Loanlist[0].interestRate}%</td>
										<td>${Loanlist[0].status}</td>
										<td><td><a href="editemp/${Loanlist[0].loanid}">Edit</a></td> </td>

									</tr>
								</c:forEach>


							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>
	<!-- partial:../../partials/_footer.html -->
	<footer>
		<div class="mdc-layout-grid">
			<div class="mdc-layout-grid__inner">
				<div
					class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
					<span class="tx-14">Copyright © 2020 <a target="_blank">LoanApproval</a>.
						All rights reserved.
					</span>
				</div>

			</div>
		</div>
	</footer>
	<!-- partial -->
	</div>
	</div>
	</div>
	<!-- plugins:js -->
	<script src="assets/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="assets/js/material.js"></script>
	<script src="assets/js/misc.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<!-- End custom js for this page-->
</body>
</html>