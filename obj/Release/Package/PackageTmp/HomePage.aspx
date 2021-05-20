<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="ReportsProject.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <div>
               <!--Start bar-->
      <div class="upper-bar">
          <div class="center">
            <h1>مسارات</h1>
  <!--  <img class="img-size"src="img\logo of MITT.png" alt=""> -->
              <div class="h3-3">

               صفــــحة التـقاريــر
              </div>

          </div>

      </div>
    <!--End bar-->
        <div class="container " >
            
         <h3 class="show-h">اختر المصرف  </h3>
        <div class="col-md-15 center-login" style="margin-left:0%;">

                            <div class=" col col-lg-9 col-md-3 col-sm-12 col-12 h-auto d-inline-block" id="leftCol" style="float: right; padding: 15px;">

                    <div class="row" id="upperBar">
                        <div class=" col col-lg-3 col-md-3 col-sm-12 col-12" style="float: right; padding: 0px;">
                            <a id="wlink" href="/ReportingPage/HomeWahda.aspx">
                                <img src="rs/img/wahda.jpg" class="upperBarImg" id="wimg" />
                            </a>


                        </div>
                        <div class=" col col-lg-3 col-md-3 col-sm-12 col-12" style="float: right; padding: 0px;">
                            <a href="/ReportingPage/HomeNcb.aspx">
                                <img src="rs/img/ncb.jpg"  class="upperBarImg" id="ncbimg"/>
                            </a>


                        </div>
                        <div class=" col col-lg-3 col-md-3 col-sm-12 col-12" style="float: right; padding: 0px;">
                            <a href="/ReportingPage/HomeNab.aspx">
                                <img src="rs/img/nab.jpg" class="upperBarImg" id="nabimg" />
                            </a>
                        </div>
                        <div class=" col col-lg-3 col-md-3 col-sm-12 col-12" style="float: right; padding: 0px;">
                            <a href="/ReportingPage/HomeJum.aspx">
                                <img src="rs/img/jum.jpg" class="upperBarImg" id="jimg" />
                            </a>
                        </div>

                    </div>

                    <div class="row" id="mainContent">
                        <div class=" col col-lg-12 col-md-12 col-sm-12 col-12" style="float: right; padding: 10px;">

                            <%--<asp:ContentPlaceHolder ID="main" runat="server">
                            <%--</asp:ContentPlaceHolder>--%>
                        --%></div>
                    </div>

                    <div class="row">
                        <div class=" col col-lg-12 col-md-12 col-sm-12 col-12" style="float: right; padding: 10px;">

                                
                        </div>
                    </div>



                </div>

     <%--     <div class="form-group">
            <label for="exampleInputEmail1">اسم المستخدم</label>
            <input type="text" class="form-control" ID="user_name_text" name="user" aria-describedby="emailHelp" placeholder="اسم المستخدم">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">كلمة المرور</label>
            <input type="password" class="form-control" name="pass" ID="password_text" placeholder="كلمة المرور">
          </div>--%>
       <%--<asp:Button ID="Button1" runat="server" Text="دخول" CssClass="btn btn-primary " OnClick="Login_Click"  />--%>

            
        </div>
            </div>

        </div>        <img src="rs/img/Log.png" alt="" class="logo">  

	<div class="clearfix"></div>
           <!--Start footer   fixed-bottom-->

          <div class="bar-bottom " style="margin-top:20px">
            <div class="center col-md-10">
         <%--     <h1 class="h2">
                شركة مسارات لتقنية المعلومات والخدمات المالية المساهمة
              </h1>--%>
          <%--    <div class="h3-3">

                إعداد الإدارة الفنية

              </div>--%>
            </div>
<%--            <div class="box-logo col-md-2">
              <img src="rs/img/logo mitt.png" alt="" class="logo-bottom">
            </div>--%>
            <div class="clearfix">

            </div>
          </div>
          <!--logo -->
          <%--   <script src="rs/js2/jquery-3.3.1.min.js" defer></script>
             <script src="rs/js2/bootstrap.min.js" defer></script>
             <script src="rs/js2/main.js" defer></script>--%>
        </div>
    </form>
</body>
</html>
