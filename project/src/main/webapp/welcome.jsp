<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <table border = 1>
    <thead>
    <tr>
    <th>ID</th>
     <th>Name</th>
    </tr>
    </thead>
    <tbody>
   
 <% 
   Class.forName("com.mysql.cj.jdbc.Driver");
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root", "root");
 String sql = "select * from employe";
 PreparedStatement pmst = conn.prepareStatement(sql);
ResultSet rs = pmst.executeQuery();
while(rs.next()){
	

    %>
   
    <tr>
    <td><%= rs.getInt("ID") %>></td>
    <td><%= rs.getString("NAME") %>></td>
    </tr>
   
    <%} %>
     </tbody>
    </table>
   
</body>
</html>