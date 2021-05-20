<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="Master_ChangeState_Transactions.aspx.cs" Inherits="ReportsProject.Master_ChangeState_Transactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
                                <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
                                    <div class="card " style="direction:rtl">
                                        <div class="card-header ">
                                            <h4 class="card-title">عمليات تغير الأرقام السرية للبطاقات الفاشلة / الناجحة   </h4>
                                        </div>
                                        <div class="card-body ">
                                                   <div class="row">
            &nbsp;</div>

                <div class="row">

                                        <div class="col-md-12" style="    padding-top: 24px;">

                         <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Text="دخال" Visible="true" />
                    </div>
                   
                </div>
                      <div class="row">

                                        <div class="col-md-12" style="    padding-top: 24px;">
                      <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped pull-right" AllowPaging="true"   AllowCustomPaging="false" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  OnPageIndexChanging="GridView1_PageIndexChanging">
            </asp:GridView>

                                                                                             <asp:label ID="lblnull" runat="server" class="col-sm-2 col-form-label" Visible="false" ForeColor="Red">عذرا ،، لايوجد بيانات لعرضها</asp:label>

                </div>
                </div>
                

  <br />
            <br />
            <br />
          
            <br />
                                                            <div class="col-md-12" style="padding-top: 24px;" >
                                                                <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd pull-right" OnClick="Button2_Click" Text="اطبع" Visible="False" OnPageIndexChanging="GridView1_PageIndexChanging"  />

                                                            </div>
<%--                                        class="fixed-table-pagination"--%>

            <br />
        </div>

                                        </div>



            

                                 
      
                                        </form>

</asp:Content>
