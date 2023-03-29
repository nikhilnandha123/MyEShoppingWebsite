<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container ">
        <div class="content-wrapper mt-5">
            <div class="form-horizontal ">
                <h2 align="center" class="mt-5">ADD CATEGORY</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col control-label text-white" runat="server" Text="Category Name"></asp:Label>
                    <div class="col">
                        <asp:TextBox ID="txtCategory" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtCategoryName" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter Brandname" ControlToValidate="txtCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="d-grid">
                        <asp:Button ID="btnAddtxtCategory" CssClass="btn btn-danger btn-block justify-content-center" runat="server" Text="Add Category" OnClick="btnAddtxtCategory_Click" />
                    </div>
                </div>
            </div>


            <div class="panel panel-default">
                <h2 class="panel-heading text-center mt-2">All Categories</h2>
            <hr />
                <asp:Repeater ID="rptrCategory" runat="server">

                    <HeaderTemplate>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Categories</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>


                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("CatID") %> </th>
                            <td><%# Eval("CatName") %>   </td>
                            <td><a href="EditCategory.aspx">Edit</a></td>
                        </tr>
                    </ItemTemplate>

                    <FooterTemplate>
                        </tbody>
              </table>
                    </FooterTemplate>

                </asp:Repeater>

            </div>
        </div>
    </div>
</asp:Content>

