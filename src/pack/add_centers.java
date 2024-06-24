package pack;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class add_centers extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String pincode,city,address,location;
		pincode=request.getParameter("pincode");
		city=request.getParameter("city");
		address=request.getParameter("address");
		location=request.getParameter("location");
	
		
		Connection con=null;  
	        try{  
	        	 Class.forName("com.mysql.jdbc.Driver");
	             Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
	             
	            PreparedStatement ps=con1.prepareStatement("insert into centers(pincode,city,address,location) values (?,?,?,?)");  
	            ps.setString(1,pincode);  
	            ps.setString(2,city);  
	            ps.setString(3,address);  
	            ps.setString(4,location);  
	         
	            
	           int status=ps.executeUpdate();  
	           if(status>0)
	           {   out.println("Record Save");
	               response.sendRedirect("admin_home.jsp");  
	           }else
	           {  
	               out.println("Sorry! unable to save record");  
	           }  
	        }catch (Exception e) {
				out.println(e.getMessage());
			}       
	           out.close();  
	}

}
