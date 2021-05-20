<%@ Page Title="" Language="C#" MasterPageFile="~/Wehda/WahdaMaster.Master" AutoEventWireup="true" CodeBehind="Ncb-mobi-Pay_All_W.aspx.cs" Inherits="ReportsProject.Wehda.Ncb_mobi_Pay_All_W" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">تقرير صافي المبيعات الكلي خلال فترة معينة  </h4>
                                        </div>
                                        <div class="card-body ">
                                            <div class="container">
                                              
                                           <div class="row">
                                                    <label class="col-sm-2 col-form-label">من</label>
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
                                                <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging" >
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




                                     
                                 
      
                                        </form>
</asp:Content>
