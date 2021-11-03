<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER DETAILS</title>
</head>
<body>
<%
String url="jdbc:mysql://localhost:3306/practise";
String username="root";
String password="root";
int id=Integer.parseInt(request.getParameter("id"));
String query="select * from usertable where id="+id;


Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection(url,username,password);
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(query);
if(rs.next()){
	out.println("Username:"+rs.getString(1));
	out.println("password:"+rs.getString(2));
	out.println("Id:"+rs.getString(3));
}
else
	out.println("No records found");

%>
</body>
</html>