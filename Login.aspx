
<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ReportsProject.Login" Async="true" %>

         <form id="RangeValidation"  class="form-horizontal" action="" method="" novalidate="novalidate" runat="server">
	<link rel="icon" type="image/png" href="../../assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>تسجيل الدخول</title>

	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
    <meta name="viewport" content="width=device-width">


    <!-- Bootstrap core CSS     -->
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet">

    <!--  Light Bootstrap Dashboard core CSS    -->
    <link href="../../assets/css/light-bootstrap-dashboard.css?v=1.4.1" rel="stylesheet">

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="../../assets/css/demo.css" rel="stylesheet">


    <!--     Fonts and icons     -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,300" rel="stylesheet" type="text/css">
    <link href="../../assets/css/pe-icon-7-stroke.css" rel="stylesheet">

 <script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/43/7a/common.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/43/7a/util.js"></script></head>
<body>

<%--<nav class="navbar navbar-transparent navbar-absolute">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">Light Bootstrap Dashboard PRO</a>
        </div>
        <div class="collapse navbar-collapse">

            <ul class="nav navbar-nav navbar-right">
                <li>
                   <a href="register.html">
                        Register
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>--%>


<div class="wrapper wrapper-full-page">
    <div class="full-page login-page" data-color="white" data-image="../../assets/img/viber_image_2021-02-04_14-47-39.jpg">

    <!--   you can change the color of the filter page using: data-color="blue | azure | green | orange | red | purple" -->
        <div class="content">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
                        <form method="#" action="#">

                        <!--   if you want to have the card without animation please remove the ".card-hidden" class   -->
                            <div class="card-hidden">
                                <div class="header text-center">Login</div>
                                <div class="content">
                                    <form>
                                        <label>Domain address</label>
                                        <input type="email" name="un" placeholder="Enter UR Domain Name" class="form-control">
                                    
                                        <label>Password</label>
                                        <input type="password" name="pa" placeholder="Password" class="form-control">
                                    
                                    
                                        <label class="checkbox">
                                            <input type="checkbox" data-toggle="checkbox" value="">
                                            Subscribe to newsletter
                                        </label>
                                        <div id="error" runat="server" style="margin-top: 20px; direction: rtl;"></div>
                                        </form>
                                    </div>
                                </div>
                                <div class="footer text-center">
                                                                <asp:Button ID="Button1"  runat="server" class="btn btn-fill btn-warning btn-wd" OnClick="Button1_Click" Text="ادخال" />
<%--                                    <button type="submit" class="btn btn-fill btn-warning btn-wd" >Login</button>--%>
                                </div>
                            </div>

                        </form>

                    </div>
                </div>
            </div>
        </div>

    	<footer class="footer footer-transparent">
            <div class="container">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                               Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    © <script>document.write(new Date().getFullYear())</script>2021 <a href="http://www.creative-tim.com">Techinical Department</a>, made with love for a better web
                </p>
            </div>
        </footer>

    <div class="full-page-background" style="background-image: url(../../assets/img/viber_image_2021-02-04_14-47-39.jpg)"></div></div>

</div>




    <!--   Core JS Files  -->
    <script src="../../BS3/assets/js/jquery.min.js" type="text/javascript"></script>
	<script src="../../BS3/assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="../../BS3/assets/js/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>


	<!--  Forms Validations Plugin -->
	<script src="../../BS3/assets/js/jquery.validate.min.js"></script>

	<!--  Plugin for Date Time Picker and Full Calendar Plugin-->
	<script src="../../BS3/assets/js/moment.min.js"></script>

    <!--  Date Time Picker Plugin is included in this js file -->
    <script src="../../BS3/assets/js/bootstrap-datetimepicker.min.js"></script>

    <!--  Select Picker Plugin -->
    <script src="../../BS3/assets/js/bootstrap-selectpicker.js"></script>

	<!--  Checkbox, Radio, Switch and Tags Input Plugins -->
		<script src="../../BS3/assets/js/bootstrap-switch-tags.min.js"></script>

	<!--  Charts Plugin -->
	<script src="../../BS3/assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="../../BS3/assets/js/bootstrap-notify.js"></script>

    <!-- Sweet Alert 2 plugin -->
	<script src="../../BS3/assets/js/sweetalert2.js"></script>

    <!-- Vector Map plugin -->
	<script src="../../BS3/assets/js/jquery-jvectormap.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

	<!-- Wizard Plugin    -->
    <script src="../../BS3/assets/js/jquery.bootstrap.wizard.min.js"></script>

    <!--  Datatable Plugin    -->
    <script src="../../BS3/assets/js/bootstrap-table.js"></script>

    <!--  Full Calendar Plugin    -->
    <script src="../../BS3/assets/js/fullcalendar.min.js"></script>

    <!-- Light Bootstrap Dashboard Core javascript and methods -->
	<script src="../../BS3/assets/js/light-bootstrap-dashboard.js?v=1.4.1"></script>

	<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
	<script src="../../BS3/assets/js/demo.js"></script>

    <script type="text/javascript">
        $().ready(function () {
            lbd.checkFullPageBackgroundImage();

            setTimeout(function () {
                // after 1000 ms we add the class animated to the login/register card
                $('.card').removeClass('card-hidden');
            }, 700)
        });
    </script>


</body></html>
                                                     </form>

