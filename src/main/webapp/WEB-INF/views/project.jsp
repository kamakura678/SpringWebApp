<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Project Manager</title>

	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css" />
	<link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap-select.min.css"/>" type="text/css" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="<spring:url value="/resources/js/bootstrap-select.min.js"/>"></script>

</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<div class="container">
		<div class="row">
			
			<div class="form-group">
				<label for="project-name">Project Name</label>
				<span>${project.name}</span>
			</div>
			
			<div class="form-group">
				<label for="project_type">Type</label>
				<span>${project.type}</span>
			</div>
			
			<div class="form-group">
				<label for="sponsor">Sponsor</label>
				<span>${project.sponsor}</span>
			</div>
			
			<div class="form-group">
				<label for="funds">Authorized Funds</label>
				<span>${project.authorizedFunds}</span>
			</div>
			
			<div class="form-group">
				<label for="hours">Authorized Hours</label>
				<span>${project.authorizedHours}</span>
			</div>
			
			<div class="form-group">
				<label for="project-name">Description</label>
				<span>${project.description}</span>
			</div>
			
			<div class="form-group">
				<label for="special">special</label>
				<span>${project.special == true ? 'Yes' : 'No'}</span>
			</div>
			
			<div class="form-group">
				<a href="<spring:url value="/project/find"/>">Back</a></td>
			</div>
			
		</div>
	</div>
	
</body>
</html>