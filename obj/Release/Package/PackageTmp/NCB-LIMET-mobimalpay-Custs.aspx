<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="NCB-LIMET-mobimalpay-Custs.aspx.cs" Inherits="ReportsProject.NCB_LIMET_mobimalpay_Custs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                        <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">الأسقف الخاصة بمشتركين خدمة الدفع الالكتروني</h4>
                                        </div>
                                        <div class="card-body ">


                                            
      <%--                                             <div class="row">
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
            <label class="col-sm-2 col-form-label">نوع المحفظة</label>

        </div>--%>
        <div class="row">
            <div class="col-sm-2">

            </div>

                        </div>


              <div class="row">
            <label class="col-sm-2 col-form-label">اختر التصنيف</label>

        </div>
        <div class="row">
            <div class="col-sm-7">
<asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                        </asp:DropDownList>                </div>
            <div class="col-sm-7">

                <div class="row">
                    <div class="col-md-12" style="    padding-top: 24px;">
                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="ادخال" />
    
                    </div>
                   
                </div>
            </div>
               </div>                     

  <br />
            <br />
            <br />
                                            
                                                        <asp:label ID="Null" runat="server" class="col-sm-2 col-form-label" ForeColor="Red" Visible="false">عذرا ،، لايوجد بيانات لعرضها</asp:label>
                                             <div class="col-md-12" style="width:50%" >

            <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging">
            </asp:GridView>
                   
                </div>

                                              <div class="col-md-12" style="    padding-top: 24px;">
                         <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" Visible="false" OnClick="Button2_Click" Text="طباعة" />
    
                    </div>
        
        </div>

                                        </div>




                                     
                                 
      
                                        </form>


</asp:Content>
