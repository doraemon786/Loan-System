<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Apply Loan</title>

<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>
	<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
		<div class="wrapper wrapper--w680">
			<div class="card card-4">
				<div class="card-body">
					<h2 class="title">Details For Loan Application</h2>
					<form:form method="POST" modelAttribute="loandetails"
						action="${contextPath}/loandetailsubmit" class="form-signin">
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">ADHAR NUMBER</label>
									<spring:bind path="aadharNumber">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:input class="input--style-4" type="text"
												path="aadharNumber" placeholder="" autofocus="true"></form:input>
											<form:errors path="aadharNumber"></form:errors>
										</div>
									</spring:bind>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">LOAN AMOUNT</label>
									<spring:bind path="loanAmt">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:input type="text" path="loanAmt" class="input--style-4"
												placeholder="" autofocus="true"></form:input>
											<form:errors path="loanAmt"></form:errors>
										</div>
									</spring:bind>
								</div>
							</div>
						</div>
						<!--  <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Birthday</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4 js-datepicker" type="text" name="birthday">
                                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <input type="radio" checked="checked" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                            <input type="radio" name="gender">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div> -->
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">LOAN PERIOD</label>
									<spring:bind path="loanPeriod">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:input type="text" path="loanPeriod"
												class="input--style-4" placeholder="" autofocus="true"></form:input>
											<form:errors path="loanPeriod"></form:errors>
										</div>
									</spring:bind>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">INTEREST RATE</label>
									<spring:bind path="interestRate">
										<div class="form-group ${status.error ? 'has-error' : ''}">
											<form:input type="text" path="interestRate"
												class="input--style-4" placeholder="" autofocus="true"></form:input>
											<form:errors path="interestRate"></form:errors>
										</div>
									</spring:bind>
								</div>
							</div>

							<!-- <textarea name="message" rows="3" cols="5">ADDRESS AND PINCODE</textarea> -->
						</div>
						<label class="label" for="message"> ADDRESS WITH PINCODE</label>
						<div class="wrap-input100 validate-input">
							<spring:bind path="address">
								<div class="form-group ${status.error ? 'has-error' : ''}">
									<form:input type="text" path="address" class="input--style-4"
										placeholder="" autofocus="true"></form:input>
									<form:errors path="address"></form:errors>
								</div>
							</spring:bind>
							<span class="focus-input100"></span>
						</div>

						<div class="input-group">
							<label class="label">LOAN TYPE</label>
							<div class="rs-select2 js-select-simple select--no-search">
								<spring:bind path="loanType">
									<div class="form-group ${status.error ? 'has-error' : ''}">
										<form:select path="loanType" class="form-control"
											autofocus="true">
											<option disabled="disabled" selected="selected">Which
												Type of Loan Needed</option>
											<form:option value="Personal Loan" label="Personal Loan" />
											<form:option value="Auto/Vehicle Loan"
												label="Auto/Vehicle Loan" />
											<form:option value="Home Loan" label="Home Loan" />
											<form:option value="Education Loan" label="Education Loan" />
											<form:option value="Property Loan" label="Property Loan" />
										</form:select>
										<form:errors path="loanType"></form:errors>
									</div>
								</spring:bind>
								<div class="select-dropdown"></div>
							</div>
						</div>




						<div class="p-t-15">
							<button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>

	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->