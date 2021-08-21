<!DOCTYPE html>
<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/svg+xml" href="/img/favicon.ico">
    <link rel="stylesheet" href="/fonts/fonts.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">      <link rel="stylesheet" href="/css/animate.css">     <link rel="stylesheet" href="/css/style.css?ver=250">
    <link rel="stylesheet" href="assets-dash/plugins/morris/morris.css">

        <!-- App css -->
        <link href="assets-dash/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets-dash/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets-dash/css/style.css" rel="stylesheet" type="text/css" />
<script src="assets-dash/js/modernizr.min.js"></script>
    <title>{$settings.site_name}</title>
    <style type="text/css">
      .dashboardListBody.dashboardListBody--referral {
    padding: 30px;
}
    </style>
</head>

<body class="fixed-left">
    <div id="wrapper">
           <section id="Dashboard" class="dashboardIntro">
      {include file="mnav.tpl"}


            <div class="account notDashboard">
                <div class="row">
                      {include file="ac_data.tpl"}
  <div class="content-page"> 
    <div class="content">
        <div class="container">  
                    
<div class="col-lg-12">
    <div class="referralList">
        <div class="referralList__header">
            <div class="referralList__headerTitle">
                MY REFERRALS
            </div>
            <div class="referralList__headerLink">
                YOUR REFERRAL LINK <span id="referralLink">{$settings.site_url}/?ref={$userinfo.username}</span>
                <button class="btn--outlineCopylink" data-clipboard-target="#referralLink">COPY</button>
                <a href="/?a=referallinks" class="btn--referralMarketingBanner">MARKETING BANNERS</a>
            </div>

        </div>
        <div class="dashboardListBody  dashboardListBody--referral">
                                    
                  
                  
                  
                  
  <br>

<h3>Your Referrals:</h3><br>
{if $upline.email != ""}
Your upline is <a href=mailto:{$upline.email}>{$upline.name}</a><br><br>
{/if}
<br>
<table width=300 cellspacing=1 cellpadding="1" class="tab table table-stripped table-bordered">
<tr>
  <td class=item>Referrals:</td>
  <td class=item>{$total_ref}</td>
</tr><tr>
  <td class=item>Active referrals:</td>
  <td class=item>{$active_ref}</td>
</tr><tr>
  <td class=item>Total referral commission:</td>
  <td class=item>{$currency_sign}{$commissions}</td>
</tr>
</table>
<br>
{if $settings.show_refstat}

<h3>Referral ins/signups</h3><br>
<table cellspacing=0 cellpadding=1 border=0>
<form method=post name=opts>
<input type=hidden name=a value=referals>
 <td align=right>
From: </td>
<td>
<select name=month_from class=inpts>
{section name=month_from loop=$month}
<option value={$smarty.section.month_from.index+1} {if $smarty.section.month_from.index+1 == $frm.month_from}selected{/if}>{$month[month_from]}
{/section}
</select> &nbsp;
<select name=day_from class=inpts>
{section name=day_from loop=$day}
<option value={$smarty.section.day_from.index+1} {if $smarty.section.day_from.index+1 == $frm.day_from}selected{/if}>{$day[day_from]}
{/section}
</select> &nbsp;
<select name=year_from class=inpts>
{section name=year_from loop=$year}
<option value={$year[year_from]} {if $year[year_from] == $frm.year_from}selected{/if}>{$year[year_from]}
{/section}
</select>
</td>
 <td rowspan=2>
  &nbsp; <input type=submit value="Go" class=sbmt>
 </td>
</tr>
<tr><td align=right>To:</td><td> <select name=month_to class=inpts>
{section name=month_to loop=$month}
<option value={$smarty.section.month_to.index+1} {if $smarty.section.month_to.index+1 == $frm.month_to}selected{/if}>{$month[month_to]}
{/section}
</select> &nbsp;
<select name=day_to class=inpts>
{section name=day_to loop=$day}
<option value={$smarty.section.day_to.index+1} {if $smarty.section.day_to.index+1 == $frm.day_to}selected{/if}>{$day[day_to]}
{/section}
</select> &nbsp;

