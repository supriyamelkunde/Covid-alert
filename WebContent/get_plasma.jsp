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
<style>
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
<h1 class="text-center" style="color:#ffffff;"><strong><u>View Data</strong></h1><br/>

<div class="container py-5">
 
  <div class="row py-5">
    <div class="col-lg-25 mx-auto">
      <div class="card rounded shadow border-0">
        <div class="card-body p-5 bg-white rounded">
          <div class="table-responsive">
            <table id="example" style="width:100%" class="table table-striped table-bordered" id="customers" >
              <thead>

		<%
String c_no=request.getParameter("c_no");
		
try{
	 Class.forName("com.mysql.jdbc.Driver");
     Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/covid","root","");
      
Statement stat = conn.createStatement();
String sql ="select * from plasma_donation where c_no="+c_no+"";
ResultSet resultSet= stat.executeQuery(sql);
if(resultSet.next()){
%>

                <tr>
                  <th>FirstName</th>
                  <th>LastName</th>
                  <th>Contact no</th>
                  <th>Status</th>
                  <th>Center Pincode</th>
                  <th>Center Address</th>
		           <th>Date  </th>
                  <th>Time to visit </th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td><%=resultSet.getString("firstName") %></td>
                  <td><%=resultSet.getString("lastName") %><br></td>
                  <td><%=resultSet.getString("c_no") %></td>
                  <td><%=resultSet.getString("status") %></td>
                  <td><%=resultSet.getInt("c_pincode") %></td>
 		           <td><%=resultSet.getString("c_address") %></td>
                  <td><%=resultSet.getString("p_date") %></td>
		          <td><%=resultSet.getString("p_time") %></td>
                </tr>
         

<%
}
else
{
	response.sendRedirect("Request.jsp");
	}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
 
     </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
<%@include file="footer.jsp"%>