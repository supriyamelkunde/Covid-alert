package pack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class view_YourVaccineRequest extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	        
	        out.println("<h1>view your vaccine request</h1>");  
	        String name=request.getParameter("firstname");
	      
	        try{  

	       	 Class.forName("com.mysql.jdbc.Driver");
	            Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
	             PreparedStatement ps=conn.prepareStatement("select * from vaccine where firstName='"+name+"'");
	       ResultSet rs=ps.executeQuery();
	            
	            out.print("<table border='1' width='100%' align='center'");  
		        out.print("<tr><th>Name</th><th>Password</th><th>Email</th><th>Country</th></tr>");  
		          
	         while(rs.next())
	         {
	        	 out.print("</tr><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getDate(10)+"</td><td>"+rs.getInt(11)+"</td></tr>");  
			     
	         }
	         out.print("</table>");
	        }catch (Exception e)
	        {
				out.println(e.getMessage());
			}       
	           out.close();  
      
	}

}