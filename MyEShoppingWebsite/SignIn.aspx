<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

    <form id="form1" runat="server">

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
                        <%--<li><a href="Default.aspx">Home</a> </li>--%>
                        <li class=""><a href="AdminLogin.aspx">Admin</a> </li>
                        <li><a href="SignUp.aspx">SignUp</a> </li>
                        <li class=""><a href="SignIn.aspx">SignIn</a> </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container" style="margin-top: 100px;">
            <div class="form-horizontal">
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <center>
                            <img src="icons/images.png" height="50" width="50" /></center>
                        <h2 class="center">USER</h2>
                        <hr /> 
                        <div class="form-group">
                            <label>UserName:</label>
                            <div class="">
                                <asp:TextBox ID="txtUsername" placeholder="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Password:</label>
                            <asp:TextBox ID="txtPass" placeholder="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RegularExpressionValidator runat="server"
                                ControlToValidate="txtPass"
                                ValidationExpression="(?=.{8,})[a-zA-Z]+[^a-zA-Z]+|[^a-zA-Z]+[a-zA-Z]+"
                                Display="Dynamic"
                                ForeColor="Red"
                                ErrorMessage="Password must be 8 characters and have both letters and numbers." />
                        </div>
                        <div class="form-group">
                                <input type="checkbox" id="showPassword" />
                                <label for="showPassword">Show Password</label>
                        </div>
                        <div class="form-group">
                            <div>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                <asp:Label ID="Label3" CssClass=" control-label " runat="server" Text="Remember me"></asp:Label>
                                <asp:HyperLink ID="HyForgotPass" runat="server" Style="margin-left: 150px;" NavigateUrl="~/ForgotPassword.aspx"><i class="fa fa-key"></i> Forgot Password</asp:HyperLink>
                            </div>
                                <asp:Label ID="lblError" CssClass="text-danger " runat="server"></asp:Label>
                            <div style="margin-top:10px;">
                                <asp:Button ID="btnLogin" CssClass="btn-block btn btn-success" runat="server" Text="Login&raquo;" OnClick="btnLogin_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%--<footer class="navbar-fixed-bottom">
            <div class="alert alert-danger ">
                <p class="pull-right "><a href="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a><a href="AdminLogin.aspx">Admin Login  </a></p>
                <p class="pull-right "></p>
                <p>&copy;2022 &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Products</a></p>
            </div>
        </footer>--%>

    </form>

</body>

<script>
    var showPasswordCheckbox = document.getElementById("showPassword");
    var passwordField = document.getElementById("txtPass");

    showPasswordCheckbox.addEventListener("change", function () {
        if (showPasswordCheckbox.checked) {
            passwordField.type = "text";
        } else {
            passwordField.type = "password";
        }
    });
</script>


</html>

