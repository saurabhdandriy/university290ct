<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>  
   <%@taglib prefix = "form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<table border="2">
<tr>
<th>APPLICATION ID</th>
<th>FULL NAME</th>
<th>DATE OF BIRTH</th>
<th>HIGHEST QUALIFICATION</th>
<th>MARKS OBTAINED</th>
<th>GOALS</th>
<th>EMAIL ID</th>
<th>STATUS</th>
<th>DATE OF INTERVIEW</th>
<th>ACCEPT</th>
</tr>


		<c:if test="${!data.isEmpty()}">
		<c:forEach items="${data}" var="mac">
		<tr>
		<form:form action = "updateDetails.uas?id=${mac.getApplicationId()}" modelAttribute="applicantObj" method="POST">
	<td>	${mac.getApplicationId()} </td>
	<td>	${mac.getFullName()} </td>
	<td>	${mac.getDateOfBirth()} </td>
	<td>	${mac.getHighestQualification()} </td>
	<td>	${mac.getMarksObtained()} </td>
	<td>	${mac.getGoals()} </td>
	<td>    ${mac.getEmailId()}</td>
		<td><form:select path="status" >
		<option value= default class="form-control">${mac.getStatus() }</option>
		<option value="accepted" default class="form-control">accepted</option>
		<option value="rejected" default class="form-control">rejected</option>
		
		</form:select>
		</td>
		<td><form:input  type="date" path="dateOfInterview" class="form-control" value="${mac.getDateOfInterview()}"placeholder="date of interview"/></td>	
		<td><input type="submit" value="Update"/></td>
	
		</form:form>
		 </c:forEach>
		</c:if>
</tr>
</table>
		<c:if test="${data.isEmpty()}">
		<h2>no details to be displayed</h2>
		</c:if>
		
</body>
</html>