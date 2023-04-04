<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Success.aspx.cs" Inherits="Success" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Placed</title>
    <link href="Styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <div class="container">
                    <div class="center">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />

                        <html>
                        <head>
                            <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
                        </head>
                        <style>
                            body {
                                text-align: center;
                                padding: 40px 0;
                                background: #EBF0F5;
                            }

                            h1 {
                                color: #88B04B;
                                font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
                                font-weight: 900;
                                font-size: 40px;
                                margin-bottom: 10px;
                            }

                            p {
                                color: #404F5E;
                                font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
                                font-size: 20px;
                                margin: 0;
                            }

                            i {
                                color: #9ABC66;
                                font-size: 100px;
                                line-height: 200px;
                                margin-left: -15px;
                            }

                            .card {
                                background: white;
                                padding: 60px;
                                border-radius: 4px;
                                box-shadow: 0 2px 3px #C8D0D8;
                                display: inline-block;
                                margin: 0 auto;
                            }
                        </style>
                        <body>
                            <div class="card">
                                <div style="border-radius: 200px; height: 200px; width: 200px; background: #F8FAF5; margin: 0 auto;">
                                    <i class="checkmark">✓</i>
                                </div>
                                <h1>Success</h1>
                                <p>We received your purchase request;<br />
                                    we'll be in touch shortly!</p>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Font-Size="Large" Text="Back To Products" OnClick="Button1_Click" />
                            </div>
                        </body>
                        </html>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
