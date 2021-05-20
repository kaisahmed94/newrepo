<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="OS_Type.aspx.cs" Inherits="ReportsProject.OS_Type" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">اجمالي مستخدمي التطبيق لكل نظام تشغيل</h4>
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
                              
                                            <%--  <div class="row">
            <label class="col-sm-2 col-form-label">اختر نوع البحث</label>
                     </div>
                                                             <div class="row">

                        <div class="col-sm-7">
 <asp:DropDownList ID="DropDownList2" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server">
     <asp:ListItem Value="1">اجمالي</asp:ListItem>
     <asp:ListItem Value="2">تفاصيلي</asp:ListItem>
                                                        </asp:DropDownList>            </div>
                                                                   </div>--%>
            </div>

        <div class="row">
    
            <div class="col-sm-7">

                <div class="row">
                    <div class="col-md-12" style="    padding-top: 24px;">
                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="ادخال" />
    
                    </div>
                      <div class="col-md-12" style="    padding-top: 24px;">
                         <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button3_Click" Text="التفاصيل" Visible="false" />
    
                    </div>
                </div>
            </div>
               </div>                    


                 
                      
  <br />
            <br />
            <br />

    <div>
         <div class="col-sm-7">

            <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging">
            </asp:GridView>
            <br />
                                </div>
    </div>
               

                                              <div class="row">
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False" />

                                                            </div>
                                                <br />
                                            </div>
            <br />





                        </div>
                                     
                                 
      
                                        </form>
</asp:Content>
