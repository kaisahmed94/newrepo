﻿<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="Cus_no_app.aspx.cs" Inherits="ReportsProject.Cus_no_app" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                                    <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">إجمالي المشتركين غير مستخدمين التطبيق</h4>
                                        </div>
                                        <div class="card-body ">
                                                  <%-- <div class="row">
            <label class="col-sm-2 col-form-label">مـن</label> 
        </div>
        <div class="col-sm-7">

            <asp:TextBox ID="TextBox1" runat="server" class="form-control datepicker" Height="30px" type="date">></asp:TextBox>
        </div>


        <div class="row">
            <label class="col-sm-2 col-form-label">الي</label>

        </div>
        <div class="row">
            <div class="col-sm-7">
                <asp:TextBox ID="TextBox2" runat="server" class="form-control datepicker" Height="30px" type="date">></asp:TextBox>
            </div>

                        </div>
                                           
            </div>--%>
           
            <div class="col-sm-7">

                <div class="row">

                                        <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="دخال" Visible="true" />
                    </div>
                       <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button3_Click" Text="التفاصيل" Visible="false" />
                    </div>
                </div>
            </div>

  <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped pull-right" AllowPaging="true"   AllowCustomPaging="false"  OnPageIndexChanging="GridView1_PageIndexChanging">
            </asp:GridView>
            <br />
                                                            <div class="col-md-12" style="padding-top: 24px;" >
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd pull-right" OnClick="Button2_Click" Text="اطبع" Visible="False"  />

                                                            </div>
<%--                                        class="fixed-table-pagination"--%>

            <br />
        </div>




            

                                 
      
                                        </form>

</asp:Content>
