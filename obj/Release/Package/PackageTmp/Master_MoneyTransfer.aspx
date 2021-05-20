<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="Master_MoneyTransfer.aspx.cs" Inherits="ReportsProject.Master_MoneyTransfer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                        <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">عمليات التحويل للبطاقات الدولية</h4>
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
                <a href="Master_MoneyTransfer.aspx">Master_MoneyTransfer.aspx</a>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control datepicker" Height="30px" type="date">></asp:TextBox>
            </div>

                        </div>

        <div class="row">
            <br />
                                    </div>
<%--      <div class="row">--%>
      <div class="row">
           <label class="col-sm-1 col-form-label">اختر الحالة</label>
          <div class="col-sm-7">
<asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    <asp:ListItem Value="1">ناجحة</asp:ListItem>
    <asp:ListItem Value="2">فاشلة</asp:ListItem>

<%--    <asp:ListItem></asp:ListItem>--%>
                                                        </asp:DropDownList>
            </div>

                        </div>
                                            <div>

                                        <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd" OnClick="Button1_Click" Text="ادخال"/>
                    </div>


                                        <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-wd" OnClick="Button3_Click" Text="التفاصيل" Visible="false" />
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
                                            <div class="col-md-12" style="padding-top: 24px;" >
                                              <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true"   AllowCustomPaging="false" OnPageIndexChanging="GridView1_PageIndexChanging">

            </asp:GridView>
        <asp:label ID="lblnull" runat="server" class="col-sm-2 col-form-label" Visible="false" ForeColor="Red">عذرا ،، لايوجد بيانات لعرضها</asp:label>

                            </div>

           
               </div>                     

  <br />
            <br />
            <br />
          
            <br />
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd pull-right" OnClick="Button2_Click" Text="اطبع" Visible="False"  />

                                                            </div>
<%--                                        class="fixed-table-pagination"--%>


            <br />




            

                                 
      
                                        </form>

</asp:Content>
