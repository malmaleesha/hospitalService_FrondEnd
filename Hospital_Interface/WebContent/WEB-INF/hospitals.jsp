<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/hospitals.js"></script>
</head>
<body>

</body>
</html>






































<h1>Hospital Management V9</h1>

<form id="formHospital" name="formHospital" method="post" action="hospitals.jsp">
	 Hospital Id:
	<input id="hospitalId" name="hospitalId" type="text"
	 class="form-control form-control-sm">
	<br> Hospital name:
	<input id="hospitalName" name="hospitalName" type="text" class="form-control form-control-sm">
	
	 <br> Hospital address:
	<input id="hospitalAddress" name="hospitalAddress" type="text" class="form-control form-control-sm">
	
	 <br> Hospital ContactNo:
	<input id="hospitalContactNo" name="hospitalContactNo" type="text" class="form-control form-control-sm">
	
	 <br> Hospital Email:
	<input id="hospitalEmail" name="hospitalEmail" type="text" class="form-control form-control-sm">
	
	 <br> Hospital details:
	<input id="hospitalDetails" name="hospitalDetails" type="text" class="form-control form-control-sm">
	
	<br> Hospital Charge:
	<input id="hospitalCharge" name="hospitalCharge" type="text" class="form-control form-control-sm">
	
	 <br> Hospital User name:
	<input id="hospitalUsername" name="hospitalUsername" type="text" class="form-control form-control-sm">
	
	<br> Hospital Password:
	<input id="hospitalPassword" name="hospitalPassword" type="text" class="form-control form-control-sm">
	
	<br>
	<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
	<input type="hidden" id="hidHospitalIDSave" name="hidHospitalIDSave" value="">
</form>
