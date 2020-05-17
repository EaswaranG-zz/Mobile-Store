<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/boot	strap/4.4.1/js/bootstrap.min.js"></script>
<title>Easwar's Mobile</title>
</head>
<body>
	<div class="container-fluid" style="margin-top: 0px">
		<h1>WELCOME</h1>
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="/">Home</a></li>
			<li class="breadcrumb-item active">Buy</li>
		</ul>
	</div>
	<div class="container">
		<div class="card-body">
			<div class="card-header">
				<h4 class="card-title">Search an Mobile from the store</h4>
				<h6 class="card-subtitle text-muted">India Location</h6>
			</div>
			<form class="form-row align-items-center" action="/findMobilebyID" method='GET'>
				<div class="card-body bg-primary text-white">
					<div class="col-auto">
						<label>Mobile Name</label> <input type="text"
							class="form-control mb-2" id="mobileName"
							placeholder="Eg: Samsung S10" name="productName">
					</div>

					<div class="col-auto">
						<button type="submit" class="btn btn-danger mb-2" data-toggle="collapse" data-target="#searchingDB">Submit</button>
					</div>
					<div id="searchingDB" class="collapse">Results Found</div>
					<!-- Main Table -->

				</div>
			</form>
			<div class="card-footer">Result here</div>
		</div>

	</div>

</body>

</html>