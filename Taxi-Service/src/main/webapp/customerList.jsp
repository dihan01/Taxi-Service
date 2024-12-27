<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Customer List</title>
	 <!-- Add CSS -->
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f2f2f2;
			background-image: url("https://static.vecteezy.com/system/resources/previews/002/944/432/original/online-taxi-service-concept-yellow-taxi-car-and-hand-holding-smartphone-with-taxi-application-on-city-background-illustration-in-flat-style-vector.jpg");
		}
		
		

		h1 {
			color: #008080;
		}

		table {
			width: 100%;
			border-collapse: collapse;
		}

		th, td {
			padding: 8px;
			border: 1px solid #ccc;
		}

		th {
			background-color: #008080;
			color: #fff;
		}

		a {
			color: #008080;
			text-decoration: none;
		}

		a:hover {
			text-decoration: underline;
		}

		.create-button {
			background-color: #00cc00;
			color: #fff;
			border: none;
			padding: 5px 10px;
			border-radius: 3px;
			cursor: pointer;
			margin-bottom: 10px;
		}

		.update-button {
			background-color: #008080;
			color: #fff;
			border: none;
			padding: 5px 10px;
			border-radius: 3px;
			cursor: pointer;
		}

		.delete-button {
			background-color: #ff0000;
			color: #fff;
			border: none;
			padding: 5px 10px;
			border-radius: 3px;
			cursor: pointer;
		}
	</style>
</head>
<body>
	<h1>Customer List</h1>
	<a href="/Taxi-Project/registerCustomerbyAdminjsp.jsp" class="create-button">Create Customer</a>
	<table>
		<tr>
			<th>User Name</th>
			<th>Telephone Number</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<td>${user.username}</td>
				<td>${user.telephoneNumber}</td>
				

				<td>
				 <!-- direct to update customer,jsp -->
					<a href="updateCustomer.jsp?telephoneNumber=${user.telephoneNumber}&userName=${user.username}" class="update-button">Update</a>
				</td>
				<td>
				 <!-- direct to deleteservlet -->
					<a href="deleteServlet?telephoneNumber=${user.telephoneNumber}" class="delete-button">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
