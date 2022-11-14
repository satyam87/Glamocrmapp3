<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="menu.jsp" %>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>leads</title>
	<style type="text/css">
		table tr:nth-child(odd){
			background-color: lightgray;
		}
		table tr:nth-child(even){
			background-color: skyblue;
		}
	</style>
</head>
<body>
	<h2>All Contacs</h2>
	<form>
		<table border="5px solid">
			<tr>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Source</th>
				<th>Billing</th>
			</tr>
			<c:forEach var="contact" items="${contacts}">
				<tr>
					<td>${contact.firstName}</td>
					<td>${contact.lastName}</td>
					<td>${contact.email}</td>
					<td>${contact.mobile}</td>
					<td>${contact.source }</td>
					<td><a href="generateBill?id=${contact.id }">Billing</a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>