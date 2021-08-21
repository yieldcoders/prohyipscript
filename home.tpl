{include file="header.tpl"}
<!-- main banner start -->
<section class="main-banner">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <h1 class="welcome-heading">
                    {{$content.welcomenote.content}}
                </h1>
                <p class="sub-text-banner">
                    {{$content.welcomenote.text}}
                </p>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="banner-image-top">
                    <img src="./images/banner-image.png">
                </div>
            </div>
        </div>
    </div>
   
</section>
<!-- main banner end -->

<!-- about section start -->
<section class="about-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3 class="normal-heading">
                    {{$content.about.title}}
                </h3>
                <p class="normal-text">
                    {{$content.about.content}}
                </p>
                <div class="row about-icon-rows">
                    <div class="col-md-4 about-stat-icon">
                        <img src="./images/time-icon.png" class="about-icons">
                        <h3 class="small-heading">{{$content.starton.title}}</h3>
                        <p class="small-text">{$settings.site_start_month_str_generated} {$settings.site_start_day}, {$settings.site_start_year}</p>
                    </div>
                    <div class="col-md-4 about-stat-icon">
                        <img src="./images/running-icon.png" class="about-icons">
                        <h3 class="small-heading">{{$content.runningdays.title}}</h3>
                        <p class="small-text">{$settings.site_days_online_generated}</p>
                    </div>
                    <div class="col-md-4 about-stat-icon">
                        <img src="./images/accounts-icon.png" class="about-icons">
                        <h3 class="small-heading">{{$content.totalaccounts.title}}</h3>
                        <p class="small-text" style=" font-size: 20px; ">{$settings.info_box_total_accounts_generated}</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="money-stat-box">
                    <div class="row first-money-stat-row">
                        <div class="col-md-6">
                            <h3 class="big-stat-num">{$currency_sign} {$settings.info_box_deposit_funds_generated}</h3>
                            <p class="small-stat-text">{{$content.totaldeposited.title}}</p>
                        </div>
                        <div class="col-md-6">
                            <h3 class="big-stat-num">{$currency_sign} {$settings.info_box_today_deposit_funds_generated}</h3>
                            <p class="small-stat-text">{{$content.todaydeposited.title}}</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="big-stat-num">{$currency_sign} {$settings.info_box_withdraw_funds_generated}</h3>
                            <p class="small-stat-text">{{$content.totalwithdraw.title}}</p>
                        </div>
                        <div class="col-md-6">
                            <h3 class="big-stat-num">{$currency_sign} {$settings.info_box_today_withdraw_funds_generated}</h3>
                            <p class="small-stat-text">{{$content.todaywithdraw.title}}</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <h3 class="big-stat-num">{$currency_sign} {$stat_last_deposit.amount|amount_format:2} ({$stat_last_deposit.username})</h3>
                            <p class="small-stat-text">{{$content.lastdeposit.title}}</p>
                        </div>
                        <div class="col-md-6">
                            <h3 class="big-stat-num">{$currency_sign} {$stat_last_withdrawal.amount|amount_format:2} ({$stat_last_withdrawal.username})</h3>
                            <p class="small-stat-text">{{$content.lastwithdraw.title}}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- about section end -->

<!-- investment packages section start-->
<section class="investment-packages-sec">
    <div class="container">
        <div class="row invest-title-row">
            <div class="col-md-12">
                <h1 class="investment-main-title">{{$content.investmentplans.title}}</h1>
                <p class="small-text">
                    {{$content.investmentplans.text}}
                </p>
            </div>
             
        </div>

        <div class="row">
            {foreach from=$index_plans item=p}

            <div class="col-md-4">
                <div class="pakage-box frst-box">
                    <h3 class="package-heading">{$p.name|escape:html}</h3> {if $p.plans}
                    <div class="package-rule">
                        <div class="row">
                            {foreach from=$p.plans item=o}
                            <div class="packages-rule-row">
                                <h3 class="pacakge-rule-head">Plan</h3>
                                <p class="pacakge-rule-text">{$o.name|escape:html}</p>
                            </div>
                            <div class="packages-rule-row">
                                <h3 class="pacakge-rule-head">Spent Amount ({$currency_sign})</h3>
                                <p class="pacakge-rule-text">{$o.deposit}</p>
                            </div>
                            <div class="packages-rule-row">
                                <h3 class="pacakge-rule-head">{$p.period} Profit (%)</h3>
                                <p class="pacakge-rule-text">{$o.percent}</p>
                            </div>
                            <div class="packages-rule-row">
                                <h3 class="pacakge-rule-head">Withdraw Type</h3>
                                <p class="pacakge-rule-text">{$settings.withdraw}</p>
                            </div>
                            <div class="packages-rule-row">
                            	{if $userinfo.logged != 1}
                                <a href="register" class="normal-btn-center">Invest Now</a>
                                {else}
                                <a href="deposit" class="normal-btn-center">Deposit Now</a>
                                {/if}
                            </div>

                            {/foreach} {/if}
                        </div>
                    </div>
                </div>
            </div>

            {/foreach}
        </div>
    </div>
    <div class="col-md-5">
    </div>

