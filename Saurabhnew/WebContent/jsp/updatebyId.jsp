<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View All</title>
</head>
<body>
<table border="2px" >
<tr>
<td>application id</td><td>Full name</td><td>Date of birth</td><td>highest Qualification</td><td>Marks obtain</td><td>Goals</td>
<td>Email id</td>
<td>Status </td><td>Date of Interview</td>
</tr>

		<c:if test="${!data.isEmpty()}">
		<c:forEach items="${data}" var="Mac">
		<tr>
		<form:form action = "updateStudent.uas?ApplicationId=${Mac.getApplicationId()}" modelAttribute="updatestudentObj" method="POST">
		<td>${Mac.getApplicationId()}</td>
		<td>${Mac.getFullName()}</td>
		<td>${Mac.getDateOfBirth()}</td>
		<td>${Mac.getHighestQualification()}</td>
		<td>${Mac.getMarksObtained()}</td>
		<td>${Mac.getGoals()}</td>
		<td>${Mac.getEmailId()}</td>
		<td><form:input path="status"/></td>
		<td><form:input path="dateOfInterview"/></td>
		<br><input type="submit" value="Update"></br>
		<!--  -->
		</form:form>

		</tr>
		 </c:forEach>
		</c:if>
		<c:if test="${data.isEmpty()}">
		<tr>
		<h2> Student is not available</h2>
		</tr>
		</c:if>
	
</table>

</body>
</html>