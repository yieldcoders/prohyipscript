<!DOCTYPE html>
<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>{$settings.site_name}</title>
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css"> 
     <link rel="stylesheet" type="text/css" href="style.css"> 
     <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
   
</head>

<body>
     <div class="wrapper">
      <div class="section">
        <nav class="navbar navbar-expand-lg navbar-dark ">
   <div class="container" style=" padding: 0px;">  <a class="navbar-brand" href="{$settings.site_url}">
        <img src="./images/logo.png">
      </a>
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
      
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index">{{$content.home.title}}
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="faq">{{$content.faq.title}}</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="rules">{{$content.rules.title}}</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="customer-support">{{$content.contact.title}}</a>
          </li>

                 {if $userinfo.logged == 1}
          <li class="nav-item active">
            <a class="nav-link" href="dashboard"><span class="glyphicon glyphicon-user"></span> {{$content.dashboard.title}}</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="logout"><span class="glyphicon glyphicon-log-in"></span> {{$content.logout.title}}</a>
          </li>
           {else}
          <li class="nav-item special">
            <a class="nav-link " href="login"><span class="glyphicon glyphicon-log-in"></span> {{$content.login.title}}</a>
          </li>
          <li class="nav-item special">
            <a class="nav-link" href="register"><span class="glyphicon glyphicon-user"></span> {{$content.register.title}}</a>
          </li>
          {/if}          
        </ul>
    </div>
  </div>
  </nav>
     </div>
   </div>
   