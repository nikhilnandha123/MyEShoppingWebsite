<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Suppliers.aspx.cs" Inherits="Default2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="form-horizontal">

            <br />
            <br />

            <h2 align="center" style="background: linear-gradient(110deg, #fdcd3b 30%, #ffed4b 60%);">ADD SUPPLIERS</h2>
            <hr />

            <div class="bg">
                <div class="row" style="padding: 10px;">

                    <div class="col">
                        <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Supplier Name"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtSupplierName" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Supplier Name" ForeColor="red" ControlToValidate="txtSupplierName"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Supplier Company Name"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtSupplierCompanyName" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Supplier Comapny Name" ForeColor="red" ControlToValidate="txtSupplierCompanyName"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <div class="row" style="padding: 10px;">

                    <div class="col">
                        <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="Address"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Address" ForeColor="red" ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Supplier Contact Person"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtContact" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Contact" ForeColor="red" ControlToValidate="txtContact"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <br />

                <div class="row" style="padding: 10px;">

                    <div class="col">
                        <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="Supplier Branch"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtbranch" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Branch" ForeColor="red" ControlToValidate="txtbranch"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Supplier Email"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Email" ForeColor="red" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <br />

                <div class="row" style="padding: 10px;">

                    <div class="col">
                        <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Supplier Phone-1"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtphone1" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Phone-no" ForeColor="red" ControlToValidate="txtphone1"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Supplier Phone-2"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtphone2" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Phone-no" ForeColor="red" ControlToValidate="txtphone2"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <br />

                <div class="row" style="padding: 10px;">

                    <div class="col">
                        <asp:Label ID="Label9" runat="server" CssClass="col-md-2 control-label" Text="Supplier City"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtcity" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter City" ForeColor="red" ControlToValidate="txtcity"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="col">
                        <asp:Label ID="Label10" runat="server" CssClass="col-md-2 control-label" Text="Supplier Zip"></asp:Label>
                        <div class="col-md-3">
                            <asp:TextBox ID="txtpin" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ErrorMessage="Please Enter Pin" ForeColor="red" ControlToValidate="txtpin"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>

                <br />
                <br />

                <div class="form-group" align="center" style="margin-left: 100px;">
                    <div class="col"></div>
                    <div class="col-md-10">
                        <asp:Button ID="btnAdd" CssClass="btn btn-success btn-block" runat="server" OnClick="btnAdd_Click" Text="Add Supplier" />
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="container">

        <hr />
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h2 align="center">Supplier List</h2>
            </div>
            <div class="panel-body">
                <div class="col-md-12">
                    <div class="form-group">
                        <div class="table table-responsive">
                            <strong>
                                <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" DataKeyNames="SupplierId" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:BoundField DataField="SupplierId" HeaderText="SupplierId" InsertVisible="False" ReadOnly="True" SortExpression="SupplierId" />
                                        <asp:BoundField DataField="SupplierName" HeaderText="SupplierName" SortExpression="SupplierName" />
                                        <asp:BoundField DataField="SupplierCompanyName" HeaderText="SupplierCompanyName" SortExpression="SupplierCompanyName" />
                                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                        <asp:BoundField DataField="SupplierContactPerson" HeaderText="SupplierContactPerson" SortExpression="SupplierContactPerson" />
                                        <asp:BoundField DataField="SupplierBranch" HeaderText="SupplierBranch" SortExpression="SupplierBranch" />
                                        <asp:BoundField DataField="SupplierEmail" HeaderText="SupplierEmail" SortExpression="SupplierEmail" />
                                        <asp:BoundField DataField="SupplierPhone1" HeaderText="SupplierPhone1" SortExpression="SupplierPhone1" />
                                        <asp:BoundField DataField="SupplierPhone2" HeaderText="SupplierPhone2" SortExpression="SupplierPhone2" />
                                        <asp:BoundField DataField="SupplierCity" HeaderText="SupplierCity" SortExpression="SupplierCity" />
                                        <asp:BoundField DataField="SupplierZip" HeaderText="SupplierZip" SortExpression="SupplierZip" />

                                        <%--     <asp:CommandField ShowEditButton="true" />  
                               <asp:CommandField ShowDeleteButton="true" />--%>
                                    </Columns>
                                </asp:GridView>

                            </strong>

                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyShoppingDB %>" SelectCommand="SELECT * FROM [tblSupplier]"></asp:SqlDataSource>

                        </div>
                    </div>
                </div>
            </div>

            <div class="panel-footer text-info">&copy;2022 &middot;CCS</div>

        </div>
    </div>

</asp:Content>

