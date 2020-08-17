<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Easwar's Mobile</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>

</head>
<body>
	<div>
		<!-- Nav Bar Control -->

		<nav class="navbar navbar-expand bg-dark navbar-dark sticky-top">
			<div
				class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="/buy">Buy</a></li>
					<li class="nav-item"><a class="nav-link" href="/sell">Sell</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Locate</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				</ul>
			</div>
			<div class="mx-auto order-0">
				<a class="navbar-brand " href="#"> <img src="images/Easwar_logo.png"
					width="220" height="25" alt="logo">

				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target=".dual-collapse2">
					<span class="navbar-toggler-icon"></span>
				</button>
			</div>
			<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="#">Contact
							Us</a></li>

				</ul>
			</div>
		</nav>

		<!-- Banner Carousel -->
		<div class="container-fluid" style="margin-top: 0px">
			<div class="row">
				<div class="col-12">
					<div id="demo" class="carousel slide" data-ride="carousel">
						<ul class="carousel-indicators">
							<li data-target="#demo" data-slide-to="0" class="active"></li>
							<li data-target="#demo" data-slide-to="1"></li>
							<li data-target="#demo" data-slide-to="2"></li>
						</ul>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="images/Apple_iphone_11.jpg" alt="Samsung Galaxy" width="1100"
									height="50">
								<div class="carousel-caption">
									<h3>Apple iPhone</h3>
									<p>Think Different</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="images/oneplus_7.jpg" alt="One Plus" width="1100" height="50">
								<div class="carousel-caption">
									<h3>One Plus</h3>
									<p>The speed you need</p>
								</div>
							</div>
							<div class="carousel-item">
								<img src="images/Samsung_Note10.png" alt="Apple iPhone" width="1100"
									height="50">

								<div class="carousel-caption">
									<h3>Samsung Galaxy</h3>
									<p>Digitally Yours</p>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#demo" data-slide="prev">
							<span class="carousel-control-prev-icon"></span>
						</a> <a class="carousel-control-next" href="#demo" data-slide="next">
							<span class="carousel-control-next-icon"></span>
						</a>
					</div>
				</div>
			</div>
		</div>
		<br>
		<!-- Brands-->
		<div class="jumbotron jumbotron-fluid">

			<div class="container">
				<h2 style="text-align: center;">Shop by Brand</h2>
				<br>
				<div class="card-columns">
					<div class="card bg-primary">

						<div class="card-body text-center">
							<a href="/findMobilebyID?productName=One Plus" class="btn card-text stretched-link">One Plus</a>
						</div>
					</div>
					<div class="card bg-warning">
						<div class="card-body text-center">
							<a href="/findMobilebyID?productName=Samsung" class="btn card-text stretched-link">Samsung</a>
						</div>
					</div>
					<div class="card bg-success">
						<div class="card-body text-center">
							<a href="/findMobilebyID?productName=Google" class="btn card-text stretched-link">Google</a>
						</div>
					</div>
					<div class="card bg-danger">
						<div class="card-body text-center">
							<a href="/findMobilebyID?productName=Apple" class="btn card-text stretched-link">Apple</a>
						</div>
					</div>
					<div class="card bg-light">
						<div class="card-body text-center">
							<a href="/findMobilebyID?productName=Nokia" class="btn card-text stretched-link">Nokia</a>
						</div>
					</div>
					<div class="card bg-info">
						<div class="card-body text-center">
							<a href="/findMobilebyID?productName=Xiaomi" class="btn card-text stretched-link">Xiaomi</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Embedded Video-->
		<div class="container" style="margin-top: 20px">
			<h2 style="text-align: center;">Flagship</h2>
			<br>
			<div class="col-md-12">
				<div class="embed-responsive embed-responsive-4by3">
					<iframe class="embed-responsive-item"
						src="https://www.youtube.com/embed/uRzEhLm3-hc"></iframe>
				</div>
			</div>
		</div>
		<div class="container mt-3">
			<h2>Experts Review</h2>
			<div class="spinner-grow text-muted"></div>
			<div class="spinner-grow text-primary"></div>
			<div class="spinner-grow text-success"></div>
			<div class="spinner-grow text-info"></div>
			<div class="spinner-grow text-warning"></div>
			<div class="spinner-grow text-danger"></div>
			<div class="spinner-grow text-secondary"></div>
			<div class="spinner-grow text-dark"></div>
			<div class="spinner-grow text-light"></div>
			<div class="media border p-3">
				<img src="images/user-avatar.png" alt="Steve"
					class="mr-3 mt-3 rounded-circle" style="width: 60px;">
				<div class="media-body">
					<h4>
						Steve Jobs <small><i>Posted on May 2, 2014</i></small>
					</h4>
					<p>iPhone an innovation comes from saying no to 1,000 things</p>
				</div>
			</div>
		</div>

		<div class="footer-nav">
			<div class="container">
				<div class="row">
					<p>Contact : rajkumar26041997@gmail.com</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>