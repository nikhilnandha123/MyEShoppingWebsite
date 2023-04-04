<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="AddGender.aspx.cs" Inherits="AddGender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container ">
        <div class="content-wrapper mt-5">
            <div class="form-horizontal ">

                <h2 align="center" class="mt-5">ADD GENDER</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" CssClass="col control-label text-white" runat="server" Text="Gender"></asp:Label>
                    <div class="col">
                        <asp:TextBox ID="txtGender" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" CssClass="text-danger " ErrorMessage="*plz Enter Gender" ControlToValidate="txtGender" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="d-grid">
                        <asp:Button ID="btnAddBrand" CssClass="btn btn-danger btn-block justify-content-center" runat="server" Text="Add" OnClick="btnAddBrand_Click" />
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <h2 class="panel-heading text-center mt-2">All Gender</h2>
            <hr />

                <asp:Repeater ID="rptrGender" runat="server">

                    <HeaderTemplate>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Gender</th>
                                    <th>Edit</th>
                                </tr>
                            </thead>

                            <tbody>
                    </HeaderTemplate>


                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("GenderID") %> </th>
                            <td><%# Eval("GenderName") %>   </td>
                            <td>Edit</td>
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
