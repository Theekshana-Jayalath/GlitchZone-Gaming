<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String country = request.getParameter("country");
		String uName = request.getParameter("uName");
		String password = request.getParameter("password");
	%>
	<form action = "UpdateUserProfileServlet" method = "POST">
			<table>
				<tr>
					<td>ID : </td>
					<td><input type = "text" name = "id" value = "<%=id%>" readonly>
				</tr>
				<tr>
					<td>First Name : </td>
					<td><input type = "text" name = "fname" value = "<%=fname%>" required>
				</tr>		
				<tr>
					<td>Last Name : </td>
					<td><input type = "text" name = "lname" value = "<%=lname%>" required>
				</tr>
				<tr>
					<td>Email : </td>
					<td><input type = "text" name = "email" value = "<%=email%>" required>
				</tr>
				<tr>
					<td>Country : </td>
					<td><input type = "text" name = "country" value = "<%=country%>" required>
				</tr>
				<tr>
					<td>User Name : </td>
					<td><input type = "text" name = "uName" value = "<%=uName%>" required>
				</tr>
				<tr>
					<td>Password : </td>
					<td><input type = "text" name = "password" value = "<%=password%>" required>
				</tr>
				<tr>
					<td colspan = "2"><input type = "submit" value = "submit"> </td>
				</tr>
			</table>
		</form>
</body>
</html>