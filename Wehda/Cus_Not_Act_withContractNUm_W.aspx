<%@ Page Title="" Language="C#" MasterPageFile="~/Wehda/WahdaMaster.Master" AutoEventWireup="true" CodeBehind="Cus_Not_Act_withContractNUm_W.aspx.cs" Inherits="ReportsProject.Cus_Not_Act_withContractNUm_W" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <form id="RangeValidation" class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
        <div class="card " style="direction: rtl">
            <div class="card-header ">
                <h4 class="card-title">المشتركين الغير مفعلين بأرقام العقود</h4>
            </div>
            <div class="card-body ">
                <div class="container">
                    <%--        <div class="row">
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
                                                    </div>--%>
                </div>



                                                              <div class="row">
                                                    <label class="col-sm-2 col-form-label">اختر نوع البحث</label>

                                                </div>
                <div class="row" style="display:block">
                      <div class="col-sm-7">
                                                        <asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                            <asp:ListItem Value="1">اجمالي</asp:ListItem>
                                                            <asp:ListItem Value="2">تفاصيلي</asp:ListItem>
                                                            <asp:ListItem Value="3">برقم الهاتف</asp:ListItem>
                                                        </asp:DropDownList> 
                                                    </div>

                        <div class="row">
                            <div class="col-md-12" style="padding-top: 24px;">
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="ادخال" />

                            </div>
                            <div class="col-md-12" style="padding-top: 24px;">
                                <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button3_Click" Text="التفاصيل" Visible="false" />

                            </div>



                            <div class="col-md-12" style="padding-top: 24px;">
                                                            <asp:TextBox ID="TextBox1" placeholder="أدخل رقم الهاتف"  runat="server" class="form-control datepicker" Height="30px" type="Text" Visible="false"></asp:TextBox>

                                <asp:Button ID="Button4" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button4_Click" Text="ابحث بناءا علي رقم الهاتف" Visible="false" />

                            </div>
                                                        <div class="col-md-12" style="padding-top: 24px;">

                              <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="true">
            </asp:GridView>
                                                            </div>
            <br />
            <div class="col-md-12" style="padding-top: 24px;">
                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False" />

            </div>
                        </div>


                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
          
            <br />
        </div>








    </form>

</asp:Content>
