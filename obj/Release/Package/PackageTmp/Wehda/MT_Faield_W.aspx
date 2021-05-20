<%@ Page Title="" Language="C#" MasterPageFile="~/Wehda/WahdaMaster.Master" AutoEventWireup="true" CodeBehind="MT_Faield_W.aspx.cs" Inherits="ReportsProject.MT_Faield_W" EnableEventValidation = "false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">العمليات الفاشلة لتحويل الأموال</h4>
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
          <div class="col-sm-6">
<asp:DropDownList ID="DropDownList3" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
    <asp:ListItem Value="100">أفراد</asp:ListItem>
    <asp:ListItem Value="200">أعمال</asp:ListItem>

                                                        </asp:DropDownList>
            </div>
            </div>


              <div class="row">
            <label class="col-sm-2 col-form-label">اختر الفرع</label>

        </div>
        <div class="row">
            <div class="col-sm-7">
 <asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                        </asp:DropDownList>            </div>
            <div class="col-sm-7">

                <div class="row">

                      <div class="col-md-12" style="    padding-top: 24px;">
                         <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button3_Click" Text="ادخال" />
    
                    </div>


                    <div class="col-md-12" style="    padding-top: 24px;">
                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="التفاصيل" Visible="False" />
    
                    </div>
                   
                </div>
            </div>
               </div>                     

  <br />
            <br />
            <br />
                                            <div>
                                                  <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging">
                                                           
            </asp:GridView>
                                            </div>
                                                      <asp:label ID="lblnull" runat="server" class="col-sm-2 col-form-label" Visible="false" ForeColor="Red">عذرا ،، لايوجد بيانات لعرضها</asp:label>

                                             

            <br />
                                                                                        <div class="row">
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False" />

                                                            </div>
                                                <br />
                                            </div>

            <br />
        </div>

                                        </div>




                                     
                                 
      
                                        </form>
</asp:Content>
