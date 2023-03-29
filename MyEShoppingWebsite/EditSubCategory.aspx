<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="EditSubCategory.aspx.cs" Inherits="EditSubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class=" container">
        <div class="content-wrapper mt-5">
            <%--<div class="well-sm">
                <h3 align="center" style="background: linear-gradient(110deg, #fdcd3b 30%, #ffed4b 60%);">Edit Sub Category</h3>
            </div>--%>
            <div class="row text-white">
              <h2 class="text-center">Edit SubCategory</h2>
                <div class="col-4">
                    <div class="form-group">
                        <label>Enter SubCatID:</label>
                        <asp:TextBox ID="txtID" CssClass="form-control bg-white" runat="server" AutoPostBack="true" OnTextChanged="txtID_TextChanged"></asp:TextBox>
                    </div>
                </div>
                <div class="col-4">
                    <label>Select Category:</label>
                    <asp:DropDownList ID="ddlMainCategory" CssClass="form-control" runat="server">
                    </asp:DropDownList>
                </div>
                <div class="col-4">
                    <label>Sub Category:</label>
                    <asp:TextBox ID="txtSubCategory" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                </div>
                
                <div class="d-grid mt-4">
                    <asp:Button ID="btnUpdateSubCategory" CssClass="btn btn-danger" runat="server" Text="UPDATE" OnClick="btnUpdateSubCategory_Click" />
                </div>
            </div>

            <div class="row mt-5">
                <div class="col-12">
                    <h4 class="alert-dark text-center">All Category</h4>
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

