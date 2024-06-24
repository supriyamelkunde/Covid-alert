<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@include file="admin_header.jsp"%>
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

#btn-print{
margin-left:55%;
height:35px;
border-radius:10px;
color:black;
border-color:black;
}

.bt{
display:flex;
justify-content:center;
padding-right:20px;
}

  body {
    background: #74ebd5;
    background: -webkit-linear-gradient(to right, #74ebd5, #ACB6E5);
    background: linear-gradient(to right, #74ebd5, #ACB6E5);
    min-height: 100vh;
 
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

<script type="text/javascript">  
          function PrintDiv() {
            var divToPrint = document.getElementById('customers');
            var htmlToPrint = '' +
                '<style type="text/css">' +
                'table,th,td {' +
                'border: 1px solid black;' +
                'border-collapse: collapse;' +             
                'padding:0.5em;' +
                '}' +
                '</style>';	
            htmlToPrint += divToPrint.outerHTML;                
            newWin = window.open("");
            newWin.document.write('<html><head><title>Accept Vaccine Request</title>');  
            newWin.document.write('</head><body >');  
            newWin.document.write('<h1>Accept Vaccine Request</h1>');  
            newWin.document.write(htmlToPrint);
            newWin.document.write('</body></html>');
            newWin.print();
            newWin.close();
        }
    </script> 

<center>
  <div class="bt">
	<h1>Accept Vaccine Request</h1>
  	<a href="#" class="shadow-sm btn btn-outline-success" id="btn-print" onclick="PrintDiv()"> Print</a>
  </div>  
    <table id="customers">
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
            <th>Address</th>
            <th>Pincode</th>
            <th>Mobile No</th>
            <th>Action</th>

        </tr>
        <tr>

                                  <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from vaccine where status='Request'";
rs = statement.executeQuery(sql);
while(rs.next()){
%>
               <td><%=rs.getString("id")%></td>
            <td><%=rs.getString("firstName")%></td>
            <td><%=rs.getString("lastname")%></td>
            <td><%=rs.getString("age")%></td>
            <td><%=rs.getString("city")%></td>
             <td><%=rs.getString("pincode")%></td>
            <td><%=rs.getString("c_no")%></td>

            <td><a href="accept_vaccineRequest.jsp?id=<%=rs.getString("id")%>">Accept</a></td>

            </tr>
           <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
</center>
<br>
<br>
<br>
<br>
</body>
</html>
<%@include file="footer.jsp"%>