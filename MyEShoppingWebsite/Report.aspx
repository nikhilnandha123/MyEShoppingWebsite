﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" enableEventValidation="false" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container">
        <div class="content-wrapper mt-5">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h2 class="text-center">Product Sells Reports</h2>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="">
                                <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" BackColor="White"
                                    BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="6" CellSpacing="5">
                                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    <RowStyle BackColor="White" ForeColor="#330099" />
                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="panel-footer">
                    <div class="panel-heading">
                        <h2 class="text-center">Quantity Start Report</h2>
                    </div>

                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <asp:GridView ID="GridView2" runat="server" CssClass="table table-condensed table-hover">
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>  

                </div>
            </div>

            <div class="d-grid  mb-3">
                <Button ID="btnPrintReport" onclick="window.print()" Class="btn-block btn btn-danger"  Text="Print">Print</Button>
            </div>
        </div>
    </div>

</asp:Content>  
  
