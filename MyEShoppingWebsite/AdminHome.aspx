<%@ Page Title="" Language="C#" EnableEventValidation="false" EnableViewState="false" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<%--    <style>
        .clock {
            position: absolute;
            top: 70%;
            left: 60%;
            transform: translateX(-50%) translateY(-50%);
            color: #17D4FE;
            font-size: 60px;
            font-family: Orbitron;
            letter-spacing: 7px;
            /*margin-top:150px;*/
        }
    </style>--%>


    <div class="content-wrapper pt-4 px-4 text-white">
        <div class="row g-4">
            <div class="col-sm-6 col-xl-3">
                <div class="bg-secondary rounded d-flex align-items-center justify-content-between p-4">
                    <i class="fas fa-box fa-3x text-primary"></i>
                    <div class="ms-3" style="font-size: 30px;">
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
                    <div class="ms-3" style="font-size: 30px;">
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
                    <div class="ms-3" style="font-size: 30px;">
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
                    <div class="ms-3" style="font-size: 30px;">
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
                    <div class="ms-3" style="font-size: 30px;">
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
                    <div class="ms-3" style="font-size: 30px;">
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
                    <div class="ms-3" style="font-size: 30px;">
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
                    <div class="ms-3" style="font-size: 30px;">
                        <asp:Label ID="lblcount8" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="d-grid">
                    <asp:Button ID="btnPurches" class="btn btn-danger btn-block" runat="server" Text="Show PurchaseOrder" OnClick="btnPurches_Click" />
                </div>
            </div>
        </div>


        <%--<div id="MyClockDisplay" class="clock" onload="showTime()"></div>--%>

    </div>


<%--    <script>
        function showTime() {
            var date = new Date();
            var h = date.getHours(); // 0 - 23
            var m = date.getMinutes(); // 0 - 59
            var s = date.getSeconds(); // 0 - 59
            var session = "AM";

            if (h == 0) {
                h = 12;
            }

            if (h > 12) {
                h = h - 12;
                session = "PM";
            }

            h = (h < 10) ? "0" + h : h;
            m = (m < 10) ? "0" + m : m;
            s = (s < 10) ? "0" + s : s;

            var time = h + ":" + m + ":" + s + " " + session;
            document.getElementById("MyClockDisplay").innerText = time;
            document.getElementById("MyClockDisplay").textContent = time;

            setTimeout(showTime, 1000);

        }

        showTime();
    </script>--%>

</asp:Content>
