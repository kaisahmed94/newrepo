﻿<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="NC-Mobi-custemors_not_benifit_from Payment.aspx.cs" Inherits="ReportsProject.NC_Mobi_custemors_not_benifit_from_Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
             <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">اجمالي عدد المشتركين  غير مغعلين لخدمة الدفع حسب كل فرع</h4>
                                        </div>
                                        <div class="card-body ">
                                            <div class="container">
                                              
                                              <%--   <div class="row">
                                                    <label class="col-sm-2 col-form-label">مـن</label>
                                                </div>
                                                <div class="col-sm-7">

                                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control datepicker" Height="30px" type="date">></asp:TextBox>
                                                </div>--%>


<%--                                                <div class="row">
                                                    <label class="col-sm-2 col-form-label">الي</label>

                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-7">
                                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control datepicker" Height="30px" type="date">></asp:TextBox>
                                                    </div>

                                                </div>--%>
                                                </div>



                                              
                                                <div class="row">
                                                    <div class="col-sm-7">
                                                    </div>
                                                    <div class="col-sm-7">

                                                        <div class="row">

                                                               <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button3_Click" Text="ادخال" />

                                                            </div>
                                                          

                                                        </div>
                                                    </div>
                                                </div>
                                                </div>
                                                <br />
                                                <br />
                                                <br />
                                                <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true" AutoGenerateColumns="true" OnPageIndexChanging="GridView1_PageIndexChanged">
                                                </asp:GridView>
          <asp:label ID="lblnull" runat="server" class="col-sm-2 col-form-label" Visible="false" ForeColor="Red">عذرا ،، لايوجد بيانات لعرضها</asp:label>

                                                <br />
                                                                                                                                      <div class="row">
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False" />

                                                            </div>

                                                        </div>

                                                <br />
                                            </div>

<%--                                        </div>--%>



         <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                                     
                                 
      
                                        </form>

</asp:Content>
