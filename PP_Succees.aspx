<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="PP_Succees.aspx.cs" Inherits="ReportsProject.PP_Succees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <form id="RangeValidation"  runat="server">
                                    <div class="card " style="direction: rtl" >
                                        <div class="card-header ">
                                            <h4 class="card-title">العمليات الناجحة لسداد الفواتير</h4>
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

                        </div>`
         <div class="row">
            <label class="col-sm-2 col-form-label">اختر نوع البحث</label>
                     </div>
<div class="row">

          <div class="col-sm-7">
<asp:DropDownList ID="DropDownList4" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
    <asp:ListItem Value="100">أفراد</asp:ListItem>
    <asp:ListItem Value="200">أعمال</asp:ListItem>

                                                        </asp:DropDownList>
            </div>
            </div>

              <div class="row">
            <label class="col-sm-2 col-form-label">اختر الفرع<br />
                
                  </label>

        &nbsp;</div>
        <div class="row">
            <div class="col-sm-7">
                <asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
            </div>
            <div class="col-sm-7">

                    <%--<div class="col-md-12" style="    padding-top: 24px;">
                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd " OnClick="Button1_Click" Text="ادخال" />
    
                   
                </div>--%>
                                    <div class="col-md-12" style="    padding-top: 24px;">
                                                                 <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-wd  " OnClick="Button3_Click" Text="ادخال"  Visible="true"/>


                                                       </div>                     

               </div>                     
 <div class="col-sm-7">
            <asp:GridView ID="GridView1"  runat="server" class="table table-hover table-striped" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging">
            </asp:GridView>
            <br />
            <br />
        </div>

                                        </div>
                                                                             <asp:label ID="lblnull" runat="server" class="col-sm-2 col-form-label" Visible="false" ForeColor="Red">عذرا ،، لايوجد بيانات لعرضها</asp:label>

        <div class="row">
                                                <div class="col-md-12" style="padding-top: 24px;">
                                                    <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False" />

                                                </div>
            <br />
        </div>


                                    
                                 
      
                                        </form>
</asp:Content>


<%--<div class="bootstrap-switch-container" style="width: 122px; margin-left: 0px;"><span class="bootstrap-switch-handle-on bootstrap-switch-primary" style="width: 50px;">ON</span><span class="bootstrap-switch-label" style="width: 26px;">&nbsp;</span><span class="bootstrap-switch-handle-off bootstrap-switch-default" style="width: 50px;">OFF</span><input type="checkbox" data-toggle="switch" checked="" data-off-text="OFF"  data-on-text="ON" ></div>--%>



