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
	<h1> Welcome </h1>
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="/">Home</a></li>
			<li class="breadcrumb-item active">Sell</li>
		</ul>
	</div>
	<table border="1">
		<tr>
			<th>Add Mobile</th>
		</tr>
		<tr>
			<td>
				<form action="/addMobile">
					<table>
						<tr>
							<td><label>Mobile ID</label></td>
							<td><input type="number" name="productID" required></td>
						</tr>
						<tr>
							<td><label>Mobile Name</label></td>
							<td><input type="text" name="productName" required></td>
						</tr>
						<tr>
							<td><label>Unit Cost</label></td>
							<td><input type="number" name="unitCost" required></td>
						</tr>
						<tr>
							<td><input type="submit" value="Submit"></td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>