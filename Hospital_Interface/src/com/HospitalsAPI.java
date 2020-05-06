package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

/**
 * Servlet implementation class HospitalsAPI
 */





@WebServlet("/HospitalsAPI")
public class HospitalsAPI extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	Hospital hospitalObj = new Hospital();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HospitalsAPI() 
    {
        super();
        // TODO Auto-generated constructor stub
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//NOT USED
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
		String output = hospitalObj.insertHospital(request.getParameter("hospital_Name"),
									 request.getParameter("hospital_Address"),
									 request.getParameter("hospital_ContactNo"),
									 request.getParameter("hospital_Email"),
									 request.getParameter("hospital_Details"),
									 request.getParameter("hospital_Charge"), 
									 request.getParameter("hospital_Username"),
									 request.getParameter("hospital_Password"));
				 
				 					response.getWriter().write(output); 
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	
	
	// Convert request parameters to a Map
	private static Map getParasMap(HttpServletRequest request)
	{
			 Map<String, String> map = new HashMap<String, String>();
			 	try
			 {
					 Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
					 String queryString = scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
					 scanner.close();
					 
					 String[] params = queryString.split("&");
					 
					 for (String param : params)
					 { 
						String[] p = param.split("=");
						 map.put(p[0], p[1]);
					 }
			 }
				catch (Exception e)
			 {
					
			 }
			return map;
	}

	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			Map paras = getParasMap(request);
			
			String output = hospitalObj.updateHospital(paras.get("hidHospitalIDSave").toString(),
									 paras.get("hospital_Name").toString().replace("+", " "),
									 paras.get("hospital_Address").toString().replace("+", " ").replace("%2C",","),
									 paras.get("hospital_ContactNo").toString(),
									 paras.get("hospital_Email").toString().replace("%40", "@"),
									 paras.get("hospital_Details").toString().replace("+", " ").replace("%2C",",").replace("%0D%0A"," ").replace("%25", "%"),
									 paras.get("hospital_Charge").toString(),
									 paras.get("hospital_Username").toString().replace("+", " "),
									 paras.get("hospital_Password").toString().replace("%40","@").replace("%24","$"));
					
			response.getWriter().write(output); 
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);
		 
		String output = hospitalObj.deleteHospital(paras.get("hospital_Id").toString());
		
		response.getWriter().write(output); 
	}

}
