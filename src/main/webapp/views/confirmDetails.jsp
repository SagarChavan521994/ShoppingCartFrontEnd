<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Details</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home"></a><br /> <br />
			<form:form action="userregister" method="post" commandName="user"
				modelAttribute="user" id="form">

				<table align="center">
					<tr>
						<td><form:label path="id">User ID :</form:label></td>
						<td><form:input path="id" pattern=".{4,12}" required="true"
								title="id should contains 4 to 7 characters" /></td>
						<td>${user.id}</td>
					</tr>

					<tr>
						<td><form:label path="name"> User Name:</form:label></td>
						<td><form:input path="name" required="true"
								title="name should not be empty" /></td>
						<td>${user.name}</td>
					</tr>
					<tr>
						<td><form:label path="password">Password :</form:label></td>

						<td><form:input type="password" name="pwd" id="pass"
								pattern=".{7,14}" path="password"
								title="id should contains 7 to 14 characters" /></td>
						<td>${user.password}</td>
					</tr>

					<tr>
						<td><form:label path="email">Email:</form:label></td>
						<td><form:input type="email"
								pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" path="email" /></td>
						<td>${user.email}</td>
					</tr>

					<tr>
						<td><form:label path="mob">Mobile :</form:label></td>
						<td><form:input path="mob" pattern="^\d{10}$" required="true"
								title="Mobile no. should not be empty" /></td>
						<td>${user.mob}</td>

					</tr>

					<tr>
						<td><form:label path="add">Address :</form:label></td>
						<td><form:input path="add" required="true"
								title="Address should not be empty" /></td>
						<td>${user.add}</td>
					</tr>
					<tr>
						<td><input name="_eventId_submit" type="submit"
							value="Confirm Details" /></td>
					</tr>
				</table>
			</form:form>
		</fieldset>
	</div>
</body>
</html>

<%-- <%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Mvc WebFlow Demo</title>
</head>
<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<sf:form modelAttribute="user">
				<sf:label path="id">User ID :</sf:label>${user.id}
					<br />
				<br />
				<sf:label path="name"> User Name:</sf:label>${user.name}
					<br />
				<br />
				<sf:label path="password">Password :</sf:label>${user.password}
					<br />
				<sf:label path="email">Email:</sf:label>${user.email}
					<br />
				<br />
				<sf:label path="mobile">Mobile #:</sf:label>${user.mobile}
					<br />
				<br />
				<sf:label path="address">Address :</sf:label>${user.address}
					<br />
				<br />
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="confirmDetails" />
				<br />
			</sf:form>
		</fieldset>
	</div>
</body>
</html> --%>