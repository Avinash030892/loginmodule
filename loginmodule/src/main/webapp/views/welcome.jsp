<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 style="text-align:center; color: blue;">User Registration Status</h2>
<c:if test="${not empty Successmsg }">


<h4 style="text-align:center; color: green;">${Successmsg}</h4>

</c:if>
<c:if test="${not empty Errormsg }">
<h4 style="text-align:center; color: red;">${Errormsg}</h4>

</c:if>
</body>
</html>