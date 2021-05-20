<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="master_ChangePin_Sucsses_faield.aspx.cs" Inherits="ReportsProject.master_ChangePin_Sucsses_faield" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">العمليات الناجحة والفاشلة لتغير الرقم السري للبطاقات الدولية</h4>
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
            <br />
                                    </div>
<%--      <div class="row">--%>
      <div class="row">
           <label class="col-sm-1 col-form-label">النتيجة</label>
          <div class="col-sm-7">
<asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server">
    <asp:ListItem Value="1">عمليات ناجحة</asp:ListItem>
    <asp:ListItem Value="31">عمليات فاشلة</asp:ListItem>

<%--    <asp:ListItem></asp:ListItem>--%>
                                                        </asp:DropDownList>
            </div>

                        </div>
<%--                        <div class="row">--%>

                            <%--<label class="col-sm-1 col-form-label">أختر الفئة</label>--%>

            <div class="col-sm-7">

                <div class="row">

                                        <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="دخال" Visible="true" />
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
            <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging" AllowCustomPaging="false" Width="200">
                    <%-- <Columns>    
                 <asp:BoundField DataField="SeqNO" HeaderText="ر.ت" ItemStyle-Width="30" />    
                 <asp:BoundField DataField="BRANCHNAME" HeaderText="الفرع" ItemStyle-Width="200" />    
                 <asp:BoundField DataField="Amount" HeaderText="القيمة" ItemStyle-Width="200" />    
                 <asp:BoundField DataField="UserId" HeaderText="رقم المشترك" ItemStyle-Width="200" />    
                 <asp:BoundField DataField="CreationTime" HeaderText="تاريخ العملية" ItemStyle-Width="200" />    
                 <asp:BoundField DataField="UserId" HeaderText="رقم المشترك" ItemStyle-Width="200" />    
                <asp:BoundField DataField="DWAccountNumber" HeaderText="رقم المحفضة" ItemStyle-Width="200" />    
                <asp:BoundField DataField="AccountNumber" HeaderText="رقم الحساب" ItemStyle-Width="200" />    
             </Columns>   --%> 
            </asp:GridView>
                                                                                                                                <asp:label ID="lblnull" runat="server" class="col-sm-2 col-form-label" Visible="false" ForeColor="Red">عذرا ،، لايوجد بيانات لعرضها</asp:label>

            <br />
                                           </div>
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False"  />

                                                            </div>
<%--                                        class="fixed-table-pagination"--%>

            <br />
        </div>




            

                                 
      
                                        </form>

</asp:Content>
