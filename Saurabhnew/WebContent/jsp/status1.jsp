<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2">
<tr>
<th>APPLICATION ID</th>
<th>FULL NAME</th>
<th>STATUS</th>
<th>Interview Date</th>
</tr>
<tr>
		<c:if test="${!data1.isEmpty()}">
		<c:forEach items="${data1}" var="mac"><tr>
	<td>	${mac.getApplicationId()} </td>
	<td>	${mac.getFullName()} </td>
	<td>    ${mac.getStatus()}</td>
	<td>    ${mac.getDateOfInterview()}</td>
		</tr>

		 </c:forEach>
		</c:if>
</tr>
</table>
		<c:if test="${data1.isEmpty()}">
		<h2>no details to be displayed</h2>
		</c:if>
</body>
</html>