<%@ Page Title="Main" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="WebApplication1.Main" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <html lang="en">
<head>
	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->

    <link href="CSS/css/main.css" type="text/css" rel="stylesheet" />
    <link href="CSS/css/util.css" type="text/css" rel="stylesheet" />
<!--===============================================================================================-->
</head>
    <style>

        #services {
            width: 100%;
            border:0px;
            outline:0px;
        }
    </style>
<body>
	
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						Welcome To Safer Dating
					</span>
					<span class="login100-form-title p-b-48">
						<i class="zmdi zmdi-font"></i>
				    
                    
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
				    
                    
					</span>

					<div class="wrap-input100 validate-input"  data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="Email"></span>
					</div>

                    <div class="wrap-input100 validate-input" data-validate = "Please select service">
						<input class="input100" type="text" name="dating">
                        <select name="services" id="services">
                          <option value="okcupid">OkCupid</option>
                          <option value="match">Match.com</option>
                          <option value="eharmony">EHarmony</option>
                          <option value="tinder">Tinder</option>
                        </select>
						<span class="focus-input100" data-placeholder="Dating Service"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="pass">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>
				    
                    
                    <Asp:Button class="login100-form-btn" runat="server" Text="Login" OnClick="Unnamed1_Click" Height="34px" Width="300px" />
	
	
<!--===============================================================================================-->
	<script src="Vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Vendor/bootstrap/js/popper.js"></script>
	<script src="Vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Vendor/daterangepicker/moment.min.js"></script>
	<script src="Vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Scripts/main.js"></script>

</body>
</html>
    </div>
    </div>
    </div>
</asp:Content>
