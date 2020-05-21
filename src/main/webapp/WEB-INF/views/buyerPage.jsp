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
			<form class="form-row align-items-center" method='GET'>
				<div class="card-body bg-primary text-white">
					<div class="col-auto">
						<label>Mobile Name</label> <input type="text"
							class="form-control mb-2" id="mobileName"
							placeholder="Eg: Samsung S10" name="productName">
					</div>

					<div class="col-auto">
						<button type="submit" id="submitButton" onclick="showMyTable();return false;"
							class="btn btn-danger mb-2" data-toggle="collapse"
							data-target="#searchingDB">Submit</button>
					</div>
					<div id="searchingDB" class="collapse">Results Found</div>
					<!-- Main Table -->

				</div>
			</form>
			<div class="card-footer">
				<div class="table-responsive">
					<div class="table table-striped" id="resultTable">
						<table class="table" id="table-content">
							<thead>
								<tr class="table-primary">
									<th>Product ID</th>
									<th>Product Name</th>
									<th>Product Cost</th>
								</tr>
							</thead>
							<tbody id="tbody">

							</tbody>
						</table>
					</div>

					<script>
					function showMyTable(event) {
					$("#tbody").empty();			
					let pageNumber = 0;
					const bodyContent = document.querySelector("#table-content > tbody");
					var inputF = document.getElementById("mobileName"); 
					
        			fetch("http://localhost:8080/findMobilebyID?productName="+inputF.value+"&page="+pageNumber).then(
            res => {
                res.json().then(
                    data => {                    	
                        
                        if (data.content.length > 0) {
                            var temp = "";                            
                            data.content.forEach((u) => {
                            	let tr = document.createElement("tr");
                            	for(let key in u){   
                            		let value = u[key];
                            		let td = document.createElement("td");
                            		td.textContent = value;
                            		tr.appendChild(td);
                            	}
                            	
                            	bodyContent.appendChild(tr);
                            	              	
                            	
                            });
                          
                        }
                    }
                )   
            }
        )
       
        var submitted = document.getElementById("submitButton");
        document.getElementById("resultTable").addEventListener("click", function(event){
       		event.preventDefault();
        },false);		
       
	}
    </script>
				</div>
			</div>

		</div>
</body>

</html>