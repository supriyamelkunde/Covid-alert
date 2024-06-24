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

public class user_register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String fname ,lname,username,password,age,cno,city,pincode,email ,answer,security;
		fname=request.getParameter("firstName");
		lname=request.getParameter("lastName");
		username=request.getParameter("username");
		password=request.getParameter("password");
		age=request.getParameter("age");
		cno=request.getParameter("cno");
		city=request.getParameter("city");
		pincode=request.getParameter("pincode");
		email=request.getParameter("email");
		security=request.getParameter("security");
		answer=request.getParameter("answer");
		
		Connection con=null;  
	        try{  
	        	 Class.forName("com.mysql.jdbc.Driver");
	             Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
	                
	       
	            PreparedStatement ps=con1.prepareStatement("insert into user(username,firstName ,lastName,age,city,pincode,c_no,email,password,security,answer) values (?,?,?,?,?,?,?,?,?,?,?)");  
	            ps.setString(1,username); 
	            ps.setString(2,fname);  
	            ps.setString(3,lname);  
	            ps.setString(4,age);
	            ps.setString(5,city);  
	            ps.setString(6,pincode);
	            ps.setString(7,cno);  
	            ps.setString(8, email);
	            ps.setString(9,password); 
	            ps.setString(10,security);
	            ps.setString(11,answer);
	            
	           int status=ps.executeUpdate();  
	           if(status>0)
	           {   out.println("Record Save");
	               response.sendRedirect("userLogin.jsp");  
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