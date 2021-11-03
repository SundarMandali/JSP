<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!
//DECLARATION TAG
int square(int n)
{
	
	return n*n;
}
%>
<%= "Square of number is "+square(Integer.parseInt(request.getParameter("num"))) %>

</body>
</html>