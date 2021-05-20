<%@ Page Title="" Language="C#" MasterPageFile="~/Wehda/WahdaMaster.Master" AutoEventWireup="true" CodeBehind="tej_limet_W.aspx.cs" Inherits="ReportsProject.tej_limet_W" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <form id="RangeValidation"  class="form-horizontal" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">أرقام هواتف المشتركين المتجاوزين للحد لشراء الكروت</h4>
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
            <label class="col-sm-2 col-form-label">اخترالفئة</label>

        </div>
        <div class="row">
            <div class="col-sm-7">
 <asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server">
     <asp:ListItem Value="1">ليبيانا</asp:ListItem>
     <asp:ListItem Value="2">المدار</asp:ListItem>
     <asp:ListItem Value="3">ليبيا للاتصالات</asp:ListItem>
                                                        </asp:DropDownList>            </div>
            </div>

               <div class="row">
            <label class="col-sm-2 col-form-label">ادخل القيمة</label>

        </div>
        <div class="row">
            <div class="col-sm-7">
                <asp:TextBox ID="TextBox3" runat="server" class="form-control datepicker" Height="30px" type="singleline" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            </div>


            <div class="col-sm-7">

                <div class="row">
                    <div class="col-md-12" style="    padding-top: 24px;">
                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-left" OnClick="Button1_Click" Text="ادخال" />
    
                    </div>
                   
                </div>
            </div>
               </div>                     

  <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging">
                <PagerSettings FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast" />
            </asp:GridView>
            <br />
                                                                                        <div class="row">
                                                <div class="col-md-12" style="padding-top: 24px;">
                                                    <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False" />

                                                </div>
            <br />
        </div>

                                        </div>




                                     
                                 
      
                                        </form>

</asp:Content>
