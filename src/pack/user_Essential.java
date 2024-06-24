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

public class user_Essential extends HttpServlet{

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String firstName,lastName,pincode,city,c_no,medicine,quantity,status;
		firstName=request.getParameter("firstName");
		lastName=request.getParameter("lastName");
		status=request.getParameter("status");
		c_no=request.getParameter("c_no");
		medicine=request.getParameter("medicine");
		quantity=request.getParameter("quantity");
		pincode=request.getParameter("pincode");
		city=request.getParameter("city");
		
		
	        try{  
	        	 Class.forName("com.mysql.jdbc.Driver");
	             Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
	                
	            PreparedStatement ps=conn.prepareStatement("INSERT INTO essential(firstName,lastName,c_no,status,medicine,quantity,pincode,city) VALUES (?,?,?,?,?,?,?,?)");  
	            ps.setString(1,firstName);  
	            ps.setString(2,lastName);  
	            ps.setString(3,c_no); 
	            ps.setString(4,status);
	            ps.setString(5,medicine);  
	            ps.setString(6,quantity);  
	            ps.setString(7,pincode); 
	            ps.setString(8,city);
	            
	           int sta=ps.executeUpdate();  
	           if(sta>0)
	           {  
	        	   response.sendRedirect("user_sucess.jsp"); 
	              
	           }else
	           {  
	        	   response.sendRedirect("user_home.jsp");  
	           }  
	        }catch (Exception e) {
				out.println(e.getMessage());
			}       
	           out.close();  
	}
}
