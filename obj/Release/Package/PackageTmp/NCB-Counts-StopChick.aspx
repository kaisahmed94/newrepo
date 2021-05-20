<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="NCB-Counts-StopChick.aspx.cs" Inherits="ReportsProject.NCB_Counts_StopChick" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                        <form id="RangeValidation" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">اجمالي عمليات ايقاف صك</h4>
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

<br />
  

                                                                                                                         <div class="row">
           <div class="col-sm-12">
<asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    <asp:ListItem Value="1">عمليات ناجحة</asp:ListItem>
    <asp:ListItem Value="31">عمليات فاشلة</asp:ListItem>

                                                        </asp:DropDownList>
            </div>
            </div>

<br />
                <div class="row">

                                        <div class="col-md-12">

                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="دخال" Visible="true" />
                    </div>
                    </div>
                   

                                                                <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-fill btn-wd pull-right" OnClick="Button3_Click" Text="تفاصيل" Visible="False"  />

                                                            </div>

                                          <div class="row">
                            <div class="col-md-12">
            <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging" OnPageIndexChanged="GridView1_PageIndexChanged" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
                                </div>
                                </div>

                                         <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False"  />

                                                            </div>
               </div>                     

  <br />
            <br />
            <br />
                          
            <br />
                                                           


            <br />





                                     
                                 
      
                                        </form>

</asp:Content>
