<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="NCB-Count-SucssesES.aspx.cs" Inherits="ReportsProject.NCB_Count_SucssesES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

            <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">اجمالي العمليات الناجحة لكشف الحساب عن طريق البريد</h4>
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

                                            <div class="col-sm-7">
<asp:DropDownList ID="DropDownList3" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
    <asp:ListItem Value="100">أفراد</asp:ListItem>
    <asp:ListItem Value="200">أعمال</asp:ListItem>

                                                        </asp:DropDownList>
            </div>   
  <%--<div class="row">
            <label class="col-sm-2 col-form-label">نوع المحفظة</label>

        </div>--%>
        <%--<div class="row">
            <div class="col-sm-2">
<asp:DropDownList ID="DropDownList2" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    <asp:ListItem Value="111">سداد</asp:ListItem>
    <asp:ListItem Value="112">تداول</asp:ListItem>
    <asp:ListItem></asp:ListItem>
                                                        </asp:DropDownList>
            </div>

                        </div>--%>


           <%--   <div class="row">
            <label class="col-sm-2 col-form-label">اختر الفرع</label>

        </div>--%>
        <div class="row">
            <%--<div class="col-sm-7">
<asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                        </asp:DropDownList>                </div>--%>
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
            <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true"  OnPageIndexChanging="GridView1_PageIndexChanging" >
        <%--        <Columns>    
                 <asp:BoundField DataField="SeqNO" HeaderText="ر.ت" ItemStyle-Width="30" />    
                 <asp:BoundField DataField="BRANCHNAME" HeaderText="الفرع" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="Amount" HeaderText="القيمة" ItemStyle-Width="150" />    
                     <asp:BoundField DataField="UserId" HeaderText="رفم المشترك" ItemStyle-Width="150" />    
                 <asp:BoundField DataField="CreationTime" HeaderText="تاريخ العملية" ItemStyle-Width="150" />    
             </Columns>    --%>
            </asp:GridView>
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
