<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
</head>
<body>
	<h1>Welcome User</h1>
	<div class="table-responsive">
		<div class="table table-striped">
			<table class="table" id ="table-content">
				<thead>
					<tr class="table-primary">
						<th>Product ID</th>
						<th>Product Name</th>
						<th>Product Cost</th>
					</tr>
				</thead>
				<tbody>
					
				</tbody>
			</table>
		</div>

		<script>
		const bodyContent = document.querySelector("#table-content > tbody");
        fetch("http://localhost:8080/findMobilebyID?productName=").then(
            res => {
                res.json().then(
                    data => {                    	
                        console.log(data);
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
    </script>
</body>
</html>