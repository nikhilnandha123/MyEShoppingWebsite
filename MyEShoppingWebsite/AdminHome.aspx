<%@ Page Title="" Language="C#" EnableEventValidation="false" EnableViewState="false" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="content-wrapper pt-4 px-4 text-white">
        <div class="row g-4">
            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="fas fa-box fa-3x text-primary"></i>
                    <div class="ms-3" style="font-size:30px;">
                        <asp:Label ID="lblcount1" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="d-grid">
                    <asp:Button ID="btnproduct" class="btn btn-danger btn-block" runat="server" OnClick="btnproduct_Click" Text="Show Products" />
                </div>
            </div>

            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="fas fa-user fa-3x text-primary"></i>
                    <div class="ms-3" style="font-size:30px;">
                        <asp:Label ID="lblCount" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="d-grid">
                    <asp:Button ID="btncount" class="btn btn-danger btn-block" runat="server" OnClick="btncount_Click" Text="Show User" />
                </div>
            </div>

            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="fas fa-person-booth fa-3x text-primary"></i>
                    <div class="ms-3" style="font-size:30px;">
                        <asp:Label ID="lblcount2" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="d-grid">
                    <asp:Button ID="btncustomer" class="btn btn-danger btn-block" runat="server" Text="Show Customer" OnClick="btncustomer_Click" />
                </div>
            </div>

            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="fas fa-braille fa-3x text-primary"></i>
                    <div class="ms-3" style="font-size:30px;">
                        <asp:Label ID="lblcount3" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="d-grid">
                    <asp:Button ID="btnBrand" class="btn btn-danger btn-block" runat="server" Text="Show Brand" OnClick="btnBrand_Click" />
                </div>
            </div>
        </div>

        <div class="row g-4 mt-2">
            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="fas fa-cube fa-3x text-primary"></i>
                    <div class="ms-3" style="font-size:30px;">
                        <asp:Label ID="lblcount4" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="d-grid">
                    <asp:Button ID="btnCategory" class="btn btn-danger btn-block" runat="server" Text="Show Category" OnClick="btnCategory_Click" />
                </div>
            </div>

            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="fas fa-cubes fa-3x text-primary"></i>
                    <div class="ms-3" style="font-size:30px;">
                        <asp:Label ID="lblcount5" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="d-grid">
                    <asp:Button ID="btnSubCategory" class="btn btn-danger btn-block" runat="server" Text="Show SubCategory" OnClick="btnSubCategory_Click" />
                </div>
            </div>

            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="fa fa-shopping-cart fa-3x text-primary"></i>
                    <div class="ms-3"style="font-size:30px;">
                        <asp:Label ID="lblcount6" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="d-grid">
                    <asp:Button ID="btncart" class="btn btn-danger btn-block" runat="server" Text="Show Orderd" OnClick="btncart_Click" />
                </div>
            </div>

            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="fab fa-alipay fa-3x text-primary"></i>
                    <div class="ms-3" style="font-size:30px;">
                        <asp:Label ID="lblcount8" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="d-grid">
                    <asp:Button ID="btnPurches" class="btn btn-danger btn-block" runat="server" Text="Show PurchaseOrder" OnClick="btnPurches_Click" />
                </div>
            </div>
        </div>
    </div>

</asp:Content>