<select name=year_to class=inpts>
{section name=year_to loop=$year}
<option value={$year[year_to]} {if $year[year_to] == $frm.year_to}selected{/if}>{$year[year_to]}
{/section}
</select>

 </td>
</tr></form></table>


<table width=300 celspacing=1 cellpadding=1 border=0>
<tr>
 <td class=inheader>Date</td>
 <td class=inheader>Ins</td>
 <td class=inheader>Signups</td>
</tr>
{if $show_refstat}
{section name=s loop=$refstat}
<tr>
 <td class=item align=center><b>{$refstat[s].date}</b></td>
 <td class=item align=right>{$refstat[s].income}</td>
 <td class=item align=right>{$refstat[s].reg}</td>
</tr>
{/section}
{else}
<tr>
 <td class=item align=center colspan=3>No statistics found for this period.</td>
</tr>
{/if}
</table><br>
{/if}

{if $settings.show_referals}
{if $show_referals}
<h3>Your referrals:</h3>
<table cellspacing=1 cellpadding=1 border=0>
<tr>
 <td class=inheader>Nickname</td>
 <td class=inheader>E-mail</td>
 <td class=inheader>Status</td>
</tr>
{section name=s loop=$referals}
<tr>
 <td class=item><b>{$referals[s].username}</b></td>
 <td class=item><a href=mailto:{$referals[s].email}>{$referals[s].email}</a></td>
 <td class=item>{if $referals[s].q_deposits > 0}Deposited{else}No deposit yet{/if}</td>
</tr>
{if $referals[s].ref_stats}
<tr>
 <td colspan=3>
  User referrals:
  {section name=l loop=$referals[s].ref_stats}
   <nobr>{$referals[s].ref_stats[l].cnt_active} active of {$referals[s].ref_stats[l].cnt} on level {$referals[s].ref_stats[l].level}{if !$smarty.section.l.last};{/if}</nobr>
  {/section}
 </td>
</tr>
{/if}
{if $referals[s].came_from}
<tr><td colspan=3>
<a href="{$referals[s].came_from}" target=_blank>[User came from]</a>
</td></tr>
{/if}
{/section}
<tr>
 <td colspan=3>&nbsp;</td>
</tr>
<tr>
 <td colspan=3><b>2-10 level referrals:</b> {$cnt_other}</td>
</tr>
<tr>
 <td colspan=3><b>2-10 level active referrals:</b> {$cnt_other_active}</td>
</tr>
</table>
{/if}
{/if}

                                </div>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/TweenMax.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/page.withdraw.js"></script>
  <script src="js/ScrambleTextPlugin.min.js"></script>
<script src="js/calculator.js"></script>
<script src="js/page.dashboard.js?ver=2"></script>
<div class="accountPreload" style="width: 0; height: 0; position: absolute; top:0; left: 0; overflow:hidden;">
    <img src="/img/loading.gif" alt="Loading">
    <!-- jQuery  -->
        <script src="assets-dash/js/jquery.min.js"></script>
        <script src="assets-dash/js/popper.min.js"></script>
        <script src="assets-dash/js/bootstrap.min.js"></script>
        <script src="assets-dash/js/detect.js"></script>
        <script src="assets-dash/js/fastclick.js"></script>
        <script src="assets-dash/js/jquery.blockUI.js"></script>
        <script src="assets-dash/js/waves.js"></script>
        <script src="assets-dash/js/jquery.nicescroll.js"></script>
        <script src="assets-dash/js/jquery.slimscroll.js"></script>
        <script src="assets-dash/js/jquery.scrollTo.min.js"></script>

        <!-- KNOB JS -->
        <!--[if IE]>
        <script type="text/javascript" src="assets-dash/plugins/jquery-knob/excanvas.js"></script>
        <![endif]-->
        <script src="assets-dash/plugins/jquery-knob/jquery.knob.js"></script>

        <!--Morris Chart-->
        <script src="assets-dash/plugins/morris/morris.min.js"></script>
        <script src="assets-dash/plugins/raphael/raphael-min.js"></script>

        <!-- Dashboard init -->
        <script src="assets-dash/pages/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="assets-dash/js/jquery.core.js"></script>
        <script src="assets-dash/js/jquery.app.js"></script>
</div>
 </div>
</body>
</html>