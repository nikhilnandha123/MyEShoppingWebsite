<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content-wrapper">
        <div class="container">
            <div class="form-horizontal card p-3 bg-dark text-white">
                <h2 align="center" class="mt-5">ADD PRODUCT</h2>
                <hr />
                <div class="row">
                    <div class="col">
                        <asp:Label ID="Label1" runat="server" CssClass="col control-label" Text="Proudct Name"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtProductName" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Product" ForeColor="red" ControlToValidate="txtProductName"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label2" runat="server" CssClass="col control-label" Text="Price"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtPrice" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Price" ForeColor="red" ControlToValidate="txtProductName"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col">
                        <asp:Label ID="Label3" runat="server" CssClass="col control-label" Text="SellingPrice"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtsellPrice" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Selling Price" ForeColor="red" ControlToValidate="txtsellPrice"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label4" runat="server" CssClass="col control-label" Text="Brand"></asp:Label>
                        <div class="col">
                            <asp:DropDownList ID="ddlBrand" CssClass="form-control" runat="server"></asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Selling Brand" ForeColor="red" ControlToValidate="ddlBrand"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>


                <div class="row">

                    <div class="col">
                        <asp:Label ID="Label5" runat="server" CssClass="col control-label" Text="Category"></asp:Label>
                        <div class="col">
                            <asp:DropDownList ID="ddlCategory" CssClass="form-control" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Fill Up" ForeColor="red" ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label6" runat="server" CssClass="col control-label" Text="SubCategory"></asp:Label>
                        <div class="col">
                            <asp:DropDownList ID="ddlSubCategory" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col">
                        <asp:Label ID="Label19" runat="server" CssClass="col control-label" Text="Gender"></asp:Label>
                        <div class="col">
                            <asp:DropDownList ID="ddlGender" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlGender_SelectedIndexChanged"></asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Fill Up" ForeColor="red" ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label7" runat="server" CssClass="col control-label" Text="Size"></asp:Label>
                        <div class="col">
                            <asp:CheckBoxList ID="cblSize" CssClass="form-control" RepeatDirection="Horizontal" runat="server"></asp:CheckBoxList>
                        </div>
                    </div>

                </div>


                <div class="row">

                    <div class="col">
                        <asp:Label ID="Label20" runat="server" CssClass="col control-label" Text="Quantity"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtQuantity" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Quantity" ForeColor="red" ControlToValidate="txtQuantity"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label8" runat="server" CssClass="col control-label" Text="Description"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Description" ForeColor="red" ControlToValidate="txtDescription"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col">
                        <asp:Label ID="Label9" runat="server" CssClass="col control-label" Text="Product Details"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtPDetail" TextMode="MultiLine" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Detail" ForeColor="red" ControlToValidate="txtPDetail"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label10" runat="server" CssClass="col control-label" Text="Materials and Care"></asp:Label>
                        <div class="col">
                            <asp:TextBox ID="txtMatCare" TextMode="MultiLine" CssClass="form-control bg-white" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Fill Up" ForeColor="red" ControlToValidate="txtMatCare"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col">
                        <asp:Label ID="Label11" runat="server" CssClass="col control-label" Text="Upload Image-I"></asp:Label>
                        <div class="col">
                            <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Chhose Image" ForeColor="red" ControlToValidate="fuImg01"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label12" runat="server" CssClass="col control-label" Text="Upload Image-II"></asp:Label>
                        <div class="col">
                            <asp:FileUpload ID="fuImg02" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Chhose Image" ForeColor="red" ControlToValidate="fuImg02"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col">
                        <asp:Label ID="Label13" runat="server" CssClass="col control-label" Text="Upload Image-III"></asp:Label>
                        <div class="col">
                            <asp:FileUpload ID="fuImg03" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Chhose Image" ForeColor="red" ControlToValidate="fuImg03"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label14" runat="server" CssClass="col control-label" Text="Upload Image-IV"></asp:Label>
                        <div class="col">
                            <asp:FileUpload ID="fuImg04" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Chhose Image" ForeColor="red" ControlToValidate="fuImg04"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col">
                        <asp:Label ID="Label15" runat="server" CssClass="col control-label" Text="Upload Image-V"></asp:Label>
                        <div class="col">
                            <asp:FileUpload ID="fuImg05" CssClass="form-control" runat="server" />
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Chhose Image" ForeColor="red" ControlToValidate="fuImg05"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col">
                        <asp:Label ID="Label16" runat="server" CssClass="col control-label" Text="Free Delivery"></asp:Label>
                        <div class="col">
                            <asp:CheckBox ID="chFD" runat="server" />
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label17" runat="server" CssClass="col control-label" Text="30 Days Return"></asp:Label>
                        <div class="col">
                            <asp:CheckBox ID="ch30Ret" runat="server" />
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label18" runat="server" CssClass="col control-label" Text="COD"></asp:Label>
                        <div class="col">
                            <asp:CheckBox ID="cbCOD" runat="server" />
                        </div>
                    </div>

                </div>

                <div class="form-group" align="center">
                    <div class="d-grid">
                        <asp:Button ID="btnAdd" CssClass="btn btn-danger btn-block justify-content-center" runat="server" Text="ADD Product" OnClick="btnAdd_Click" />
                    </div>
                </div>

            </div>
        </div>

        <div class="container">

            <div class="panel panel-primary bg-dark">
                <div class="panel-heading">
                    <h2 class="text-center">Product Report</h2>
                </div>
                <hr />
                <div class="panel-body">
                    <div class="col-md-12">
                        <div class="form-group">
                            <div class="table table-responsive">
                                <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:BoundField DataField="PID" HeaderText="S.No." />
                                        <asp:BoundField DataField="PName" HeaderText="PName" />
                                        <asp:BoundField DataField="PPrice" HeaderText="Price" />
                                        <asp:BoundField DataField="PSelPrice" HeaderText="SellPrice" />
                                        <asp:BoundField DataField="Brand" HeaderText="Brand" />
                                        <asp:BoundField DataField="CatName" HeaderText="Category" />
                                        <asp:BoundField DataField="SubCatName" HeaderText="SubCategory" />
                                        <asp:BoundField DataField="gender" HeaderText="gender" />
                                        <asp:BoundField DataField="SizeName" HeaderText="SizeName" />
                                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
