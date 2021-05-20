<%@ Page Title="" Language="C#" MasterPageFile="~/Wehda/WahdaMaster.Master" AutoEventWireup="true" CodeBehind="CARDS_SUM_PER_COMPANY_W.aspx.cs" Inherits="ReportsProject.CARDS_SUM_PER_COMPANY_W" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                                            <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">إجمالي القيم المالية لشراء الكروت </h4>
                                        </div>
                                        <div class="card-body ">
                                                   <div class="row">
            <label class="col-sm-2 col-form-label">مـن</label>
        </div>
        <div class="col-sm-7">

            <asp:TextBox ID="TextBox1" runat="server" class="form-control datepicker" Height="30px" type="date"></asp:TextBox>
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
            <br />
                                    </div>
  <div class="row">
           <label class="col-sm-12 col-form-label">أختر نوع الاشتراك</label>
          <div class="col-sm-6">
<asp:DropDownList ID="DropDownList3" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
    <asp:ListItem Value="100">أفراد</asp:ListItem>
    <asp:ListItem Value="200">أعمال</asp:ListItem>

                                                        </asp:DropDownList>
            </div>
            </div>
        <div class="row">
<%--                <div class="row">--%>
<%--            <label class="col-sm-1 col-form-label">أختر الشركة المزودة</label>--%>

<%--        <div class="row">--%>
<%--            <div class="col-sm-2">
<asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    <asp:ListItem Value="32">ليبيانا</asp:ListItem>
    <asp:ListItem Value="31">المدار</asp:ListItem>
        <asp:ListItem Value="33">ليبيا للاتصالا</asp:ListItem>

    <asp:ListItem></asp:ListItem>
                                                        </asp:DropDownList>
            </div>--%>

<%--                        </div>--%>
<%--                        <div class="row">--%>

<%--                            <label class="col-sm-1 col-form-label">أختر الفئة</label>--%>

<%--        <div class="row">--%>
<%--            <div class="col-sm-2">
<asp:DropDownList ID="DropDownList2" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    <asp:ListItem Value="5">فئة 5</asp:ListItem>
    <asp:ListItem Value="10">فئة 10</asp:ListItem>
        <asp:ListItem Value="20">فئة 20</asp:ListItem>

    <asp:ListItem></asp:ListItem>
                                                        </asp:DropDownList>
            </div>--%>
<%--                            </div>--%>

<%--                 <div class="row">--%>
<%--                            <label class="col-sm-1 col-form-label">ابحث بناءا علي</label>--%>

<%--        <div class="row">--%>
          <%--  <div class="col-sm-2">
<asp:DropDownList ID="DropDownList3" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
   

    <asp:ListItem></asp:ListItem>
                                                        </asp:DropDownList>
            </div>
                            </div>--%>
            <div class="col-sm-7">

                <div class="row">

                                        <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="دخال" Visible="true" />
                    </div>

                  <%--   <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button3_Click" Text="التفاصيل" Visible="false" />
                    </div>--%>
                   
                </div>
            </div>
               </div>                     

  <br />
            <br />
            <br />
              <asp:GridView ID="GridView1" class="table table-hover table-striped" runat="server" AllowPaging="true"  PagerStyle-HorizontalAlign="Left" PagerSettings-Position="Bottom" PagerSettings-Mode="Numeric"
                    GridLines="None" AutoGenerateColumns="true" OnPageIndexChanging="GridView1_PageIndexChanging" OnPageIndexChanged="GridView1_PageIndexChanged" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                      
            </asp:GridView>
                                            <asp:label ID="lblnull" runat="server" class="col-sm-2 col-form-label" Visible="false" ForeColor="Red">عذرا ،، لايوجد بيانات لعرضها</asp:label>

            <br />
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False"  />

                                                            </div>


            <br />
        </div>

                                        </div>




                                     
                                 
      
                                        </form>

</asp:Content>
