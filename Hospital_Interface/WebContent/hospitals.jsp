<%@page import="com.Hospital"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="Components/hospitals.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-6">	
			<h1>Hospital Management V10.1</h1>

				<form id="formHospital" name="formHospital" method="post" action="hospitals.jsp">
					<!-- Hospital Id:
					<input id="hospital_Id" name="hospital_Id" type="text" class="form-control form-control-sm"-->
					
					<br> Hospital name:
					<input id="hospital_Name" name="hospital_Name" type="text" class="form-control form-control-sm">
					
					 <br> Hospital address:
					<input id="hospital_Address" name="hospital_Address" type="text" class="form-control form-control-sm">
					
					 <br> Hospital ContactNo:
					<input id="hospital_ContactNo" name="hospital_ContactNo" type="text" class="form-control form-control-sm">
					
					 <br> Hospital Email:
					<input id="hospital_Email" name="hospital_Email" type="text" class="form-control form-control-sm">
					
					 <br> Hospital details:
					<input id="hospital_Details" name="hospital_Details" type="text" class="form-control form-control-sm">
					
					<br> Hospital Charge:
					<input id="hospital_Charge" name="hospital_Charge" type="text" class="form-control form-control-sm">
					
					 <br> Hospital User name:
					<input id="hospital_Username" name="hospital_Username" type="text" class="form-control form-control-sm">
					
					<br> Hospital Password:
					<input id="hospital_Password" name="hospital_Password" type="text" class="form-control form-control-sm">
					
					<br>
					<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">
					<input type="hidden" id="hidHospitalIDSave" name="hidHospitalIDSave" value="">
				</form>
	
			<div id = "alertSuccess" class="alert alert-success"></div>
			
			<div id="alertError" class="alert alert-danger"></div>
			
			<br>
			<div id="divHospitalsGrid">
			
			<%
				Hospital hospitalObj = new Hospital();
				out.print(hospitalObj.readHospitals());
			%>
			</div>
		</div>
	</div>	
</div>

</body>
</html>
