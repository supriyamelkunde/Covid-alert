<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file="user_header.html"%>
<html>
<head>
<style  type="text/css">
body {
    background: #74ebd5;
    background: -webkit-linear-gradient(to right, #74ebd5, #ACB6E5);
    background: linear-gradient(to right, #74ebd5, #ACB6E5);
    min-height: 100vh;

}



input[type="text"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:50%;	
	border-radius: 25px;
	margin-left:20%;
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
<body>
<br>

<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "covid";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>
<center>
<h1>Search Data</h1>
   <table id="customers">
<tr>
<th>Pincode</th>
<th>City</th>
<th>Address</th>
<th>Location</th>
</tr>
<%
String pincode=request.getParameter("pincode");
try{
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
      
Statement stat = conn.createStatement();
String sql ="select * from centers where pincode="+pincode+" ";
ResultSet resultSet= stat.executeQuery(sql);
if(resultSet.next()){
	
%>

<tr>
<td><%=resultSet.getString("pincode") %></td>
<td><%=resultSet.getString("city") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("location") %></td>
</tr>
<%
}
else
{
	response.sendRedirect("Search.jsp");
	}
conn.close();

} catch (Exception e) {
e.printStackTrace();

out.print("Sorry no centers found...!!");
}
%>

</table>
<br>
<br>
<br>
<br>
</body>
</html>
<%@include file="footer.jsp"%>