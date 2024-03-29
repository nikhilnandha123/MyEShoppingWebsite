﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Forgot password</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top " role="navigation">
                <div class="container ">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img src="icons/images.png" alt="MyEShoppoing" height="30" /></span>MyEShopping </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a> </li>
                            <li><a href="About.aspx">About</a> </li>
                            <li><a href="#">Contact US</a> </li>                         
                            <li><a href="SignIn.aspx">SignIn</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="form-horizontal">
                <h2>Recover Password</h2>
                <hr />
                <h3 class="text-center text-danger">Please Enter Your Email Address, we will send you the recovery link for your password!</h3>
                 <br />

                <div class="col-lg-4"></div>
                <div class="form-group text-center">
                    <div class="col-md-3">
                    <asp:Label ID="lblEmail" CssClass="control-label" runat="server" Text="Enter Your Email Address"></asp:Label>
                        <asp:TextBox ID="txtEmailID" CssClass="form-control" style="margin-top:10px; border-radius:50px" placeholder="Enter Your E-Mail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="Text-danger" runat="server" ErrorMessage="Enter Your Email" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
             <div class="col-lg-4"></div>
                <div class="form-group">
                    <div class="col-md-3 text-center">
                        <asp:Button ID="btnResetPass" CssClass="btn btn-primary btn-block" style="border-radius:50px;" runat="server" Text="Send" OnClick="btnResetPass_Click" />
                        <asp:Label ID="lblResetPassMsg" CssClass="text-success " runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!---Footer COntents Start here---->
    <hr />
    <footer class="navbar-fixed-bottom bg-danger">
        <div class="container">
            <p class="pull-right "><a href="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
            <p class="pull-right "><a href="AdminHome.aspx">Admin Login  </a></p>
            <p>&copy;2020 Coderbaba.in &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Products</a> </p>
        </div>
    </footer>

    <!---Footer COntents End---->
</body>
</html>
