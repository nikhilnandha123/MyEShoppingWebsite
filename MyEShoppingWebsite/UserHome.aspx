<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Home Page</title>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link href="css/Custome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });
    </script>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Roboto');

        body {
            background-color: #2C3A47;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Roboto', sans-serif;
            height: 100vh;
            margin: 0;
            padding: 0;
        }

        .container {
            position: relative;
            height: 400px;
            width: 400px;
            overflow: hidden;
            box-shadow: 0px 2px 5px rgba(0,0,0,0.3);
            transition: box-shadow 0.3s ease-out;
        }

            .container:hover {
                box-shadow: 1px 2px 10px rgba(0,0,0,0.5);
            }

        .img-container {
            background-color: #000;
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
            width: 100%;
            transition: transform 0.3s ease-out;
            z-index: 2;
        }

            .img-container:hover {
                cursor: pointer;
            }

        .container:hover .img-container {
            transform: translateY(-100px);
        }

        .img-container > img {
            height: 100%;
            width: 100%;
            transition: opacity 0.3s ease-out;
        }

        .container:hover > .img-container > img {
            opacity: 0.5;
        }

        .social-media {
            display: flex;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            z-index: 3;
            margin: 0;
            padding: 0;
        }

            .social-media > li {
                list-style: none;
            }

                .social-media > li > a {
                    display: block;
                    height: 50px;
                    width: 50px;
                    background-color: #FFF;
                    text-align: center;
                    color: #262626;
                    margin: 0 5px;
                    border-radius: 50%;
                    opacity: 0;
                    transform: translateY(200px);
                    transition: all 0.3s ease-out;
                }

        .container:hover > .social-media > li > a {
            transform: translateY(0);
            opacity: 1;
        }

        .social-media > li > a > .fa {
            font-size: 24px;
            line-height: 50px;
            transition: transform 0.3s ease-out;
        }

        .social-media > li > a:hover > .fa {
            transform: rotateY(360deg);
        }

        .container:hover .social-media li:nth-child(1) a {
            transition-delay: 0s;
            background-color: deepskyblue;
        }

        .container:hover .social-media li:nth-child(2) a {
            transition-delay: 0.1s;
            background-color: aqua;
        }

        .container:hover .social-media li:nth-child(3) a {
            transition-delay: 0.2s;
            background-color: azure;
        }

        .container:hover .social-media li:nth-child(4) a {
            transition-delay: 0.3s;
            background-color: cornflowerblue;
        }

        .container:hover .social-media li:nth-child(5) a {
            transition-delay: 0.4s;
            background-color: hotpink
        }

        .user-info {
            position: absolute;
            bottom: 0;
            left: 0;
            background-color: #FFF;
            height: 100px;
            width: 100%;
            box-sizing: border-box;
            padding: 10px;
            text-align: center
        }

            .user-info > h2 {
                padding: 0;
                margin: 10px 0;
            }

            .user-info > span {
                color: #262626;
                font-size: 16px;
            }

        .fab {
            margin-top: 16px;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="containers">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="UserHome.aspx"><span>
                        <img src="icons/images.png" alt="MyEShoppoing" height="30" />
                    </span>MyEShopping </a>

                </div>

                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="UserHome.aspx">Home</a> </li>
                        <li><a href="About.aspx">About</a> </li>
                        <li><a href="Contact.aspx">Contact US</a> </li>
                        <li><a href="Products.aspx">Product</a> </li>
                        <li>
                            <button id="btnCart" class="btn btn-primary navbar-btn" type="button">
                                Cart<span class="badge" id="pCount" runat="server"></span>
                            </button>
                        </li>
                        <li>
                            <asp:Button ID="btnLogin" CssClass="btn btn-default navbar-btn " runat="server" Text="SignIn" OnClick="btnLogin_Click" />
                            <asp:Button ID="btnlogout" CssClass="btn btn-default navbar-btn " runat="server" Text="Sign Out" OnClick="btnlogout_Click" />
                        </li>
                        <li>
                            <asp:Button ID="Button1" CssClass="btn btn-link navbar-btn " runat="server" Text="" />
                        </li>
                    </ul>
                </div>
            </div>
        </div>


        <div class="container">
            <div class="img-container">
                <img src="wwwroot/images/ceo.jpg" alt="">
            </div>
            <ul class="social-media">
                <li><a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook"></i></a></li>
                <li><a href="https://www.twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a></li>
                <li><a href="https://www.google.com/" target="_blank"><i class="fab fa-google-plus"></i></a></li>
                <li><a href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin"></i></a></li>
                <li><a href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a></li>
            </ul>
            <div class="user-info">
                <h2>
                    <asp:Label ID="lblSuccess" runat="server" CssClass="text-dark"></asp:Label></h2>
            </div>
        </div>


    </form>
</body>
</html>


