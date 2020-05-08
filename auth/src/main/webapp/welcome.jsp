<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<title>Home</title>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<!-- plugins:css -->
<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet"
	href="assets/vendors/jvectormap/jquery-jvectormap.css">
<!-- End plugin css for this page -->
<!-- Layout styles -->
<link rel="stylesheet" href="assets/css/demo/style.css">
<!-- End layout styles -->
<link rel="shortcut icon" href="assets/images/favicon.png" />
</head>
<body>
	<script src="assets/js/preloader.js"></script>
	<div class="body-wrapper">
		<!-- partial:partials/_sidebar.html -->
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
			<!-- partial:partials/_navbar.html -->
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
			<div class="page-wrapper mdc-toolbar-fixed-adjust">
				<!-- <main class="content-wrapper">
					<div class="mdc-layout-grid">
						<div class="mdc-layout-grid__inner">
							<div
								class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-3-desktop mdc-layout-grid__cell--span-4-tablet">
								<div class="mdc-card info-card info-card--success">
									<div class="card-inner">
										
										<h5 class="font-weight-light pb-2 mb-1 border-bottom"></h5> -->
				<!-- <p class="tx-12 text-muted">48% target reached</p>
                    <div class="card-icon-wrapper">
                      <i class="material-icons">dvr</i>
                    </div> -->
				<!-- 		</div>
								</div>
							</div>
						



						</div>
					</div>
				</main> -->
				<h5 class="card-title">
					<!-- EMI Calculator Widget START -->
					<script
						src="https://emicalculator.net/widget/2.0/js/emicalc-loader.min.js"
						type="text/javascript"></script>
					<div id="ecww-widgetwrapper" style="min-width: 250px; width: 100%;">
						<div id="ecww-widget"
							style="position: relative; padding-top: 0; padding-bottom: 280px; height: 0; overflow: hidden;"></div>
						<div id="ecww-more"
							style="background: #333; font: normal 13px/1 Helvetica, Arial, Verdana, Sans-serif; padding: 10px 0; color: #FFF; text-align: center; width: 100%; clear: both; margin: 0; clear: both; float: left;">
							<a
								style="background: #333; color: #FFF; text-decoration: none; border-bottom: 1px dotted #ccc;"
								href="https://emicalculator.net/" title="Loan EMI Calculator"
								rel="nofollow" target="_blank"></a>
						</div>
					</div>
					<!-- EMI Calculator Widget END -->
				</h5>
				<!-- partial:partials/_footer.html -->
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
	<script src="vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<script src="assets/vendors/chartjs/Chart.min.js"></script>
	<script src="assets/vendors/jvectormap/jquery-jvectormap.min.js"></script>
	<script
		src="assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="assets/js/material.js"></script>
	<script src="assets/js/misc.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="assets/js/dashboard.js"></script>
	<!-- End custom js for this page-->
</body>
</html>
