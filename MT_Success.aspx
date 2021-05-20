<%@ Page Title="" Language="C#" MasterPageFile="~/NCBMAS.Master" AutoEventWireup="true" CodeBehind="MT_Success.aspx.cs" Inherits="ReportsProject.MT_Success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <form id="RangeValidation" class="form-horizontal" novalidate="novalidate" runat="server">
        <div class="card " style="direction: rtl">
            <div class="card-header ">
                <h4 class="card-title">العمليات الناجحة لتحويل الأموال</h4>
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
                    <label class="col-sm-2 col-form-label">ادخل الفرع</label>

                </div>
                <div class="row">
                    <div class="col-sm-7">
                        <asp:DropDownList ID="DropDownList1" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                    </div>
                    </div>

                  <%--<div class="row">
            <label class="col-sm-2 col-form-label">اختر نوع البحث</label>
                     </div>--%>
                                                             <%--<div class="row">

                        <div class="col-sm-7">
 <asp:DropDownList ID="DropDownList2" class="btn-group bootstrap-select show-tick" data-toggle="dropdown" runat="server">
     <asp:ListItem Value="1">اجمالي</asp:ListItem>
     <asp:ListItem Value="2">تفاصيلي</asp:ListItem>
                                                        </asp:DropDownList>            </div>
                                                                   </div>--%>

               

                    <div class="col-sm-7">

                        <div class="row">
                            <div class="col-md-12" style="padding-top: 24px;">
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button1_Click" Visible="true" Text="ادخال" />

                            </div>
                           <%-- <div class="col-md-12" style="padding-top: 24px;">
                                <asp:Button ID="Button3" runat="server" class="btn btn-primary btn-wd  pull-right" OnClick="Button3_Click" Text="ادخال" />

                            </div>--%>
                        </div>
                    </div>
                </div>

                <br />
                <br />
                <br />
                <div>
                <asp:GridView ID="GridView1" runat="server" class="table table-hover table-striped" AllowPaging="true"  OnPageIndexChanging="GridView1_PageIndexChanging" >
             
                </asp:GridView>
                                    </div>
   <asp:label ID="lblnull" runat="server" class="col-sm-2 col-form-label" Visible="false" ForeColor="Red">عذرا ،، لايوجد بيانات لعرضها</asp:label>


                <br />
                <div class="row">
                    <div class="col-md-12" style="padding-top: 24px;">
                        <asp:Button ID="Button2" runat="server" class="btn btn-info btn-fill btn-wd" OnClick="Button2_Click" Text="اطبع" Visible="False" />
                      <%--  <script>
    $('document').ready(function () {
        $('#firstDate')
            .datepicker("option", { maxDate: '+1d' });
        $('#lastDate')
            .datepicker("option", { maxDate: '+1d' });

    });
    function printDiv(divName) {
        var w = window.open();
        w.document.write(document.getElementById(divName).innerHTML);
        w.print();
        w.close();
    }
                      //  </script>
                        <%--                                          
                            <div class="col-sm-7"><div class="dataTables_paginate paging_full_numbers" id="datatables_paginate"><ul class="pagination"><li class="paginate_button first" id="datatables_first"><a href="#" aria-controls="datatables" data-dt-idx="0" tabindex="0">First</a></li><li class="paginate_button previous" id="datatables_previous"><a href="#" aria-controls="datatables" data-dt-idx="1" tabindex="0">Previous</a></li><li class="paginate_button "><a href="#" aria-controls="datatables" data-dt-idx="2" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="datatables" data-dt-idx="3" tabindex="0">2</a></li><li class="paginate_button active"><a href="#" aria-controls="datatables" data-dt-idx="4" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="datatables" data-dt-idx="5" tabindex="0">4</a></li><li class="paginate_button next" id="datatables_next"><a href="#" aria-controls="datatables" data-dt-idx="6" tabindex="0">Next</a></li><li class="paginate_button last" id="datatables_last"><a href="#" aria-controls="datatables" data-dt-idx="7" tabindex="0">Last</a></li></ul></div></div>--%>
                    </div>
                    <br />
                </div>

                <br />
            </div>

        </div>







    </form>

</asp:Content>
