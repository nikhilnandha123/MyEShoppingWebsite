<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="EditSize.aspx.cs" Inherits="EditSize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="content-wrapper mt-5">
            <div class="panel panel-primary">
                <div class="panel-body">
                    <div class="row text-white">
                        <div class="col-sm-6">
                <h2 class="panel-heading text-center">Edit Size</h2>
                            <div class="form-group">
                                <label>Enter ID:</label>
                                <asp:TextBox ID="txtID" CssClass="form-control bg-white" runat="server" AutoPostBack="true" OnTextChanged="txtID_TextChanged"></asp:TextBox>
                            </div>

                            <div class="form-group mt-2">
                                <label>Enter Size (L,S,XL)</label>
                                <asp:TextBox ID="txtSize" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group mt-2">
                                <label>Select Brand</label>
                                <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>

                            <div class="form-group mt-2">
                                <label>Select Category</label>
                                <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                            </div>

                            <div class="form-group mt-2">
                                <label>Sub Category</label>
                                <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>

                            <div class="form-group mt-2">
                                <label>Gender</label>
                                <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server"></asp:DropDownList>
                            </div>
                            <div class="d-grid mt-4">
                                <asp:Button ID="btnUpdateSubCategory" CssClass="btn btn-danger" runat="server" Text="UPDATE" OnClick="btnUpdateSubCategory_Click" />
                            </div>
                        </div>

                        <div class="col-sm-6">

                            <div class="row">
                                <div class="col-md-12">
                                    <h4 class="alert-info text-center">All Size</h4>
                                    <br />
                                    <asp:TextBox ID="txtFilterGrid1Record" Style="border: 2px solid blue" CssClass="form-control" runat="server" placeholder="Search Category...." onkeyup="Search_Gridview(this)"></asp:TextBox>
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
                <div class="panel-footer">Panel Footer</div>
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

