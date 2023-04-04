<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
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

        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
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
                        <%--                            <li><a href="Default.aspx">Home</a> </li>
                            <li><a href="About.aspx">About</a> </li>--%>
                        <li class="active"><a href="SignUp.aspx">SignUp</a> </li>
                        <li><a href="SignIn.aspx">SignIn</a> </li>
                    </ul>
                </div>

            </div>
        </div>

        <div class="container" style="margin-top: 100px;">
            <div class="form-horizontal">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <center>
                            <img src="icons/images.png" height="50" width="50" /></center>
                        <h2 class="center">SIGN UP</h2>
                        <div class="row">
                            <div class="col-lg-5">
                                <label class="">UserName:</label>
                                <div class="">
                                    <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter Your UserName"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter Username !!</asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-lg-1"></div>
                            <div class="col-lg-5">
                                <label class="" style="float: right;">Your Full Name:</label>
                                <div class="">
                                    <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter Your Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter Full-Name !!</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-5">
                                <label class="">Password:</label>
                                <div class="">
                                    <asp:TextBox ID="txtPass"  runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter Password !!</asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <label class="">Show:</label>
                                <center>
                                    <input type="checkbox" id="showPassword" /></center>
                            </div>
                            <div class="col-lg-5">
                                <label class="" style="float: right;">Confirm Password:</label>
                                <div class="">
                                    <asp:TextBox ID="txtCPass" runat="server" TextMode="Password" Class="form-control" placeholder="Enter Your Confirm password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCPass" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter Confirm Password !!</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-11">
                                <label class="">Email:</label>
                                <div class="">
                                    <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Enter Your Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter Email !!</asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-11">
                                <label class=""></label>
                                <div class="">
                                    <asp:Button ID="txtsignup" Class="btn btn-success btn-block" runat="server" Text="SignUP" OnClick="txtsignup_Click" />
                                    &nbsp;<asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-2"></div>

    </form>
</body>

    <script>
    var showPasswordCheckbox = document.getElementById("showPassword");
        var passwordField = document.getElementById("txtPass");
        var passwordField1 = document.getElementById("txtCPass");

    showPasswordCheckbox.addEventListener("change", function () {
        if (showPasswordCheckbox.checked) {
            passwordField.type = "text";
            passwordField1.type = "text";
        } else {
            passwordField.type = "password";
            passwordField1.type = "password";
        }
    });
    </script>
</html>
