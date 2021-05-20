<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="NC-Mobi-MerchantState.aspx.cs" Inherits="ReportsProject.NC_Mobi_MerchantState" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                        <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">تجار خدمة الدفع الالكتروني لكل حالة</h4>
                                        </div>
                                        <div class="card-body ">
          <%--  <label class="col-sm-2 col-form-label">مـن</label>
        </div>
        <div class="col-sm-7">

            <asp:TextBox ID="TextBox1" runat="server" class="form-control datepicker" Height="30px" type="date">></asp:TextBox>
        </div>


        <div class="row">
            <label class="col-sm-2 col-form-label">الي</label>

        </div>
        <div class="row">
            <div class="col-sm-7">
                <a href="Master_MoneyTransfer.aspx">Master_MoneyTransfer.aspx</a>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control datepicker" Height="30px" type="date">></asp:TextBox>
            </div>

                        </div>--%>

      
<%--      <div class="row">--%>

      <div class="row">

           <asp:label ID="lbl" runat="server" class="col-sm-1 col-form-label" Visible="false" >اختر الحالة</asp:label>
            

          <div class="col-sm-7">
<asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Visible="false">
    <asp:ListItem Value="0">غير مفعلين</asp:ListItem>
    <asp:ListItem Value="1">مفعلين من المصرف فقط</asp:ListItem>
    <asp:ListItem Value="3">مفعلين</asp:ListItem>
  </asp:DropDownList>
            </div>


              <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="دخال" Visible="true" />
                    </div>

             <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button3_Click" Text="تفاصيل الحالة" Visible="false" />
                    </div>
                        </div>
<%--                        <div class="row">--%>

                            <%--<label class="col-sm-1 col-form-label">أختر الفئة</label>--%>

<%--        <div class="row">--%>
            <%--<div class="col-sm-2">
<asp:DropDownList ID="DropDownList2" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    <asp:ListItem Value="5">فئة 5</asp:ListItem>
    <asp:ListItem Value="10">فئة 10</asp:ListItem>
        <asp:ListItem Value="20">فئة 20</asp:ListItem>

    <asp:ListItem></asp:ListItem>
                                                        </asp:DropDownList>
            </div>--%>
            <%--<asp:CheckBox ID="CheckBox1" runat="server" />--%>
<%--                            </div>--%>

<%--                 <div class="row">--%>
                            <%--<label class="col-sm-1 col-form-label">أبحث بناءا علي</label>--%>

<%--        <div class="row">--%>
            <div class="col-sm-7">

                <div class="row">

                                    
                   
                </div>
            </div>
               </div>                     

  <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true" AllowCustomPaging="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnPageIndexChanging="GridView1_PageIndexChanging">
            </asp:GridView>

                                                                                            <asp:label ID="lblnull" runat="server" class="col-sm-2 col-form-label" Visible="false" ForeColor="Red">عذرا ،، لايوجد بيانات لعرضها</asp:label>

            <br />
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False"  />

                                                            </div>
<%--                                        class="fixed-table-pagination"--%>

            <br />


                                                                    </div>


            

                                 
      
                                        </form>


</asp:Content>
