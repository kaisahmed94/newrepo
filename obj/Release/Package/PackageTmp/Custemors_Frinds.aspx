<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="Custemors_Frinds.aspx.cs" Inherits="ReportsProject.Custemors_Frinds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                                            <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">اجمالي الأصدقاء لكل مشترك حسب رقم الهاتف</h4>
                                        </div>
                                        <div class="card-body ">

                                                            <div class="row">
            <label  class="col-sm-2 col-form-label">ادخل رقم الهاتف</label> 
        </div>
        <div class="col-sm-7">

            <asp:TextBox ID="TextBox1" runat="server" class="form-control datepicker" Height="30px" type="Text"></asp:TextBox>
        </div>
                                          <div class="col-sm-7">

                <div class="row">

                                        <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="دخال" Visible="true" />
                    </div>
                   
                </div>
            </div>       

                        </div>
                                           
           
        

  <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped pull-right" AllowPaging="true"   AllowCustomPaging="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
                                            <asp:label ID="lblnull" runat="server" class="col-sm-2 col-form-label" Visible="false" ForeColor="Red">عذرا ،، لايوجد بيانات لعرضها</asp:label>
            <br />
                                                            <div class="col-md-12" style="padding-top: 24px;" >
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd pull-right" OnClick="Button2_Click" Text="اطبع" Visible="False"  />

                                                            </div>
<%--                                        class="fixed-table-pagination"--%>

            <br />
        </div>




            

                                 
      
                                        </form>

</asp:Content>
