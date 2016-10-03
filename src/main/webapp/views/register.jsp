<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Register Here</title>
</head>
<body>
	<h2 align="center">Registration Form</h2>
	<form:form  method="post" commandName="user" modelAttribute="user" id="form">
		<table align="center">
			<tr>
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
				<td><form:input path="id" pattern=".{4,12}" required="true"
						title="id should contains 4 to 7 characters" /></td>
			</tr>
			<tr>
				<td><form:label path="name">
						<spring:message text="User Name" />
					</form:label></td>
				<td><form:input path="name" required="true"
						title="name should not be empty" /></td>
			</tr>
			<tr>
				<td><form:label path="add">
						<spring:message text="Address" />
					</form:label></td>
				<td><form:input path="add" required="true"
						title="Address should not be empty" /></td>
			</tr>
			<tr>
				<td><form:label path="mob">
						<spring:message text="Mobile No." />
					</form:label></td>
				<td><form:input path="mob" pattern="^\d{10}$" required="true"
						title="Mobile no. should not be empty" /></td>
			</tr>
			<tr>
				<td><form:label path="email">
						<spring:message text="Email" />
					</form:label></td>
				<td><form:input type="email"
						pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" path="email" /></td>
			</tr>
			<tr>
				<td><form:label path="password">
						<spring:message text="Password" />
					</form:label></td>
				<td><form:input type="password" name="pwd" id="pass"
						pattern=".{7,14}" path="password"
						title="id should contains 7 to 14 characters" /></td>
			</tr>
			<tr>
				<td><spring:message text=" Re-enter Password" /></td>
				<td><form:input type="password" name="cpwd" id="c_pass"
						pattern=".{7,14}" path=""
						title="id should contains 7 to 14 characters"
						onblur="confirmPass()" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="_eventId_submit"
					value="<spring:message text="Register"/>" /></td>
				<td><input type="reset" value="<spring:message text="Reset"/>" />
				</td>
			</tr>
		</table>
	</form:form>
	<script type="text/javascript">
		function confirmPass() {
			var pass = document.getElementById("pass").value
			var confPass = document.getElementById("c_pass").value
			if (pass != confPass) {
				alert('Wrong confirm password !');
			}
		}
	</script>
</body>
</html>

<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
</head>
<body>
	<div class="content">
		<fieldset>
			<legend>Regiser Here</legend>
			<a href="${flowExecutionUrl}&_eventId_home">Home</a>
			<form:form modelAttribute="user">
				<br />
				<form:label path="id">User ID:</form:label>
				<form:input path="id" />
				<br/>
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="name">User Name:</form:label>
				<form:input path="name" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="password">Password:</form:label>
				<form:input type="password" path="password" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="email">Email ID:</form:label>
				<form:input path="email" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="mob">Mobile :</form:label>
				<form:input path="mob" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
				<form:label path="add">Address: </form:label>
				<form:input path="add" />
				<br />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
					<input name="_eventId_submit" type="submit" value="Submit" />
				<br />
			</form:form>
		</fieldset>
	</div>
</body>
</html> --%>