<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<h2>Please review the resource for Accouracy</h2>
			
			<div class="form-group">
				<label for="project-name">Name</label>
				<span>${resource.name}</span>
			</div>
			
			<div class="form-group">
				<label for="project_type">Type</label>
				<span>${resource.type}</span>
			</div>
			
			<div class="form-group">
				<label for="cost">Cost</label>
				<span>${resource.cost}</span>
			</div>
			
			<div class="form-group">
				<label for="unit">Unit Of Measure</label>
				<span>${resource.unitOfMeasure}</span>
			</div>
			
			<div class="form-group">
				<label for="indicators">Indicators</label>
				<c:forEach var="indicator" items="${resource.indicators}">
					<span>${indicator}</span>
				</c:forEach>
			</div>
			
			<a href="<spring:url value="/resource/add"/>" class="btn btn-default">Edit</a>
			<a href="<spring:url value="/resource/save"/>" class="btn btn-default">Save</a>
			
		</div>
	</div>
	
</body>
</html>