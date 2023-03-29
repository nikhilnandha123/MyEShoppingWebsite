<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My E-Shopping Website</title>
    <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <%--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });

    </script>
    <style>
        .w3-sidebar a {
            font-family: "Roboto", sans-serif
        }

        body, h1, h2, h3, h4, h5, h6, .w3-wide {
            font-family: "Montserrat", sans-serif;
        }
    </style>
    <script>
        // Accordion 
        function myAccFunc() {
            var x = document.getElementById("demoAcc");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }

        // Click on the "Jeans" link on page load to open the accordion for demo purposes
        document.getElementById("myBtn").click();


        // Open and close sidebar
        function w3_open() {
            document.getElementById("mySidebar").style.display = "block";
            document.getElementById("myOverlay").style.display = "block";
        }

        function w3_close() {
            document.getElementById("mySidebar").style.display = "none";
            document.getElementById("myOverlay").style.display = "none";
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">

        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container ">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                            class="icon-bar"></span><span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Default.aspx"><span>
                        <img src="icons/images.png" alt="MyEShoppoing" height="30" /></span>MyEShopping
                    </a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Default.aspx">Home</a> </li>
                        <li><a href="About.aspx">About</a> </li>
                        <li>
                            <button id="btnCart" class="btn btn-primary navbar-btn " type="button">
                                Cart <span class="badge " id="pCount" runat="server"></span>
                            </button>
                        </li>
                        <li id="btnSignUP" runat="server"><a href="SignUp.aspx">SignUp</a> </li>
                        <li id="btnSignIN" runat="server"><a href="SignIn.aspx">SignIn</a> </li>
                        <%--<li>
                                <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn " runat="server"
                                    Text="Sign Out" OnClick="btnlogout_Click" />
                            </li>--%>
                    </ul>
                </div>
            </div>
        </div>

        <header class="w3-bar w3-top w3-hide-large w3-black w3-xlarge">
            <div class="w3-bar-item w3-padding-24 w3-wide">LOGO</div>
            <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
        </header>

        <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor: pointer" title="close side menu" id="myOverlay"></div>

        <div class="w3-main" style="margin-top: 80px;">
            <header class="w3-container w3-xlarge"></header>

            <div class="w3-display-container w3-container">
                <img src="ImgSlider/frontpage.jpg" alt="Jeans" style="width: 100%">
                <div class="w3-display-topleft w3-text-white" style="padding: 24px 48px">
                    <h1 class="w3-jumbo w3-hide-small">New arrivals</h1>
                    <h1 class="w3-hide-large w3-hide-medium">New arrivals</h1>
                    <h1 class="w3-hide-small">COLLECTION 2023</h1>
                    <p><a href="#jeans" class="w3-button w3-black w3-padding-large w3-large">SHOP NOW</a></p>
                </div>
            </div>
            <div class="panel w3-display-container w3-container" style="margin-top: 10px; color: white; background-color: black;">
                <div class="panel-heading text-center">
                    BLACK FRIDAY DEAL
                </div>
                <hr />
                <div class="panel-body">
                    <div class="row" style="padding-top: 50px">
                        <asp:Repeater ID="rptrProducts" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-3 col-md-3">
                                    <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration: none;">
                                        <div class="thumbnail">
                                            <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>"
                                                alt="<%# Eval("ImageName") %>" />
                                            <div class="caption">
                                                <div class="probrand">
                                                    <%# Eval ("BrandName") %>
                                                </div>
                                                <div class="proName">
                                                    <%# Eval ("PName") %>
                                                </div>
                                                <div class="proPrice">
                                                    <span class="proOgPrice">
                                                        <%# Eval ("PPrice","{0:0,00}") %>
                                                    </span>
                                                    <%# Eval ("PSelPrice","{0:c}") %>
                                                    <span class="proPriceDiscount">(<%# Eval("DiscAmount","{0:0,00}") %>off) </span>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div class="panel-footer text-center" style="background-color: black; color: azure;">
                    Buy 50 Clothes and get a gift card
                </div>
            </div>

            <!-- Subscribe section -->
            <div class="w3-container w3-black w3-padding-32" style="margin-top: 10px;">
                <h1>Subscribe</h1>
                <p>To get special offers and VIP treatment:</p>
                <p>
                    <input class="w3-input w3-border" type="text" placeholder="Enter e-mail" style="width: 100%">
                </p>
                <button type="button" class="w3-button w3-red w3-margin-bottom">Subscribe</button>
            </div>

            <!-- Footer -->
            <footer class="w3-padding-64 w3-light-grey w3-small w3-center" id="footer">
                <div class="w3-row-padding">
                    <div class="w3-col s3">
                        <h4>Contact</h4>
                        <p>Questions? Go ahead.</p>
                        <form action="/action_page.php" target="_blank">
                            <p>
                                <input class="w3-input w3-border" type="text" placeholder="Name" name="Name" required>
                            </p>
                            <p>
                                <input class="w3-input w3-border" type="text" placeholder="Email" name="Email" required>
                            </p>
                            <p>
                                <input class="w3-input w3-border" type="text" placeholder="Subject" name="Subject" required>
                            </p>
                            <p>
                                <input class="w3-input w3-border" type="text" placeholder="Message" name="Message" required>
                            </p>
                            <button type="submit" class="w3-button w3-block w3-black">Send</button>
                        </form>
                    </div>

                    <div class="w3-col s3">
                        <h4>About</h4>
                        <p><a href="#">About us</a></p>
                        <p><a href="#">We're hiring</a></p>
                        <p><a href="#">Support</a></p>
                        <p><a href="#">Find store</a></p>
                        <p><a href="#">Shipment</a></p>
                        <p><a href="#">Payment</a></p>
                        <p><a href="#">Gift card</a></p>
                        <p><a href="#">Return</a></p>
                        <p><a href="#">Help</a></p>
                    </div>

                    <div class="w3-col s3 w3-justify">
                        <h4>Store</h4>
                        <p><i class="fa fa-fw fa-map-marker"></i>Company Name</p>
                        <p><i class="fa fa-fw fa-phone"></i>0044123123</p>
                        <p><i class="fa fa-fw fa-envelope"></i>ex@mail.com</p>
                    </div>
                    <div class="w3-col s3 w3-justify">
                        <h4>We accept</h4>
                        <p><i class="fa fa-fw fa-cc-amex"></i>Amex</p>
                        <p><i class="fa fa-fw fa-credit-card"></i>Credit Card</p>
                        <i class="fa fa-facebook-official w3-hover-opacity w3-large"></i>
                        <i class="fa fa-instagram w3-hover-opacity w3-large"></i>
                        <i class="fa fa-snapchat w3-hover-opacity w3-large"></i>
                        <i class="fa fa-pinterest-p w3-hover-opacity w3-large"></i>
                        <i class="fa fa-twitter w3-hover-opacity w3-large"></i>
                        <i class="fa fa-linkedin w3-hover-opacity w3-large"></i>
                    </div>

                </div>
            </footer>

            <div class="w3-black w3-center w3-padding-24">Powered by <a href="https://www.compughost.com" title="CCS" target="_blank" class="w3-hover-opacity">CCS</a></div>
        </div>

        <div id="newsletter" class="w3-modal">
            <div class="w3-modal-content w3-animate-zoom" style="padding: 32px">
                <div class="w3-container w3-white w3-center">
                    <i onclick="document.getElementById('newsletter').style.display='none'" class="fa fa-remove w3-right w3-button w3-transparent w3-xxlarge"></i>
                    <h2 class="w3-wide">NEWSLETTER</h2>
                    <p>Join our mailing list to receive updates on new arrivals and special offers.</p>
                    <p>
                        <input class="w3-input w3-border" type="text" placeholder="Enter e-mail">
                    </p>
                    <button type="button" class="w3-button w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('newsletter').style.display='none'">Subscribe</button>
                </div>
            </div>
        </div>

        <footer class="navbar-fixed-bottom">
            <div class="alert alert-danger ">
                <p class="pull-right "><a href="#">&nbsp; &nbsp; Back to top &nbsp; &nbsp;</a><a href="AdminLogin.aspx">Admin Login  </a></p>
                <p class="pull-right "></p>
                <p>&copy;2022 &middot;&middot;&middot;CCS</p>
            </div>
        </footer>

    </form>
</body>
</html>
