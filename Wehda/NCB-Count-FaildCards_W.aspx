<%@ Page Title="" Language="C#" MasterPageFile="~/Wehda/WahdaMaster.Master" AutoEventWireup="true" CodeBehind="NCB-Count-FaildCards_W.aspx.cs" Inherits="ReportsProject.NCB_Count_FaildCards_W" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">اجمالي العمليات الفاشلة لشراء الكروت</h4>
                                        </div>
                                        <div class="card-body ">
                                                   <div class="row">
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

                                            
                                            <div class="row">
                                                <label class="col-sm-12 col-form-label">أختر نوع الاشتراك</label>
                                                                                            </div>
                                                <div class="col-sm-6">
                                                    <asp:DropDownList ID="DropDownList3" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                                                        <asp:ListItem Value="100">أفراد</asp:ListItem>
                                                        <asp:ListItem Value="200">أعمال</asp:ListItem>

                                                    </asp:DropDownList>
                                                </div>

                                            <div class="row">
                                            <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="دخال" Visible="true" />
                    </div>
                    </div>
                                              
                                       
                                            <div class="col-md-12" style="padding-top: 24px;">

                                                <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging">
                                                </asp:GridView>

                                            </div>
                                            <asp:Label ID="lblnull" runat="server" class="col-sm-2 col-form-label" Visible="false" ForeColor="Red">عذرا ،، لايوجد بيانات لعرضها</asp:Label>
                                            <div class="col-md-12" style="padding-top: 24px;">
                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd pull-right" OnClick="Button2_Click" Text="اطبع" Visible="False" />

                                            </div>

                                            <br />
                                            <br />
                                            <br />

                                            <br />


                                            <%--                                        class="fixed-table-pagination"--%>
                                            <br />







                                        </div>
        </form>

</asp:Content>


