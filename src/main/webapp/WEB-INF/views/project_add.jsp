<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Project Manager</title>

	<link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.min.css"/>" type="text/css" />
	<link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-select.min.css"/>" type="text/css" />
	<link rel="stylesheet" href="<spring:url value="/resources/css/global.css"/>" type="text/css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="<spring:url value="/resources/js/bootstrap.min.js"/>"></script>
	<script src="<spring:url value="/resources/js/bootstrap-select.min.js"/>"></script>

</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<div class="container">
		<div class="row">
			<spring:url value="/project/add" var="formUrl"/>
			<form:form action="${formUrl}" method="POST" modelAttribute="project" cssClass="col-md-8 col-md-offset-2">
			
				<div class="form-group">
					<label for="project-name">Project Name</label>
					<form:input id="project-name" path="name" cssClass="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="project-type">Type</label>
					<form:select path="type" items="${types}" cssClass="selectpicker"></form:select>
				</div>
				
				<div class="form-group">
					<label for="year">Year</label>
					<form:input id="year" path="year" cssClass="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="sponsor-name">Sponsor Name</label>
					<form:input id="sponsor-name" cssClass="form-control" path="sponsor.name"/>
				</div>
				
				<div class="form-group">
					<label for="sponsor-phone">Sponsor Phone</label>
					<form:input id="sponsor" cssClass="form-control" path="sponsor.phone"/>
				</div>
				
				<div class="form-group">
					<label for="sponsor-email">Sponsor Email</label>
					<form:input id="sponsor-email" cssClass="form-control" path="sponsor.email"/>
				</div>
				
				<div class="form-group">
					<label for="funds">Authorized Funds</label>
					<form:input id="funds" path="authorizedFunds" cssClass="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="hours">Authorized Hours</label>
					<form:input id="hours" path="authorizedHours" cssClass="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="project-name">Descriptions</label>
					<form:textarea id="description" path="description" cssClass="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="poc">POC</label>
					<form:input id="poc" cssClass="form-control" path="pointOfContact[0]"/>
				</div>
				
				<div class="form-group">
					<label for="poc2">POC2</label>
					<form:input id="poc2" cssClass="form-control" path="pointOfContact[1]"/>
				</div>
				
				<div class="form-group">
					<label for="poc3">POC3</label>
					<form:input id="poc3" cssClass="form-control" path="pointOfContact[2]"/>
				</div>
				
				<div class="form-group">
					<label for="special">Special</label>
					<form:checkbox id="special" path="special"/>
				</div>
				
				<button type="submit" class="btn btn-default">Submit</button>
			</form:form>
		</div>
	</div>

</body>
</html>