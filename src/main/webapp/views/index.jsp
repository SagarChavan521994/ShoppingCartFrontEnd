<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01Transitional //EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Music Beat</title>

</head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
/* Remove the navbar's default margin-bottom and rounded borders */
h2 {
	color: #8000ff;
	font-family: algerian;
	font-style: bold;
}

body {
	 background-image: url("resources/images/back.jpg");
	background-repeat: no-repeat;
}

.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

#a {
	text-color: red;
}

.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width:800px;
      height:800px;
      margin: auto; 
  }
  
  
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: center;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}

</style>

<body class="a">

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="home">Music Beat</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="home">Home</a></li>
				
			</ul>

		</div>
	</div>
	</nav>
<!-- 
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    Wrapper for slides
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/car1.jpg" alt="Chania">
      </div>

      <div class="item">
        <img src="resources/images/car2.jpg" alt="Chania">
      </div>
    
      <div class="item">
        <img src="resources/images/car3.jpg" alt="Flower">
      </div>

      <div class="item">
        <img src="resources/images/car4.jpg" alt="Flower">
      </div>
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
 -->




	<%-- <table width="100%">
		<tr>

			<td align="right"><a href="myCart"> My Cart </a>( ${cartSize} )</td>


		</tr>
	</table> --%>

	<%-- <div id="contact">

		<c:if test="${isUserClickedContact==true}">

			<%@ include file="contact.jsp"%>

		</c:if>

	</div> --%>

	<div>
		<table width="100%">
			<tr>
				<c:choose>
					<c:when test="${empty loggedInUser}">
						<td align="left"><a href="loginHere"><h2>Login here</h2></a></td>
						<!-- <td><button type="button" class="btn btn-info"><a href="loginHere"><h2>Info</h2></a></button></td> -->
						<td align="bottom"><a href="registrationFlow"><h2>Register
									here</h2></a></td>
					</c:when>
					<c:when test="${not empty loggedInUser}">
						<td><h3>Welcome ${loggedInUser},</h3></td>
						<td align="center"><h3>
								<a href="logout"> logout</a>
							</h3></td>
					</c:when>

				</c:choose>
			</tr>
			<tr>
				<c:if test="${loggedOut==true}">
					<td>${logoutMessage}</td>
				</c:if>
			</tr>
		</table>
	</div>

	<div id="registerHere">
		<c:if test="${isUserClickedRegisterHere==true}">
			<td>${successMessage}</td>
			<%@ include file="register.jsp"%>

		</c:if>
	</div>

	<div id="loginHere">
		<c:if
			test="${isUserClickedLoginHere==true || invalidCredentials==true}">
			<div id="error" align="center">${errorMessage}</div>
			<%@ include file="login.jsp"%>
		</c:if>
	</div>
	
	<div id="confirmDetails">
		<c:if
			test="${isUserClickedConfirm==true}">
			<%@ include file="confirmDetails.jsp"%>
		</c:if>
	</div>
	
	<div id="admin">

		<c:if test="${isAdmin==true}">

			<%@ include file="admin.jsp"%>


		</c:if>
		<c:if test="${isAdmin==false}">

			<%@ include file="user.jsp"%>

		</c:if>
		<div id="categories">
			<c:if test="${isAdminClickedCategories==true}">
				<%@ include file="admin.jsp"%>
				<%@ include file="category.jsp"%>
			</c:if>
		</div>

		<div id="products">
			<c:if test="${isAdminClickedProducts==true}">
				<%@ include file="admin.jsp"%>
				<%@ include file="product.jsp"%>
			</c:if>
		</div>

		<div id="suppliers">
			<c:if test="${isAdminClickedSuppliers==true}">
				<%@ include file="admin.jsp"%>
				<%@ include file="supplier.jsp"%>
			</c:if>
		</div>

		<div id="contact">
			<c:if test="${isUserClickedContact==true}">

				<%@ include file="contact.jsp"%>

			</c:if>
		</div>
	</div>

	<div id="displayCart">
		<c:if test="${displayCart==true}">

			<table>
				<tr>
					<th align="left" width="80">Cart ID</th>
					<th align="left" width="120">Product Name</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="200">Quantity</th>
					<th align="left" width="200">Status</th>
					<th align="left" width="60">Delete from Cart</th>

				</tr>
				<c:forEach items="${cartList}" var="cart">
					<tr>
						<td align="left">${cart.id}</td>
						<td align="left">${cart.productName}</td>
						<td align="left">${cart.price}</td>
						<td align="left">${cart.quantity}</td>
						<td align="left">${cart.status}</td>
						<td align="left"><a
							href="<c:url value='cart/remove/${cart.id}' />">Delete</a></td>
						<%-- <td align="left" ><a
						href="<c:url value='pay/${cart.id}' />"> Proceed</a> </td> --%>
					</tr>
				</c:forEach>

			</table>

			<h2>Total cost : ${totalAmount}</h2>
			<%-- <a href="<c:url value='/pay/${cart.userID}'/>">Proceed</a>  --%>
			<a href="<c:url value='/pay/${cart.id}'/>">Proceed</a>
		</c:if>

<%@ include file="Content.jsp"%>

	</div>

	<div class="container text-center">
		<!-- <h3>Music Beat</h3> -->
		<br>
		<div class="row">
			<div class="col-sm-4">
				<img src="resources/images/news.jpg" class="img-responsive"
					style="width: 100%" alt="Image">
				<p>Whats New</p>
			</div>
			<div class="col-sm-4">
				<img src="resources/images/new7.jpg" class="img-responsive"
					style="width: 100%" alt="Image">
				<p>Upcoming Releases</p>
			</div>
			<div class="col-sm-4">
				<div class="well">
					<a href="contact">
						<p>Contact Us</p>
				</div>
				</a>
				<div class="well">
					<p>Feedbacks and Suggestions</p>
				</div>
			</div>
		</div>
	</div>

</body>

</html>
