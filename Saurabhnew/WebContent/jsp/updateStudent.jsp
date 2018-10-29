<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
</head>
<body>
<form:form action="updatebyId.uas" modelAttribute="updatestudentObj" method="POST">
<tr>
<td>Student id</td><td><form:input path="ApplicationId" name="ApplicationId"/></td><td><input type="submit" value="Ok"></td>
</tr>
</form:form>
</body>
</html>