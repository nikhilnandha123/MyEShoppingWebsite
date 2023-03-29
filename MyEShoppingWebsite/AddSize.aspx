<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="AddSize.aspx.cs" Inherits="AddSize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <div class="container ">
        <div class="content-wrapper mt-5">
            <div class="form-horizontal ">

                <h2 align="center" class="mt-5">ADD SIZE</h2>
                <hr />
                <div class="row text-white">
                    <div class="col">
                        <asp:Label ID="Label1" CssClass="col control-label " runat="server" Text="Size Name"></asp:Label>
                        <div class="col ">
                            <asp:TextBox ID="txtSize" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSize" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter Size" ControlToValidate="txtSize" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>


                    <div class="col">
                        <asp:Label ID="Label3" CssClass="col control-label " runat="server" Text="Brand"></asp:Label>
                        <div class="col">
                            <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorddlBrand" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter Main CategoryID" ControlToValidate="ddlBrand" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row text-white">
                    <div class="col">
                        <asp:Label ID="Label4" CssClass="colcontrol-label m-2 " runat="server" Text="Category"></asp:Label>
                        <div class="col">
                            <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorCategory" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter  Category" ControlToValidate="ddlCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                    </div>
                    <div class="col">
                        <asp:Label ID="Label2" CssClass="colcontrol-label m-2" runat="server" Text="Sub Category"></asp:Label>
                        <div class="col">
                            <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorSubCategory" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter Sub Category" ControlToValidate="ddlSubCategory" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label5" CssClass="col control-label " runat="server" Text="Gender"></asp:Label>
                        <div class="col">
                            <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter Gender" ControlToValidate="ddlGender" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="d-grid">
                        <asp:Button ID="btnAddSize" CssClass="btn btn-danger btn-block" runat="server" Text="Add Size" OnClick="btnAddSize_Click" />
                    </div>      
                </div>
            </div>


            <div class="panel panel-default">
                <h2 class="panel-heading text-center mt-2">All Sizes</h2>
            <hr />


                <asp:Repeater ID="rptrSize" runat="server">

                    <HeaderTemplate>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Size</th>
                                    <th>Brand</th>
                                    <th>Category</th>
                                    <th>Sub Category</th>
                                    <th>Gender</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>


                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("SizeID") %> </th>
                            <td><%# Eval("SizeName") %>   </td>
                            <td><%# Eval("Name") %>   </td>
                            <td><%# Eval("CatName") %>   </td>
                            <td><%# Eval("SubCatName") %>   </td>
                            <td><%# Eval("GenderName") %>   </td>
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
