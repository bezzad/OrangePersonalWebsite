<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Xomorod.Demo._default" %>
<%@ Import Namespace="Xomorod.Demo.Core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <title>Xomorod Corporation Free Applications & News</title>

    <!--iOS -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="description" content="Xomorod Co. is an Iranian multinational technology company specializing in Internet-related services and products. 
        These include online advertising technologies, learning, cloud books, tech news, and system or phone software." />
    <meta name="author" content="Mr. Behzad Khosravifar" />

    <!-- WOT SEO -->
    <meta name="wot-verification" content="f56ce249532f51527774" />
    <meta name="keywords" content="xomorod, zoomorod, form, software, company, business, 
        znews, development, download, free, technology, zomorod, fast book,  
        ErrorControlSystem, ErrorLog, WPF, Win32, WinForm, Error Control System, Make Class Schedule, 
        TSP, Genetic, GA, SignalR, Fox Robbit, Fuzzy Logic,
        WHOis, who is, tic tac toe, snipping multiple screen, sudoku,
        Amazing Team, Lets Get In Touch, f56ce249532f51527774" />

    <meta name="keywords" content="زمرد, نرم افزار, تکنولوژی, فناوری, کد باز, اندروید, اپل, ویندوز, موبایل, f56ce249532f51527774" />

    <!-- Google SEO -->
    <meta name="google-site-verification" content="AYP4KxNMI1VaPP5CRwnX7IGbL7ZmNWlspzwCHYlDgrw" />

    <!-- Google Analytics -->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-73834244-1', 'auto');
        ga('send', 'pageview');

    </script>
    <!-- End Google Analytics -->

    <!-- Bing SEO -->
    <meta name="msvalidate.01" content="27A3B78838E7E315F07577745A289624" />

    <!-- Alexa SEO -->
    <meta name="alexaVerifyID" content="xiqiCcGPB3tysfNYAwTR4myLH8Q" />

    <meta name="robots" content="index, follow" />
    <meta name="googlebot" content="index" />


    <link rel="canonical" href="http://xomorod.com/" />
    <link rel="amphtml" href="https://www.xomorod.com" />

    <!-- International Targeting by hreflang tags -->
    <link rel="alternate" hreflang="x-default" href="http://xomorod.com" />
    <link rel="alternate" href="http://xomorod.com/fa" hreflang="fa" />
    <link rel="alternate" href="http://xomorod.com/en" hreflang="en" />



    <link rel="shortcut icon" href="<%= CdnHelper.GetCdn("favicon_jpg") %>">

    <!---------- PreLoader Animate ----------->
    <link href="<%= CdnHelper.GetCdn("loader_css") %>" rel="stylesheet" />
    <script src="<%= CdnHelper.GetCdn("loader_js") %>"></script>
    <!---------------------------------------->
</head>

<body onload="loadCompleted();" ng-app="xomorodApp" ng-controller="bodyController" id="page-top">
    <!---------- PreLoader Animate ----------->
    <div class="loader" id="loader">
        <div id='c'>
            <div class='s' id="s1"></div>
            <div class='s' id="s2"></div>
            <div class='s' id="s3"></div>
            <div class='s' id="s4"></div>
            <div class='s' id="s5"></div>
            <div class='s' id="s6"></div>
        </div>
    </div>
    <!---------------------------------------->

    <!-- Menu -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Xomorod</a>
                <a id="loginLink" data-toggle="tooltip" data-placement="right" data-original-title="{{ 'SignIn' | translate }}" class="navbar-brand" href="./pages/loginPage.aspx"><i class="fa fa-1x fa-sign-in"></i></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="overflow: hidden">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a id="animationAbout" class="page-scroll" href="#about" translate>About</a>
                    </li>
                    <li>
                        <a id="animationServices" class="page-scroll" href="#services" translate>Services</a>
                    </li>
                    <li>
                        <a id="animationPortfolio" class="page-scroll" href="#portfolio" translate>Portfolios</a>
                    </li>
                    <li>
                        <a id="animationContact" class="page-scroll" href="#team" translate>Contact</a>
                    </li>
                    <li>
                        <div style="padding: 10px;" class="unselectable">
                            <input id="chkLanguage" type="checkbox" checked data-toggle="toggle" data-on="English" data-off="فارسی" value="{{ isEnglish }}" onchange="OnLanguageChanged(checked);">
                        </div>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!-- End of Menu -->

    <!-- Header Section -->
    <header id="head">
        <div class="header-content">
            <div class="header-content-inner">
                <object data="images/xomorod.svg" type="image/svg+xml" id="svg-logo"></object>
                <h1 id="animationSandbox" class="site__title mega unselectable">Xomorod</h1>
            </div>
        </div>
        <a href="#about" data-scroll="true" class="scroll-arrow hidden-xs hidden-sm page-scroll">
            <i class="fa fa-angle-down"></i>
        </a>
    </header>
    <section class="bg-primary" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center" dir="{{ 'RightToLeft' | translate }}">
                    <h2 class="section-heading" translate>MoreInfoTitle</h2>
                    <hr class="light">
                    <p class="text-faded" translate>MoreInfo</p>
                    <a href="#head" class="btn btn-warning btn-xl page-scroll wow tada" translate>GetStarted</a>
                </div>
            </div>
        </div>
    </section>


    <!-- Header Section -->
    <div ng-include="'pages/html/services.html'"></div>
    <!--/ Header Section -->

    <!-- Products -->
    <div ng-include="'pages/html/products.html'"></div>
    <!--/ Products -->

    <!-- Download Ribbon -->
    <div ng-include="'pages/html/download_ribbon.html'"></div>
    <!--/ Download Ribbon -->

    <!-- Team Section -->
    <div ng-include="'pages/html/team_section.html'"></div>

    <!-- Contact Section -->
    <div ng-include="'pages/html/contact.html'"></div>
    <!--/ Contact Section -->

    <a href="#head" id="toTop" class="toTop hidden-xs hidden-sm page-scroll" style="display: none;">
        <i class="fa fa-angle-up"></i>
    </a>

    <!--/ Team Section -->

