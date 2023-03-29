<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <link rel='stylesheet' href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="css/font-awesome.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br />
    <br />
    <br />
    <br />

    <div class="container">

        <form>
        
            <h2 align="center" style="background: linear-gradient(110deg, #fdcd3b 30%, #ffed4b 60%);">Contact Us</h2>

            <div class="row">

                <div class="col-md-6">
                    <div class="form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white"><i class="fa fa-user"></i>&nbsp</span>
                            <label class="form-label">First Name</label>
                        </div>
                        <asp:TextBox ID="txtfname" runat="server" type="name" placeholder="First Name" class="form-control border-left-0" required></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text bg-white"><i class="fa fa-user"></i></span>
                            <label class="form-label">last Name</label>
                        </div>
                        <asp:TextBox ID="txtlname" runat="server" type="email" placeholder="Last Name" class="form-control border-left-0" required></asp:TextBox>
                    </div>
                </div>

            </div>

            <div class="form-group">
                <i class="fa fa-envelope"></i>
                <label class="form-label">E-Mail</label>
                <asp:TextBox ID="txtemail" class="form-control" runat="server" placeholder="E-Mail"></asp:TextBox>
            </div>

            <div class="form-group">
                <i class="fa fa-paper-plane"></i>
                <label class="form-label">Enter Message</label>
                <textarea cols="20" class="form-control" id="message" rows="5" placeholder="Enter message" required></textarea>
            </div>

            <asp:Button ID="btnsend" class="btn btn-info  btn-block btn-md" runat="server" Text="Send" />
        
        </form> 
    </div>

</asp:Content>
