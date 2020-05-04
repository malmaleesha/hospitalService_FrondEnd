<%@page import="com.Hospital"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%

	//Initialize--------------------------------------
	session.setAttribute("statusMsg", "");
	System.out.println("Trying to process....");
	
	//Save---------------------------------
		if (request.getParameter("hospital_Id") != null)
		{
			 Hospital hospitalObj = new Hospital();
			 String stsMsg = "";
	//Insert--------------------------
		if (request.getParameter("hidHospitalIDSave") == "")
		 {
		 stsMsg = hospitalObj.insertHospital(
		 request.getParameter("hospital_Name"),
		 request.getParameter("hospital_Address"),
		 request.getParameter("hospital_ContactNo"),
		 request.getParameter("hospital_Email"),
		 request.getParameter("hospital_Details"),
		 request.getParameter("hospital_Charge"),
		 request.getParameter("hospital_Username"),
		 request.getParameter("hospital_Password"));
	 	}
		else
	//Update----------------------
		 {
		 stsMsg = hospitalObj.updateHospital(request.getParameter("hidHospitalIDSave"),
		 request.getParameter("hospital_Name"),
		 request.getParameter("hospital_Address"),
		 request.getParameter("hospital_ContactNo"),
		 request.getParameter("hospital_Email"),
		 request.getParameter("hospital_Details"),
		 request.getParameter("hospital_Charge"),
		 request.getParameter("hospital_Username"),
		 request.getParameter("hospital_Password"));
		 }
	 session.setAttribute("statusMsg", stsMsg);
	}
	//Delete-----------------------------
		if (request.getParameter("hidHospitalIDDelete") != null)
		{
		 Hospital hospitalObj = new Hospital();
		 String stsMsg =
		 hospitalObj.deleteHospital(request.getParameter("hidHospitalIDDelete"));
		 session.setAttribute("statusMsg", stsMsg);
		}
%>

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
<div class = "row">
	<div class="col-6">
			<h1>Hospital Management V9</h1>

				<form id="formHospital" name="formHospital" method="post" action="hospitals.jsp">
					 Hospital Id:
					<input id="hospital_Id" name="hospital_Id" type="text"
					 class="form-control form-control-sm">
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
	
			<div id = "alertSuccess" class="alert alert-success">
				<%
					out.print(session.getAttribute("StatusMag"));
				%>
			</div>
			
			<div id="alertError" class="alert alert-danger"></div>
			
			<br>
			
			<%
				Hospital hospitalObj = new Hospital();
				out.print(hospitalObj.readHospitals());
			%>
		</div>	
</div>

</body>
</html>
