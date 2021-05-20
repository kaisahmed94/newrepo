<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <!-- Styles -->

    <link href="rs/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="rs/css/fontawesome.css" rel="stylesheet"/>
    <link href="rs/webfonts/fontawesome.css" rel="stylesheet"/>
    <link href="rs/css/main.css" rel="stylesheet"/>
    <link href="rs/css/secand.css" rel="stylesheet"/>
    <link href="rs/css/s2.css" rel="stylesheet"/>
    <link href="rs/css/footer2.css" rel="stylesheet"/>
    <link href="https://fonts.googleapis.com/css?family=Tajawal:300,400,700" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
               <!--Start bar-->
      <div class="upper-bar">
          <div class="center">
            <h1>مسارات</h1>
  <!--  <img class="img-size"src="img\logo of MITT.png" alt=""> -->
              <div class="h3-3">

               صفحة تتبع العمليات المالية
              </div>

          </div>

      </div>
    <!--End bar-->
        <div class="container " >
            
         <h3 class="show-h">تسجيل الدخول  </h3>
        <div class="col-md-6 center-login" style="margin-left:25%;">
          <div class="form-group">
            <label for="exampleInputEmail1">اسم المستخدم</label>
            <input type="text" class="form-control" ID="user_name_text" name="user" aria-describedby="emailHelp" placeholder="اسم المستخدم">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">كلمة المرور</label>
            <input type="password" class="form-control" name="pass" ID="password_text" placeholder="كلمة المرور">
          </div>
       <asp:Button ID="Button1" runat="server" Text="دخول" CssClass="btn btn-primary " OnClick="Login_Click"  />

            <div id="error" runat="server" style="margin-top:20px">
                
            </div>
        </div>
            </div>

        </div>        <img src="rs/img/Log.png" alt="" class="logo">  

	<div class="clearfix"></div>
           <!--Start footer   fixed-bottom-->

          <div class="bar-bottom " style="margin-top:20px">
            <div class="center col-md-10">
              <h1 class="h2">
                شركة مسارات لتقنية المعلومات والخدمات المالية المساهمة
              </h1>
              <div class="h3-3">

                إعداد الإدارة الفنية

              </div>
            </div>
            <div class="box-logo col-md-2">
              <img src="rs/img/logo mitt.png" alt="" class="logo-bottom">
            </div>
            <div class="clearfix">

            </div>
          </div>
          <!--logo -->
             <script src="rs/js2/jquery-3.3.1.min.js" defer></script>
             <script src="rs/js2/bootstrap.min.js" defer></script>
             <script src="rs/js2/main.js" defer></script>
    </form>
</body>
</html>
