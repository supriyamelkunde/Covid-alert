package pack;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class user_login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String username ,password;
		username=request.getParameter("name");
		password=request.getParameter("password");
		
				
		System.out.println(username);
    	 System.out.println(password);
        
        try{  
        	 Class.forName("com.mysql.jdbc.Driver");
             Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
                
       
            
        	PreparedStatement ps=con.prepareStatement("select * from user where username=? and password=?");  
        			ps.setString(1,username);  
        			ps.setString(2,password);
        			ResultSet rs=ps.executeQuery();  
        			  
        			
            if(rs.next()) 
            {
            	 
              response.sendRedirect("user_home.jsp");   

               
            }
            else
            {
            	 response.sendRedirect("userLogin.jsp");    
            	
            }
             
                    }
            catch(SQLException e)
            {
               e.printStackTrace();
            } catch (ClassNotFoundException e) {
			
				e.printStackTrace();
			}
            
          
	}
}