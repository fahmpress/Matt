<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Aplikasi Pengajuan TA | Login</title>
                <link rel="shortcut icon" href="img/poltek.ico" >
		<meta name="description" content="description">
		<meta name="author" content="Evgeniya">
		<meta name="keyword" content="keywords">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="plugins/bootstrap/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" href="font-awesome-4.3.0/css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
		<link href="css/style.css" rel="stylesheet">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
				<script src="http://getbootstrap.com/docs-assets/js/html5shiv.js"></script>
				<script src="http://getbootstrap.com/docs-assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
<body>
    <% 
        if (request.getParameter("login")==null){
            out.println("");
        }
        else if (request.getParameter("login").equals("gagal")){
            %>
                <div class="alert alert-danger alert-dismissable">
                Login gagal, Username atau Password salah. <a href="index.jsp" class="alert-link"><i class="fa fa-times"></i></a>
                </div>
            <%
        }
    %>
    
<div class="container-fluid">
	<div id="page-login" class="row">
		<div class="col-xs-12 col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
			<div class="box">
				<div class="box-content">
					<div class="text-center">
						<h3 class="page-header">Aplikasi Pengajuan TA | Login</h3>
					</div>
                                    <form role="form" method="post" action="proses.jsp?act=login">
					<div class="form-group">
						<label class="control-label">Username</label>
						<input type="text" class="form-control" name="user" required>
					</div>
					<div class="form-group">
						<label class="control-label">Password</label>
						<input type="password" class="form-control" name="pass" required>
					</div>
					<div class="text-center">
						<input type="submit" value="Login" class="btn btn-primary">
					</div>
                                        </form>
				</div>
			</div>
		</div>
	</div>
</div>
    
    <script>
    $("#commentForm").validate();
    </script>
    
</body>
</html>
