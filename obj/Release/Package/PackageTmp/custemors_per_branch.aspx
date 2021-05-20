<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="custemors_per_branch.aspx.cs" Inherits="ReportsProject.App_users_per_branch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <form id="RangeValidation" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">المشتركين لكل فرع</h4>
                                        </div>
                                        <div class="card-body ">
                                            <div class="container">
                                                <div class="row">
                                                    <label class="col-sm-2 col-form-label">مـن</label>
                                                </div>
                                                <div class="col-sm-7">

                                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control datepicker" Height="30px" Enabled="false" type="date">></asp:TextBox>
                </div>

                                                
                                                <div class="row">
                                                    <label class="col-sm-2 col-form-label">الي</label>

                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-7">
                                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control datepicker" Height="30px" Enabled="false" type="date">></asp:TextBox>
                                                    </div>

                                                </div>



<%--                                                <div class="row">
                                                    <label class="col-sm-2 col-form-label">اختر الفرع</label>

                                                </div>--%>
                                                <div class="row">
                                                     <div class="col-sm-7">

                                                        <div class="row">
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                                                                       <label class="form-check-label">

                                                                <asp:CheckBox ID="CheckBox1" runat="server" class="form-check-input" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true" Checked="false"/>
                                                             اختيار التاريخ
                                                            </label>
                                                                                                                            </div>

                                                            <%--    <div class="form-check">
                                                            <label class="form-check-label">
                                                                <input class="form-check-input" type="checkbox" value="">
                                                                <span class="form-check-sign"></span>
                                                                اختيار التاريخ
                                                            </label>
                                                        </div>--%>


                                                        </div>
                                                    </div>
                                                  <%--  <div class="col-sm-7">
                                                        <asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </div>--%>
                                                    <div class="col-sm-7">

                                                        <div class="row">
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                    <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="ادخال" />

                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                </div>
                                                <br />
                                                <br />
                                                <br />
                                                <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                </asp:GridView>
                                                <br />
                                                                                          <div class="row">
                                                            <div class="col-md-12" style="padding-top: 24px;">
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False" />

                                                            </div>

                                                        </div>

                                                <br />
                                            </div>

                                        </div>




                                     
                                 
      
                                        </form>

</asp:Content>
