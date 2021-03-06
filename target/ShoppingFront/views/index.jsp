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
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <style>
  /* Remove the navbar's default margin-bottom and rounded borders */ 
  	h2
    {
		color: pink;
		font-family: algerian;
		font-style: bold;
	}
  	body
  	{
  		background-image:url("resources/images/new back.jpg");
  		background-repeat: no-repeat;
  	}
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    #a
    {
    	text-color:red;
    	
    }
 </style>

<body class="a" >

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
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Movies CDs</a></li>
							<li><a href="#">Movies DVDs</a></li>
							<li><a href="#">Movies BlueRays</a></li>
							<li><a href="#">Music CDs</a></li>
							<li><a href="#">Music DVDs</a></li>
							<li><a href="#">Music BlueRays</a></li>
						</ul></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Products <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">T-Series</a></li>
							<li><a href="#">MoserBear</a></li>
							<li><a href="#">Sa re ga ma HMV</a></li>
						</ul></li>
				</ul>
				
			</div>
		</div>
	</nav>
	
	<table width="100%">
		<tr>
			
			<td align="right"> <a href="myCart">  My Cart  </a>( ${cartSize} )</td>
			
			
		</tr>
	</table>
	
	<div id="contact">
	
	<c:if test="${isUserClickedContact==true}">
	
	<%@ include file="contact.jsp"%>
	
	</c:if>
	
	</div>

<div>
			<table width="100%">
				<tr>
					<c:choose>
						<c:when test="${empty loggedInUser}">
							<td align="left"><a href="loginHere"><h2>Login here</h2></a></td>
	 						<td align="bottom"><a href="registerHere"><h2>Register here</h2></a></td>
						</c:when>
						<c:when test="${not empty loggedInUser}">
							<td><h3>Welcome ${loggedInUser},</h3></td>
							<td align="center"><h3><a href="logout"> logout</a></h3></td>
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
				<c:if test="${isUserClickedLoginHere==true || invalidCredentials==true}">
				  <div id = "error" align="center">  ${errorMessage} </div>
					<%@ include file="login.jsp"%>
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
			
			<div class="container text-center">
		<h3>Music Beat</h3>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<img src="resources/images/news.jpg"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>Whats New</p>
			</div>
			<div class="col-sm-4">
				<img src="resources/images/new7.jpg"
					class="img-responsive" style="width: 100%" alt="Image">
				<p>Upcoming Releases</p>
			</div>
			<div class="col-sm-4">
				<div class="well"><a href="contact">
					<p>Contact Us</p>
				</div></a>
				<div class="well">
					<p>Feedbacks and Suggestions</p>
				</div>
			</div>
		</div>
	</div>
			
			<div id ="displayCart">
	<c:if test="${displayCart==true}">
	       
			<table>
				<tr>
					<th align="left" width="80">Cart ID</th>
					<th align="left" width="120">Product Name</th>
					<th align="left" width="200">Quantity</th>
					<th align="left" width="80">Price</th>
					<th align="left" width="60">Delete from Cart</th>

				</tr>
				<c:forEach items="${cartList}" var="cart">
				<tr>
					<td align="left" >${cart.id}</td>
					<td align="left" >${cart.productName}</td>
					<td align="left" >${cart.quantity}</td>
					<td align="left" >${cart.price}</td>
					<td align="left" ><a
						href="<c:url value='/cart/delete/${cart.id}'  />">Delete</a></td>
						<td align="left" ><a
						href="<c:url value='pay/${cart.id}' />"> Proceed</a> </td>
				</tr>
				</c:forEach>
					
			</table>
			
			<h2>  Total cost : ${totalAmount}</h2>
			<%-- <a href="<c:url value='/pay/${cart.userID}'/>">Proceed</a>  --%>
			<a href="<c:url value='/pay/${cart.id}'/>">Proceed</a> 
		</c:if>
	
	
	
	</div>
			
</body>

</html>
