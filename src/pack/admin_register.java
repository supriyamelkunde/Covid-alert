package pack;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class admin_register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String fname ,lname,username,password,cno ;
		fname=request.getParameter("firstName");
		password=request.getParameter("password");
		lname=request.getParameter("lastName");
		username=request.getParameter("username");
		cno=request.getParameter("cno");
		
		Connection con=null;  
	        try{  
	        	 Class.forName("com.mysql.jdbc.Driver");
	             Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
	             
	            PreparedStatement ps=con1.prepareStatement("insert into admin(fname ,lname,username,password,cno) values (?,?,?,?,?)");  
	            ps.setString(1,fname);  
	            ps.setString(2,lname);  
	            ps.setString(3,username);  
	            ps.setString(4,password);  
	            ps.setString(5,cno);
	            
	           int status=ps.executeUpdate();  
	           if(status>0)
	           {   out.println("Record Save");
	               response.sendRedirect("adminLogin.jsp");  
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
