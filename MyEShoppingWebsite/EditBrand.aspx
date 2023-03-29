﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" EnableEventValidation="false" AutoEventWireup="true" CodeFile="EditBrand.aspx.cs" Inherits="EditBrand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="content-wrapper mt-5">
            <div class="row">
                <div class="col-md-6">
                    <div class="row text-white">
                        <h2 class="text-center">Edit Brand</h2>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Enter ID:</label>
                                <asp:TextBox ID="txtID" CssClass="form-control bg-white" runat="server" AutoPostBack="true" OnTextChanged="txtID_TextChanged"></asp:TextBox>
                            </div>
                            <div class="form-group"></div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Enter Brand:</label>
                                <asp:TextBox ID="txtUpdateBrandName" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                            </div>


                        </div>
                    </div>
                    <div class="d-grid mt-4">
                        <asp:Button ID="btnUpdateBrand" CssClass="btn btn-danger btn-block justify-content-center " runat="server" Text="UPDATE" OnClick="btnUpdateBrand_Click" />
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12">
                            <h4 class="alert-info text-center mt-4">All Brands</h4>
                            <br />
                            <asp:TextBox ID="txtFilterGrid1Record" Style="border: 2px solid blue" CssClass="form-control" runat="server" placeholder="Search Brand...." onkeyup="Search_Gridview(this)"></asp:TextBox>
                            <hr />
                            <div class="table table-responsive">
                                <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" EmptyDataText="Record not found...">
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
        function Search_Gridview(strKey) {
            var strData = strKey.value.toLowerCase().split(" ");
            var tblData = document.getElementById("<%=GridView1.ClientID %>");
            var rowData;
            for (var i = 1; i < tblData.rows.length; i++) {
                rowData = tblData.rows[i].innerHTML;
                var styleDisplay = 'none';
                for (var j = 0; j < strData.length; j++) {
                    if (rowData.toLowerCase().indexOf(strData[j]) >= 0)
                        styleDisplay = '';
                    else {
                        styleDisplay = 'none';
                        break;
                    }
                }
                tblData.rows[i].style.display = styleDisplay;
            }
        }
    </script>
</asp:Content>

