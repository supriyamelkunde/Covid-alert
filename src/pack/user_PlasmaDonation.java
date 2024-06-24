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

public class user_PlasmaDonation extends HttpServlet{

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String firstName,lastName ,blood,age,rdate,pincode,city,status,c_no;
		firstName=request.getParameter("firstName");
		lastName=request.getParameter("lastName");
		blood=request.getParameter("blood");
		age=request.getParameter("age");
		status=request.getParameter("status");
		System.out.print(status);
		rdate=request.getParameter("rdate");
		pincode=request.getParameter("pincode");
		city=request.getParameter("city");
		c_no=request.getParameter("c_no");
		
		System.out.print(c_no);
	        try{  
	        	 Class.forName("com.mysql.jdbc.Driver");
	             Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
	                
	            PreparedStatement ps=conn.prepareStatement("INSERT INTO plasma_donation(firstName,lastName,blood,age,rdate,pincode,city,status,c_no) VALUES (?,?,?,?,?,?,?,?,?)");  
	            ps.setString(1,firstName);  
	            ps.setString(2,lastName);  
	            ps.setString(3,blood);  
	            ps.setString(4,age);  
	            ps.setString(5,rdate);  
	            ps.setString(6,pincode); 
	            ps.setString(7,city);
	            ps.setString(8,status);
	            ps.setString(9,c_no);
	            
	           int sta=ps.executeUpdate();  
	           if(sta>0)
	           {   
	               response.sendRedirect("user_sucess.jsp"); 
	               
	           }else
	           {  
	        	   response.sendRedirect("Essential_Item.jsp"); 
	           }  
	        }catch (Exception e) {
				out.println(e.getMessage());
			}       
	           out.close();  
	}

}