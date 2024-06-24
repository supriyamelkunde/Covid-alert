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

public class user_VaccineRegister extends HttpServlet{

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String firstName,lastName ,blood,age,proof,c_no,pincode,city,sta;
		firstName=request.getParameter("firstName");
		lastName=request.getParameter("lastName");
		age=request.getParameter("age");
		city=request.getParameter("city");
		pincode=request.getParameter("pincode");
		c_no=request.getParameter("cno");
		proof=request.getParameter("proof");
		sta="Request";
		
	        try{  
	        	 Class.forName("com.mysql.jdbc.Driver");
	             Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
	                
	            PreparedStatement ps=conn.prepareStatement("INSERT INTO vaccine(firstName,lastName,age,city,pincode,c_no,status,Id_proof) VALUES (?,?,?,?,?,?,?,?)");  
	            ps.setString(1,firstName);  
	            ps.setString(2,lastName);  
	            ps.setString(3,age);  
	            ps.setString(4,city);  
	            ps.setString(5,pincode);  
	            ps.setString(6,c_no); 
	            ps.setString(7,sta);
	            ps.setString(8,proof);
	            
	           int status=ps.executeUpdate();  
	           if(status>0)
	           {   out.println("Record Save");
	               response.sendRedirect("user_home.jsp");  
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