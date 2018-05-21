<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>




<div class="container"> 
<div class="row">
	



	<div class="col-sm-4">
			<div class="font-weight-bold">
      

 <div class="panel panel-primary">
      
				<div class="panel-heading">
			<b> <c:out value="${carDetail.make} ${carDetail.model}" /> </div> 	
				<div class="panel-body">
			Year: 	<c:out value="${carDetail.year}" />
			Color: 	<c:out value="${carDetail.color}" />
			Mile: <c:out value="${carDetail.mileage}"/>
				VIN #<c:out value="${carDetail.vinNumber}"/>
				<div></div>
				   </div></b>
					<img src="${carDetail.image}" width="400px" height="400px">
				</div>
				<div class="btn btn-danger"><span>$</span>${carDetail.price}</div>
			</div>
			<div class="">
				
				
			<a href="BuyServlet?vinNumber=${carDetail.vinNumber}"><button class="btn btn-lg btn btn-danger"  role="button">Buy Now </button></a>	
				
			</div>
			<br>
		</div>

	
</div>
</div>

</body>

</html>