</body>

<!---------- Load Scripts and Styles ----------->

<!-- jQuery -->
<script src="<%= CdnHelper.GetCdn("jquery_min_js") %>"></script>

<!-- Bootstrap CSS -->
<link href="<%= CdnHelper.GetCdn("bootstrap_min_css") %>" rel="stylesheet">
<link href="<%= CdnHelper.GetCdn("bootstrap_toggle_min_css") %>" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<%= CdnHelper.GetCdn("font_awesome_min_css") %>" rel="stylesheet">

<!-- Custom CSS -->
<link href="<%= CdnHelper.GetCdn("xomorod_dialog_css") %>" rel="stylesheet" />
<link href="<%= CdnHelper.GetCdn("xomorod_css") %>" rel="stylesheet" />

<!-- Plugin CSS -->
<link href="<%= CdnHelper.GetCdn("animate_min_css") %>" rel="stylesheet">

<!-- Marked JS -->
<script src="<%= CdnHelper.GetCdn("marked_min_js") %>"></script>

<!-- Angular.JS -->
<script src="<%= CdnHelper.GetCdn("angular_min_js") %>"></script>

<!-- Angular Cookies -->
<script src="<%= CdnHelper.GetCdn("angular_cookies_min_js") %>"></script>

<!-- Angular-Marked JS -->
<script src="<%= CdnHelper.GetCdn("angular_marked_js") %>"></script>

<!-- Angular Translate -->
<script src="<%= CdnHelper.GetCdn("angular_translate_min_js") %>"></script>

<!-- Angular Translate Url Loader -->
<script src="<%= CdnHelper.GetCdn("angular_translate_loader_url_min_js") %>"></script>

<script src="<%= CdnHelper.GetCdn("app_js") %>"></script>

<!-- Bootstrap JS -->
<script src="<%= CdnHelper.GetCdn("bootstrap_min_js") %>"></script>
<script src="<%= CdnHelper.GetCdn("bootstrap_toggle_min_js") %>"></script>

<!-- Respond IE -->
<script src="<%= CdnHelper.GetCdn("respond_min_js") %>"></script>

<!-- Plugin JavaScript -->
<script src="<%= CdnHelper.GetCdn("jquery_easing_min_js") %>"></script>
<script src="<%= CdnHelper.GetCdn("jquery_fittext_min_js") %>"></script>

<!-- Animation Plugin -->
<script src="<%= CdnHelper.GetCdn("wow_min_js") %>"></script>

<!-- Custom Theme JavaScript -->
<script src="<%= CdnHelper.GetCdn("xomorod_js") %>"></script>

<!-- Tooltips loader -->
<script>
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>

<script>
    loadCompleted = function () {
        document.getElementById('loader').style.display = 'none';

        var lang = '<%= GetQueryLanguage() %>';

        if (lang === ' ') return;

        if (lang === 'fa') {
            OnLanguageChanged(false);
            document.getElementById("chkLanguage").checked = true;
        } else if (lang === 'en') {
            OnLanguageChanged(true);
            document.getElementById("chkLanguage").checked = false;
        }
    }
</script>
<!---------------------------------------------->
</html>
