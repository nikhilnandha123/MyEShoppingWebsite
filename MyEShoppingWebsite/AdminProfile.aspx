<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminProfile.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="row mt-lg-n4 mt-md-n4 justify-content-center mt-3">
        <h3 class="mt-5 text-center"><b>Admin Profile</b></h3>
        <div class="col-lg-8 col-md-10 col-sm-12 col-xs-12">
            <div class="card rounded-0 shadow">
                <div class="card-body bg-dark text-white">
                    <div class="container-fluid">
                        <div id="msg"></div>
                        <div class="form-group">
                            <label for="name">Username</label>
                            <asp:TextBox ID="txtusername" type="text" class="form-control bg-white" runat="server" value=""></asp:TextBox>
                        </div>
                        <div class="form-group mt-2">
                            <label for="name">Password</label>
                            <asp:TextBox ID="txtpassword" type="password" class="form-control bg-white" runat="server" value=""></asp:TextBox>
                        </div>
                        <div class="form-group mt-2">
                            <label for="name">Email</label>
                            <input type="email" name="email" id="email" class="form-control bg-white" value="" required>
                        </div>
                        <div class="form-group mt-2">
                            <label for="password">Password</label>
                            <input type="password" name="password" id="password" class="form-control bg-white" value="" autocomplete="off">
                        </div>
                        <div class="form-group mt-2">
                            <label for="name">Role</label>
                            <input type="text" name="role" id="role" class="form-control bg-white" value="" required>
                        </div>
                        <div class="d-grid mt-5">
                            <button class="btn btn-sm btn-primary">Update</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

