<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddBrand.aspx.cs" Inherits="AddBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container ">
        <div class="content-wrapper mt-5">
            <div class="form-horizontal ">
                <h2 align="center" class="mt-5">ADD BRAND</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col control-label text-white" runat="server" Text="BrandName"></asp:Label>
                    <div class="col">
                        <asp:TextBox ID="txtBrand" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorBrandName" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter Brandname" ControlToValidate="txtBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="d-grid">
                        <asp:Button ID="btnAddBrand" CssClass="btn btn-danger btn-block justify-content-center" runat="server" Text="Add" OnClick="btnAddBrand_Click" />
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <h2 class="panel-heading text-center mt-3">All Brands</h2>
                <hr />
                <asp:Repeater ID="rptrBrands" runat="server">

                    <HeaderTemplate>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Brand</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("BrandID") %> </th>
                            <td><%# Eval("Name") %>   </td>
                            <td><a href="EditBrand.aspx">Edit</a></td>
                        </tr>
                    </ItemTemplate>


                    <FooterTemplate>
                        </tbody>
              </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>

            <hr />
        </div>
    </div>

</asp:Content>

