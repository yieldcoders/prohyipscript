<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Yield Coders">
    <title>{$settings.site_name}</title>
    <!-- Favicon icon -->
    <link rel="apple-touch-icon" sizes="57x57" href="yc-admin/assets/images/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="yc-admin/assets/images/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="yc-admin/assets/images/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="yc-admin/assets/images/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="yc-admin/assets/images/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="yc-admin/assets/images/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="yc-admin/assets/images/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="yc-admin/assets/images/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="yc-admin/assets/images/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="yc-admin/assets/images/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="yc-admin/assets/images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="yc-admin/assets/images/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="yc-admin/assets/images/favicon-16x16.png">
    <link rel="manifest" href="assets/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="yc-admin/assets/images/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <!-- Styles -->
    <link href="yc-admin/dist/css/style.min.css" rel="stylesheet">
</head>
<body>
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header">
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="fas fa-bars"></i></a>
                    <!-- ============================================================== -->
                    <div class="navbar-brand">
                    <a href="dashboard">	
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <img src="yc-admin/assets/images/logo-icon.png" alt="homepage" class="dark-logo" />
                            <!-- Light Logo icon -->
                            <img src="yc-admin/assets/images/logo-light-icon.png" alt="homepage" class="light-logo" />
                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span class="logo-text" href="dashboard">
                             <!-- dark Logo text -->
                             <img src="yc-admin/assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                             <!-- Light Logo text -->    
                             <img src="yc-admin/assets/images/logo-light-text.png" class="light-logo" alt="homepage" />
                             </span>
                    </a>

               </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><!-- <i class="fas fa-ellipsis-v"></i> --></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
        
                    <ul class="navbar-nav float-left mr-auto">
                     </ul>
                   
                    <ul class="navbar-nav float-right">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                              <i class="fas fa-language"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right animated bounceInDown" aria-labelledby="navbarDropdown2">
                                <a class="dropdown-item" href="#"><i class="flag-icon flag-icon-us"></i> English</a>
                                <a class="dropdown-item" href="#"><i class="flag-icon flag-icon-fr"></i> French</a>
                                <a class="dropdown-item" href="#"><i class="flag-icon flag-icon-es"></i> Spanish</a>
                                <a class="dropdown-item" href="#"><i class="flag-icon flag-icon-de"></i> German</a>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-white waves-effect waves-dark pro-pic" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Hello <span class="text-white">{$userinfo.username}</span>! <img src="https://yieldcoders.com/install/yc-admin/assets/images/logo-light-icon.png" alt="user" class="rounded-circle" width="31"></a>
                            <div class="dropdown-menu dropdown-menu-right user-dd animated">
                            	
                            <h6 class="dropdown-item" ><small class="text-muted"><b><i class="fas fa-wallet"></i> {{$content.accountbalance.title}}</b></small> <br>{$currency_sign} <b>{$ab_formated.total}</b>
                               
                                      
                              <small class="dropdown-item">
                                {section name=p loop=$ps}
                                         {if $ps[p].balance > 0}<img src="images/payment-icons/{$ps[p].id}.png" height="12"> {$currency_sign}{$ps[p].balance|amount_format}{/if}
                                {/section}
                            </small>
                           </h6>
                            <hr>
                                <a class="dropdown-item" href="profile"><i class="fas fa-user"></i> {{$content.profile.title}}</a>
                                <a class="dropdown-item" href="logout"><i class="fas fa-sign-out-alt"></i> {{$content.logout.title}}</a>
                            </div>
                        </li>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin5">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">

                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav ">
                        <!-- User Profile-->
                        <li class="p-4">

                            <h5 class="text-white"><i class="fas fa-user"></i> {{$content.fullname.title}}</h5>
                            <h6 class="text-white">{$userinfo.full_name}</h6>

                            <h5 class="text-white p-t-30 db"><i class="fas fa-wallet"></i> {{$content.accountbalance.title}}</h5>
                            <h6 class="text-white"> {$currency_sign} <b>{$ab_formated.total}+<small>{$currency_sign}<span id="exdata">{number_format($expected,8)}</span></small></b>
                      
                           </h6>
                            <hr>
                        </li>
                        <!-- User Profile-->
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="dashboard"><i class="fas fa-home"></i>Dashboard</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="deposit"><i class="fa fa-plus-square"></i> {{$content.deposit.title}}</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="withdraw"><i class="fas fa-download"></i> {{$content.withdraw.title}}</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="profile"><i class="fas fa-user"></i> {{$content.profile.title}}</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="marketing"><i class="fas fa-network-wired"></i> {{$content.referral.title}}</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="my-packages"><i class="fas fa-arrow-up"></i> {{$content.deposit.text}}</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="earnings"><i class="fas fa-people-arrows"></i> {{$content.earnings.title}}</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="my-referrals"><i class="fas fa-history"></i> {{$content.referrals.title}}</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="my-withdrawals"><i class="fas fa-user-clock"></i> {{$content.withdraw.text}}</a></li>
                         <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="support"><i class="fas fa-ticket-alt"></i> {{$content.support.title}}</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="logout"><i class="fas fa-sign-out-alt"></i> {{$content.logout.title}}</a></li>
                        
                    </ul>

                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>