</section>
<!-- investment packages section end-->

<!-- refferal section start -->
<section class="referral-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="./images/refferal.png" class="refferal-image">
            </div>
            <div class="col-md-6 referral-text-side">
                <div class="refferal-first-box">
                    <h3 class="normal-heading">
                        {{$content.referralprogram.content}}
                    </h3>
                    <p class="normal-text">
                        Use our referral program and earn up to {$ref_plans[0].percent}% of referral deposits!
                    </p>
                    <div class="row">
                        {if $settings.use_referral == 1 } {section name=r loop=$ref_plans}
                        <div class="col-md-4 referral-stat-icon">
                            <img src="./images/referral-icon.png" class="about-icons">
                            <h3 class="small-heading">{$ref_plans[r].name}</h3>
                            <p class="small-text">{$ref_plans[r].percent}%</p>
                        </div>
                        {/section}
                    </div>
                    {/if}
                </div>
                <div class="refferal-first-box2">
                    <h3 class="normal-heading">
                        {{$content.referral.text}}
                    </h3>
                    <p class="normal-text">
                        Use our referral program and earn up to {$ref_plans[0].percent}% of referral deposits!
                    </p>
                    <div class="row">
                        {if $settings.representative_system == 1 } {section name=r loop=$rep_plans}
                        <div class="col-md-4 referral-stat-icon">
                            <img src="./images/referral-icon.png" class="about-icons">
                            <h3 class="small-heading">{$rep_plans[r].name}</h3>
                            <p class="small-text">{$rep_plans[r].percent}%</p>
                        </div>
                        {/section}
                    </div>
                    {/if}
                </div>
            </div>
        </div>
    </div>

</section>
<!-- refferal section end -->
<!-- deposit withdrawal section start -->
<section class="last-top-sec">
    <div class="container">
        <div class="row">
           

            <div class="col-md-6">
                <h3 class="normal-heading">
                        {{$content.lastdeposits.title}}
                    </h3>
                <table class="table  table-sm mb-0" id="dataTable">
                    <thead class="">
                        <tr>
                        <td>Date</td>
                            <td>Username</td>
                            <td>Payment Method</td>
                            <td>Amount</td>
                            

                        </tr>
                    </thead>
                    {foreach from=$last_deposits item=s}
                    <tr>
                    <td>{$s.date}</td>
                        <td>{$s.username}</td>
                        <td><img width="70px" src="images/payment-icons/dark/{$s.ec}.png"></td>
                        <td>{$currency_sign}{$s.amount}</td>
                        
                    </tr>
                    {/foreach}
                </table>
            </div>

            <div class="col-md-6">

                <h3 class="normal-heading">
                        {{$content.lastwithdrawals.title}}
                    </h3>
                <table class="table  table-sm mb-0" id="dataTable">
                    <thead class="">
                        <tr>
                         <td>Date</td>
                            <td>Username</td>
                            <td>Payment Method</td>
                            <td>Amount</td>
                           
                           

                        </tr>
                    </thead>
                    {foreach from=$last_withdrawals item=s}
                    <tr>
                    <td>{$s.date}</td>
                        <td>{$s.username}</td>
                        <td><img width="70px" src="images/payment-icons/dark/{$s.ec}.png"></td>
                        <td>{$currency_sign}{$s.amount}</td>
                        
                        <!-- <td><small><a href="https://blockchain.com/btc/tx/{$s.batch}" target="_blank">{$s.batch}</a></small></td> -->
                    </tr>
                    {/foreach}
                </table>
            </div>
        </div>
    </div>

</section>
<!-- deposit withdrawal section end -->
<!-- payment methode section start -->
<section class="payment-methode-section">
	
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="methode-section-title">{{$content.paymentmethods.content}}</h3></div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/9.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/1.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/7.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/6.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/12.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/3.png" class="payment-icons">
            </div>
        </div>
        <div class="row payment-icons-imgs">
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/4.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/10.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/5.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/2.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/11.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/14.png" class="payment-icons">
            </div>
        </div>
        <div class="row payment-icons-imgs">
            <div class="col-md-2">
            <img src="./images/payment-icons/dark/18.png" class="payment-icons">
            </div>
            <div class="col-md-2">
            <img src="./images/payment-icons/dark/19.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/13.png" class="payment-icons">
            </div>
            <div class="col-md-2">
                <img src="./images/payment-icons/dark/8.png" class="payment-icons">
            </div>
            <div class="col-md-2">
            <img src="./images/payment-icons/dark/15.png" class="payment-icons">
            </div>
            <div class="col-md-2">
            </div>
        </div>
    </div>
</section>
<!-- payment methode section end -->

{include file="footer.tpl"}