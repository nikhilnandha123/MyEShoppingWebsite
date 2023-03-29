<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <title>About me Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script language="javascript" type="text/javascript"></script>

    <style>
                .jumbotron {
            background-color: #f4511e;
            color: #fff;
            padding: 100px 25px;
        }

        .container-fluid {
            padding: 60px 50px;
        }

        .bg-grey {
            background-color: #f6f6f6;
        }

        .logo-small {
            color: #f4511e;
            font-size: 50px;
        }

        .logo {
            color: #f4511e;
            font-size: 200px;
        }

        @media screen and (max-width: 768px) {
            .col-sm-4 {
                text-align: center;
                margin: 25px 0;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="jumbotron text-center">
        <h1>My Shopping Website</h1>
        <p></p>
        <form class="form-inline">
            <div class="input-group">
            </div>
        </form>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-8">
                <h2>About Company Page</h2><br />
                <%--<h4>Developer..</h4>--%>
                <p>Compughost Complete Solutions (CCS) is an INDIA base IT Solutions Consultancy that delivers high quality Software and Website Solutions aimed at small to medium sized business and industries. We at CCS are serving the IT solutions since April 2002 to our valuable customers. We have provided superior service to our customers and have assisted them in achieving their business goals. Our experience and commitment to excellence have earned us the reputation as the best IT Solution Provider in the area.</p>
                <%--<button  id="btn11" runat="server" onclick="btn11_onclick()">Get in Touch</button>--%>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-signal logo"></span>
            </div>
        </div>
    </div>

    <div class="container-fluid text-center">
        
        <h2>SERVICES</h2>
        <h4>What we offer</h4>
        
        <br>
        
        <div class="row">
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-off logo-small"></span>
                <h4>POWER</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-heart logo-small"></span>
                <h4>LOVE</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-lock logo-small"></span>
                <h4>JOB DONE</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>
        </div>
        
        <br>
        <br>
    
        <div class="row">
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-leaf logo-small"></span>
                <h4>GREEN</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>

            <div class="col-sm-4">
                <span class="glyphicon glyphicon-certificate logo-small"></span>
                <h4>CERTIFIED</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>
            <div class="col-sm-4">
                <span class="glyphicon glyphicon-wrench logo-small"></span>
                <h4 style="color: #303030;">HARD WORK</h4>
                <p>Lorem ipsum dolor sit amet..</p>
            </div>
        </div>
    </div>

    <footer class="container-fluid text-center">
        <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a>
        <p>Made By <a href="https://compughost.com/" title="Visit w3schools">Compughost Complete Solution</a></p>
    </footer>

</asp:Content>

