<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="SubCategory.aspx.cs" Inherits="SubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container ">
        <div class="content-wrapper mt-5">
            <div class="form-horizontal ">
                <h2 align="center" class="mt-5">ADD SUBCATEGORY</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label2" CssClass="col control-label text-white" runat="server" Text="Main CategoryID"></asp:Label>
                    <div class="col">
                        <asp:DropDownList ID="ddlMainCatID" CssClass="form-control" runat="server"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter Main CategoryID" ControlToValidate="ddlMainCatID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col control-label text-white" runat="server" Text="SubCategory Name"></asp:Label>
                    <div class="col">
                        <asp:TextBox ID="txtSubCategory" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatortxtSubCategoryName" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter SubCategory" ControlToValidate="txtSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="d-grid">
                        <asp:Button ID="btnAddSubCategory" CssClass="btn btn-danger btn-block justify-content-center " runat="server" Text="Add SubCategory" OnClick="btnAddSubCategory_Click" />
                    </div>
                </div>
            </div>


            <div class="panel panel-default">
                <h2 class="panel-heading text-center mt-2">All Sub Categories</h2>
            <hr />

                <asp:Repeater ID="rptrSubCat" runat="server">

                    <headertemplate>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Sub-Category</th>
                                    <th>Main Category</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>
                            <tbody>
                    </headertemplate>


                    <itemtemplate>
                        <tr>
                            <th><%# Eval("SubCatID") %> </th>
                            <td><%# Eval("SubCatName") %>   </td>
                            <td><%# Eval("CatName") %>   </td>
                            <td><a href="EditSubCategory.aspx">Edit</a></td>
                        </tr>
                    </itemtemplate>


                    <footertemplate>
                        </tbody>
              </table>
                    </footertemplate>

                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>

