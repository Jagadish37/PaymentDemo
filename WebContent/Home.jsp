<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<title>Home</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Payment Portal</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
     
     
     <li class="nav-item ">
        <a class="nav-link" href="PaymentInitiate.jsp">Initiate Payment</a>
      </li>
     
      <li class="nav-item ">
        <a class="nav-link" href="#">Schedule Payment</a>
      </li>
      
       <li class="nav-item ">
        <a class="nav-link" href="#">Other Payments</a>
      </li>
     <!--  <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Payment
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="PaymentInitiate.html">Initiate Payment</a>
          <a class="dropdown-item" href="#">Schedule Payment</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Other Payments</a>
        </div>
      </li> -->
      
        <li class="nav-item">
        <a class="nav-link" href="#">TBD</a>
      </li>
      
      <!-- <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li> -->
    </ul>
    <form class="form-inline my-2 my-lg-0" action="Login.jsp">
    	
    	<a href="Login.jsp"><button class="btn btn btn-outline-dark  my-2 my-sm-0" type="submit">Logout</button> </a>&nbsp;&nbsp;
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="button">Search</button>
    </form>
  </div>
</nav>  
<br> <br>

	<div class="row" style="width: 95%;">

		<div class="col-sm-6" >
			<h3 style="margin-left: 5%;">DashBoard</h3>
		</div>
		<div class="col-sm-6">
			<div align="right" style="margin-right: 4%;">
				<h3>
					Welcome
					<%--  <%=session.getAttribute("loginUser")%> --%>
				</h3>
				<p class="lead">
					Your Account Balance :
					<%=session.getAttribute("RemainBal") %>
				</p>
			</div>
		</div>
	</div>


	<div style="margin-left: 2%;" >
<form>



<div class="row" style="width: 95%;">
  <div class="col-sm-6">
<p>
<h4>Recent Transactions</h4>
</p>
<table class="table table-bordered" >
  <thead class="table-info">
    <tr>
      <th scope="col">Date</th>
      <th scope="col">Details</th>
      <th scope="col">Amount</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>18/04/2018</td>
      <td>Payment to user 1</td>
      <td>2560.00</td>
      <td>Completed</td>
    </tr>
    <tr>
     <td>20/04/2018</td>
      <td>Test Payment 2 </td>
      <td>3500.00</td>
      <td>Completed</td>
    </tr>
    <tr>
     <td>25/04/2018</td>
      <td>Regular payment to beneficiary</td>
      <td>5300.00</td>
      <td>In Progress</td>
    </tr>
   
    
  <c:forEach items="${payList}" var="payModel">
 	<tr>
   <td>${payModel.date}</td>
      <td>${payModel.details}</td>
       <td>${payModel.amount}</td>
      <td>${payModel.status}</td> 
    </tr>

</c:forEach> 
    
  </tbody>
</table>
</div>
  <div class="col-sm-6">
  <p>
<h4>Favorite Transactions</h4>
</p>
  <table class="table table-bordered" >

  <thead class="table-success">
    <tr>
      <th scope="col">Beneficiary</th>
      <th scope="col">Details</th>
      <th scope="col">Amount</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach items="${favList}" var="payModel">
 	<tr>
   <td>${payModel.benName}</td>
      <td>${payModel.details}</td>
       <td>${payModel.amount}</td>
      <td><a href="#" class="btn btn-primary">Initiate</a></td> 
    </tr>

</c:forEach> 
  </tbody>
</table>
  </div>
  </div>
</form>
</div>


<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
  </body>
</html>
