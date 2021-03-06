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
      <li class="nav-item ">
        <a class="nav-link" href="Home.jsp">Home </a>
      </li>
     
      <li class="nav-item active">
        <a class="nav-link" href="PaymentInitiate.html">Initiate Payment <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item ">
        <a class="nav-link" href="PaymentInitiate.html">Schedule Payment</a>
      </li>
      
       <li class="nav-item ">
        <a class="nav-link" href="PaymentInitiate.html">Other Payments</a>
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
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>  
<br> <br>

<div style="margin-left: 5%;">
<form action="Payments" method="post">

<h2>Payment Initiation</h2>

		<!-- 	<div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Select Account</label>
     <button for="colFormLabelSm" class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Select Account
  </button>
   <div class="dropdown-menu" >
  <a class="dropdown-item" href="#">Current Account</a>
  <a class="dropdown-item" href="#">Savings Account</a>
  <a class="dropdown-item" href="#">International Account</a>
</div>
    </div> -->
    
    <div class="form-group row">
   <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Select Account</label>
   <div class="col-sm-3"> 
  <select name="fromaccount" class="form-control form-control-sm" id="sel1" required="required">
  	<option value="0">Select</option>
    <option value="Current">Current Account</option>
    <option value="Savings">Savings Account</option>
    <option value="International">International Account</option>
  </select>
  </div>
</div>
    
    <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Beneficiary Name</label>
    <div class="col-sm-3">
      <input type="text" name="bName" class="form-control form-control-sm" id="colFormLabelSm" required="required">
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">IBAN/Account Number</label>
    
    <div class="col-sm-3">
    <div class="input-group mb-2">
      <input type="text" name="iban" class="form-control form-control-sm" id="ibanAccount"  required="required" > 
      <div class="input-group-prepend">
          <div class="input-group-text" data-toggle="tooltip" data-placement="right"  id="trueiban"></div>
        </div>
    </div>
     
    <!--  <span id="trueiban"></span> -->
     </div>
    
  </div><div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Amount</label>
    <div class="col-sm-3">
      <input type="number" name="Amount" class="form-control form-control-sm" id="colFormLabelSm"  required="required">
    </div>
  </div>
  <div class="form-group row">
   <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Mode of Payment</label>
   <div class="col-sm-3">
  <select name="modeofpay" class="form-control form-control-sm" id="sel2" required="required">
  	<option value="0">Select</option>
    <option value="Faster">Faster Payment</option>
    <option value="Regular">Regular Payment</option>
   
  </select>
  </div>
</div>
  
  <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Email</label>
    <div class="col-sm-3">
      <input type="email" name="email" class="form-control form-control-sm" id="colFormLabelSm"  required="required">
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormLabelSm" class="col-sm-2 col-form-label col-form-label-sm">Remarks</label>
    <div class="col-sm-3">
      <input type="text" name="remarks" class="form-control form-control-sm" id="colFormLabelSm"  required="required">
    </div>
  </div>

  
  <input type="hidden" name="path" value="toConfirm">
 <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>


<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
    <script src="js/iban.js" type="text/javascript"></script>
    <script type="text/javascript">
    
  
		$(function() {
			
			 $('[data-toggle="tooltip"]').tooltip();
			 
			 
			 
			$("#ibanAccount").blur(function() {

				if (IBAN.isValid($("#ibanAccount").val())) {
					$("#trueiban").attr("title","Valid IBAN");
					$("#trueiban").html('<img src="img/approved.png"></img>');
				}

				else {
					
					$("#trueiban").attr("title","Incorrect IBAN");
					$("#trueiban").html('<img src="img/unchecked.png"></img>');
				}
			});

		});
	</script>
   
    
    
  </body>
</html>
