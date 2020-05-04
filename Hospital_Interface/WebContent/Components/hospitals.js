$(document).ready(function()
{
	if ($("#alertSuccess").text().trim() == "")
	 {
		$("#alertSuccess").hide();
	 }
	    $("#alertError").hide();
});

//SAVE ============================================
$(document).on("click", "#btnSave", function(event)
{
	event.preventDefault();
	// Clear alerts---------------------
		 $("#alertSuccess").text("");
		 $("#alertSuccess").hide();
		 $("#alertError").text("");
		 $("#alertError").hide(); 
		
	// Form validation-------------------
		var status = validateHospitalForm();
		if (status != true)
		 {
		 $("#alertError").text(status);
		 $("#alertError").show();
		 return;
	 }
	// If valid-------------------------
		$("#formHospital").submit();
});


//UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event)
{
	 $("#hidHospitalIDSave").val($(this).closest("tr").find('#hidHospitalIDUpdate').val());
	 $("#hospital_Id").val($(this).closest("tr").find('td:eq(0)').text());
	 $("#hospital_Name").val($(this).closest("tr").find('td:eq(1)').text());
	 $("#hospital_Address").val($(this).closest("tr").find('td:eq(2)').text());
	 $("#hospital_ContactNo").val($(this).closest("tr").find('td:eq(3)').text());
	 $("#hospital_Email").val($(this).closest("tr").find('td:eq(4)').text());
	 $("#hospital_Details").val($(this).closest("tr").find('td:eq(5)').text());
	 $("#hospital_Charge").val($(this).closest("tr").find('td:eq(6)').text());
	 $("#hospital_Username").val($(this).closest("tr").find('td:eq(7)').text());
	 $("#hospital_Password").val($(this).closest("tr").find('td:eq(8)').text());
});

function validateEmail(email) {
    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    console.log("Email from function");
    return re.test(String(email).toLowerCase());
}

//CLIENT-MODEL================================================================
function validateHospitalForm()
{
	// email type validation
	var tmpEmail = $("#hospital_Email").val().trim();
	console.log("Hospital email " + tmpEmail);
	 if (!validateEmail(tmpEmail))
	 {
		return "Email invalid!";
	 }
	 
	// CODE
	if ($("#hospital_Id").val().trim() == "")
	 {
		return "Insert Code.";
	 }
	
	// NAME
	if ($("#hospital_Name").val().trim() == "")
	 {
		return "Insert Hospital Name.";
	 }
	
	// ADDRESS
	if ($("#hospital_Address").val().trim() == "")
	 {
		return "Insert Hospital Address.";
	 }
	
	// CONTACT NO
	if ($("#hospital_ContactNo").val().trim() == "")
	 {
		return "Insert Hospital Contact no.";
	 }
	
//	// Contact no validation
//	 var tmpContactNo =$("#hospital_ContactNo").val().trim();
//	 if ($/^\d{10}$/.test(tmpContactNo))
//	 {
//		return "Insert valid contact No.";
//	 }
	 
	
	// Email
	if ($("#hospital_Email").val().trim() == "")
	 {
		return "Insert Hospital Email.";
	 }
	
	
	// Details------------------------
	if ($("#hospital_Details").val().trim() == "")
	 {
		return "Insert Hospital Details.";
	 }
	
	// CHARGE-------------------------------
	if ($("#hospital_Charge").val().trim() == "")
	 {
		return "Insert Hospital Charge.";
	 }
	
	// is numerical value
	var tmpCharge = $("#hospital_Charge").val().trim();
	if (!$.isNumeric(tmpCharge))
	 {
		return "Insert a numerical value for Hospital Charge.";
	 }
	
	// convert to decimal price
	 $("#hospital_Charge").val(parseFloat(tmpCharge).toFixed(2));
	 
	 
	// User name------------------------
	if ($("#hospital_Username").val().trim() == "")
	 {
		return "Insert Hospital Username.";
	 }
	
	// Password------------------------
	if ($("#hospital_Password").val().trim() == "")
	 {
		return "Insert Hospital Password.";
	 }
	
	
	return true;
}