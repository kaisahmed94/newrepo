<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="NCB-Count-SucssesCards.aspx.cs" Inherits="ReportsProject.NCB_Count_SucssesCards" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">اجمالي العمليات الناجحة لشراء الكروت</h4>
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
<%--            <div class="font-icon-container col-md-3 col-sm-4"><i class="fa fa-ambulance"></i> </></div>--%>
        </div>
        <div class="row">
            <div class="col-sm-7">
                <asp:TextBox ID="TextBox2" runat="server" class="form-control datepicker" Height="30px" type="date">></asp:TextBox>
            </div>

                        </div>
  <div class="col-sm-7">
<asp:DropDownList ID="DropDownList3" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
    <asp:ListItem Value="100">أفراد</asp:ListItem>
    <asp:ListItem Value="200">أعمال</asp:ListItem>

                                                        </asp:DropDownList>
            </div>


<%--              <div class="row">
            <label class="col-sm-2 col-form-label">اخترالفرع</label>

        </div>--%>
        <div class="row">
            <%--<div class="col-sm-7">
 <asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server">
                                                        </asp:DropDownList>            </div>--%>
            <div class="col-sm-7">

                <div class="row">
                    <div class="col-md-12" style="    padding-top: 24px;">
                                                 <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button3_Click" Text="ادخال" />
                                            </div>

<%--                                        <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="التفاصيل" Visible="False" />
                    </div>--%>
                   
                </div>
            </div>
               </div>                     

  <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true"  OnPageIndexChanging="GridView1_PageIndexChanging">
            </asp:GridView>
            <br />
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False"  />

                                                            </div>




            <br />
        </div>

                                        </div>




                                     
                                 
      
                                        </form>

</asp:Content>
