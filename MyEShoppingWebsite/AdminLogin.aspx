<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="css/Custome.css" rel="stylesheet" />
    <link href="~/css/font-awesome.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


</head>
<body>
    <form id="form1" runat="server">
    
        <div class="navbar navbar-default navbar-fixed-top " role="navigation">
            <div class="container ">
                <div class="navbar-header">
                    <a class="navbar-brand" href="Default.aspx"><span>
                        <img src="icons/images.png" alt="MyEShoppoing" height="30" /></span>MyEShopping </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Home</a> </li>
                        <li><a href="#">About</a> </li>
                        <li><a href="#">Contact US</a> </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="container" style="margin-top:100px;">
                <div class="form-horizontal">
                    <div class="row">
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <center>
                                <img src="icons/images.png" height="50" width="50" /></center>
                            <h2 class="text-center">ADMIN</h2>
                            <hr />
                            <div class="form-group">
                                <asp:Label ID="Label1" CssClass="col control-label" runat="server" Text="UserName"></asp:Label>
                                <div class="col">
                                    <asp:TextBox ID="txtUsername" placeholder="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label2" CssClass="col control-label " runat="server" Text="Password"></asp:Label>
                                <div class="col">
                                    <asp:TextBox ID="txtPass" placeholder="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger " runat="server" ErrorMessage="*the password field is required" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col">
                                    <asp:Button ID="btnadmin" CssClass="btn btn-success btn-block justify-content-center" runat="server" Text="Admin&raquo;" OnClick="btnadmin_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>
    
    </form>

        <footer class="navbar-fixed-bottom">
        <div class="alert alert-danger ">
            <p class="pull-right "><a href="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a><a href="SignIn.aspx">User Login  </a></p>
            <p class="pull-right "></p>
            <p>&copy;2022 &middot; <a href="Default.aspx">Home</a>&middot;<a href="#">About</a>&middot;<a href="#">Contact</a>&middot;<a href="#">Products</a></p>
        </div>
    </footer>

</body>
</html>
