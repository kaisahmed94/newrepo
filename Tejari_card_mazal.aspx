<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="Tejari_card_mazal.aspx.cs" Inherits="ReportsProject.Tejari_card_mazal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                     <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">المتبقي من الكروت بالمخازن</h4>
                                        </div>
                                        <div class="card-body ">
                                            <div class="container">
                                 <%--               <div class="row">
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

                                                </div>--%>
                                                                                                    <div class="col-sm-7">

                                                                                                         <div class="row">
                                                    <label class="col-sm-2 col-form-label">اختر الفئة</label>

                                                </div>
                                                <asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" >
                                                    <asp:ListItem Value="1">المدار</asp:ListItem>
                                                    <asp:ListItem Value="2">ليبيا للاتصالات والتقنية</asp:ListItem>
                                                    <asp:ListItem Value="3">ليبيانا</asp:ListItem>
                                                    <asp:ListItem Value="4">العنكبوت الليبي</asp:ListItem>
                                                    <asp:ListItem Value="5">قيقا</asp:ListItem>
                                                    <asp:ListItem Value="6">هاتف ليبيا </asp:ListItem>
                                                    <asp:ListItem Value="7">كونكت </asp:ListItem>
                                                        </asp:DropDownList>

                                                    </div>


<%--                                                <div class="row">
                                                    <label class="col-sm-2 col-form-label">اختر الفرع</label>

                                                </div>--%>
                                                <div class="row">
                                                  <%--  <div class="col-sm-7">
                                                        <asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </div>--%>
                                                    <div class="col-sm-7">

                                                        <div class="row">
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="ادخال" />

                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                </div>
                                                <br />
                                                <br />
                                                <br />
                                                <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped">
                                                </asp:GridView>
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


