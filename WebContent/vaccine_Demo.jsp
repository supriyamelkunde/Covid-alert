<%@page import="javax.sound.midi.SysexMessage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@ include file="user_header.html" %>
<!DOCTYPE html>


<html>
<head>
<style>
input[type="text"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:30%;	
	border-radius: 25px;
	
}
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>  <center>
    <br> <h1>View Your Vaccination Request</h1>
    <center><form action="" method="get">
        <h4>Enter Your First Name</h4><input type="text" name="username" placeholder="Enter first name..........." required>
       <%  String username=request.getParameter("username");
       session.setAttribute("username",username);
       %>      
    </form> </center>   
    <hr>
    <hr>
  
    <table id="customers">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
            <th>Center Address</th>
            <th>Center Pincode</th>
            <th>Visit Date</th>
            <th>Visit Timing</th>
          
                      
        </tr>
        <tr>
            <%  
           String name=(String)session.getAttribute("username");
           // String name="Divya0517";
           //  System.out.print(name);
                try
                {
                	 Class.forName("com.mysql.jdbc.Driver");
                     Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
                    
                  
                                    
                  
                	  PreparedStatement ps=conn.prepareStatement("select * from vaccine where firstName like '%"+name+"%'");                     
                  
                  ResultSet rs=ps.executeQuery();
                  while(rs.next())
                  {
                      
            %>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(9)%></td>
            <td><%=rs.getDate(10)%></td>
            <td><%=rs.getInt(11)%></td>
           
                    
            </tr>
            <%
                  }
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                
            %>
       
    </table>
</center>
<br>
<br>
<br>

</body>
</html>