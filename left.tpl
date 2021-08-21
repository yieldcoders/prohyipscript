<div class="col-md-4">

    {if $userinfo.logged == 1}
     <div class="card my-4">
        <h5 class="card-header bg-primary text-white">Profile Info</h5>
        <div class="card-body">
            <div class="row">
                
                    <table class="table table-sm mb-0 table-borderless">
                            <tbody>
                                <tr>
                                    <td>Name</td>
                                    <td>{$userinfo.username}</td>
                                </tr>

                                <tr>
                                    <td>Full Name</td>
                                    <td>{$userinfo.full_name}</td>
                                </tr>

                                <tr>
                                    <td>Email</td>
                                    <td>{$userinfo.email}</td>
                                </tr>
                                <tr>
                                    <td>Sponsor</td>
                                    <td>{$userinfo.sponsor|default:"N/A"}</td>
                                </tr>
                                <tr>
                                    <td>User Total Balance</td>
                                    <td>{$currency_sign}<b>{$ab_formated.total}</b>
                                        <br>  <small>
{section name=p loop=$ps}
   {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance} of {$ps[p].name}<br>{/if}
{/section}
</small>
                                    </td>
                                </tr>
                            </tbody>
                    </table>

                
            </div>
        </div>
    </div>

    <div class="card my-4">
        <h5 class="card-header bg-primary text-white">User Menu</h5>
        <div class="card-body">
            <div class="row">
            <ul class="list-group">          
           <li class="sidebar-item"><a href="dashboard">Dashboard</a></li>
            <li class="sidebar-item"><a href="deposit">Deposit</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="withdraw">Withdraw</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="profile">Profile</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="marketing">Referral</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="support">Support</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="my-packages">My Deposits</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="earnings">Earning History</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="my-referrals">Referral History</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="my-withdrawals">Withdrawal History</a></li>
                        <li class="sidebar-item"><a class="sidebar-link waves-effect waves-dark sidebar-link" href="logout">log out</a></li>
                    </ul>
            
            </div>
        </div>
    </div>


 


    {else}
   

      <div class="card my-4">
        <h5 class="card-header bg-primary text-white">Site Information</h5>
        <div class="card-body">
            <div class="row">

 <table class="table table-hover table-primary table-sm mb-0" >

        <tr>
            <td><b>Started</b> </td>
            <td>{$settings.site_start_month_str_generated} {$settings.site_start_day}, {$settings.site_start_year}</td>
        </tr>

        <tr>
            <td><b>Running days</b></td>
            <td>{$settings.site_days_online_generated}</td>
        </tr>

        <tr>
            <td><b>Total accounts</b></td>
            <td>{$settings.info_box_total_accounts_generated}</td>
        </tr>

        <tr>
            <td><b>Active accounts</b></td>
            <td>{$settings.info_box_total_active_accounts_generated}</td>
        </tr>

        <tr>
            <td><b>Total deposited</b></td>
            <td>{$currency_sign} {$settings.info_box_deposit_funds_generated}</td>
        </tr>
        <tr>
            <td><b>Today deposited</b></td>
            <td>{$currency_sign} {$settings.info_box_today_deposit_funds_generated}</td>
        </tr>

        <tr>
            <td><b>Total withdraw</b></td>
            <td>{$currency_sign} {$settings.info_box_withdraw_funds_generated}</td>
        </tr>
        <tr>
            <td><b>Today withdraw</b></td>
            <td>{$currency_sign} {$settings.info_box_today_withdraw_funds_generated}</td>
        </tr>

        <tr>
            <td><b>Newest Member</b></td>
            <td>{$settings.show_info_box_newest_member_generated}</td>
        </tr>

        <tr>
            <td><b>Last deposit:</b></td>
            <td>{$currency_sign} {$stat_last_deposit.amount|amount_format:2} ({$stat_last_deposit.username})</td>
        </tr>

        <tr>
            <td><b>Last withdraw:</b></td>
            <td>{$currency_sign} {$stat_last_withdrawal.amount|amount_format:2} ({$stat_last_withdrawal.username})</td>
        </tr>

        <tr>
            <td><b>Withdraw Type</b></td>
            <td> {$settings.withdraw}</td>
        </tr>
        <tr>
            <td><b>Automatic Withdrawal</b></td>
            <td> {$settings.auto_withdraw}</td>
        </tr>

    </table>
                </div>
        </div>
    </div>
     <div class="card my-4">
        <h5 class="card-header bg-primary text-white">Site Stats</h5>
        <div class="card-body">
            <div class="row">
                
                    <ul>
                        <li><a href="top-referrals">Top Referrals</a></li>
                        <li><a href="top-investors">Top Investors</a></li>
                        <li><a href="last-withdrawals">Last Withdrawals</a></li>
                        <li><a href="last-deposits">Last Deposits</a></li>
                        <li><a href="live-payments">Paid out</a></li>
                    </ul>

                
            </div>
        </div>
    </div>
   
  {/if}
</div>