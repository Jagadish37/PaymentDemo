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
  <a class="navbar-brand" href="#">NavBar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="Home.html">Home <span class="sr-only">(current)</span></a>
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
    <form class="form-inline my-2 my-lg-0">
    	
    	<button class="btn btn btn-outline-dark  my-2 my-sm-0" type="submit">Logout</button> &nbsp;&nbsp;
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>  
<br> <br>

<div align="right" style="margin-right: 5%;" >
  <h3 >Welcome User 123</h3>
  <p class="lead">Your Account Balance : 234234.00 </p>
  <!-- <hr class="my-1">
  <p>Please sign in to continue</p> -->
  <!-- <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
  <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a> -->
</div>

<div style="margin-left: 5%;" >
<form>

<div class="card text-center">
  <div class="card-header">
    Receipt
  </div>
  <div class="card-body">
    <h5 class="card-title">Success</h5>
    <p class="card-text">Your payment for amount <%=session.getAttribute("Amount") %>  has been successfully processed.</p>
    <a href="Login?email=random" class="btn btn-primary">Home</a>
  </div>
 <!--  <div class="card-footer text-muted">
    2 days ago
  </div> -->
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
