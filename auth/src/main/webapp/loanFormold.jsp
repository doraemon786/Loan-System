<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<jsp:include page="head_files.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="head_common.jsp" />
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				welcome to loan form

				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<form id="logoutForm" method="POST" action="${contextPath}/logout">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>

					<h2>
						Welcome ${pageContext.request.userPrincipal.name} | <a
							onclick="document.forms['logoutForm'].submit()">Logout</a>
					</h2>

				</c:if>
			</div>
		</div>
	</div>


	<!-- starting with form -->
	<form:form method="POST" modelAttribute="loandetails" action="${contextPath}/loandetailsubmit"
		class="form-signin" >
		<spring:bind path="aadharNumber">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<form:input type="text" path="aadharNumber" class="form-control"
					placeholder="aadharNumber" autofocus="true"></form:input>
				<form:errors path="aadharNumber"></form:errors>
			</div>
		</spring:bind>


		<spring:bind path="loanAmt">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<form:input type="text" path="loanAmt" class="form-control"
					placeholder="Loan Amount" autofocus="true"></form:input>
				<form:errors path="loanAmt"></form:errors>
			</div>
		</spring:bind>


		<spring:bind path="loanPeriod">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<form:input type="text" path="loanPeriod" class="form-control"
					placeholder="Loan Period" autofocus="true"></form:input>
				<form:errors path="loanPeriod"></form:errors>
			</div>
		</spring:bind>


		<spring:bind path="address">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<form:input type="text" path="address" class="form-control"
					placeholder="Address" autofocus="true"></form:input>
				<form:errors path="address"></form:errors>
			</div>
		</spring:bind>


		<spring:bind path="loanType">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<form:input type="text" path="loanType" class="form-control"
					placeholder="Loan Type" autofocus="true"></form:input>
				<form:errors path="loanType"></form:errors>
			</div>
		</spring:bind>


		<spring:bind path="interestRate">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<form:input type="text" path="interestRate" class="form-control"
					placeholder="Interest Rate" autofocus="true"></form:input>
				<form:errors path="interestRate"></form:errors>
			</div>
		</spring:bind>
		<button class="btn btn-primary btn-lg btn-block" type="submit">Submit</button>
	</form:form>
	<jsp:include page="footer.jsp" />

</body>
</html>