<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Project Manager</title>

<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>
	
	<div class="container">
		<div class="row">
			<form class="col-md-8 col-md-offset-2" action="<spring:url value="/project/add"/>" method="post">
				<div class="form-group">
					<label for="project-name">Project Name</label>
					<input type="text" id="project-name" class="form-control" name="name"/>
				</div>
				
				<div class="form-group">
					<label for="project-type">Type</label>
					<select name="type" class="selectpicker">
						<option></option>
						<option value="single">Single Year</option>
						<option value="multi">Multi Year</option>
					</select>
				</div>
				
				<div class="form-group">
					<label for="sponsor">Sponsor</label>
					<input type="text" id="sponsor" class="form-control" name="sponsor"/>
				</div>
				
				<div class="form-group">
					<label for="funds">Authorized Funds</label>
					<input type="text" id="funds" class="form-control" name="authorized_funds"/>
				</div>
				
				<div class="form-group">
					<label for="hours">Authorized Hours</label>
					<input type="text" id="hours" class="form-control" name="authorized_hours"/>
				</div>
				
				<div class="form-group">
					<label for="project-name">Descriptions</label>
					<textarea rows="3" class="form-control"></textarea>
				</div>
				
				<div class="form-group">
					<label for="special">Special</label>
					<input type="checkbox" id="special" name="special"/>
				</div>
				
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
		</div>
	</div>

</body>
</html>