{include file="mheader.tpl"}

<div class="page-wrapper">

    <div class="container-fluid">

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <h5 class="card-header bg-primary text-white">{{$content.dashboard.title}}</h5>
                    <div class="card-body">

                        {if $alert}
                        <div class="{$alert_class}">
                            <span>{$alert_message}</span>
                        </div>
                        {/if}

                    

                            <div class="row text-center mb-4">
                                <div class="col-md-4">
                                    <ul class="list-group">
                                        <li class="list-group-item text-center py-4">
                                            <a href="withdraw"><h2>{$currency_sign}{$ab_formated.total}</h2></a>
                                            <span>{{$content.accountbalance.title}}</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-4">
                                    <ul class="list-group">
                                        <li class="list-group-item text-center py-4">
                                            <a href="deposit"><h2>{$currency_sign}{$ab_formated.withdrawal}</h2></a>
                                            <span>{{$content.totalwithdraw.text}}</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-4">
                                    <ul class="list-group">
                                        <li class="list-group-item text-center py-4">
                                            <a href="deposit"><h2>{$currency_sign}{$ab_formated.deposit}</h2></a>
                                            <span>{{$content.totaldeposit.title}}</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-4">
                                    <ul class="list-group">
                                        <li class="list-group-item bg-primary text-white">
                                            {{$content.profile.title}}
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-center">{{$content.username.title}}
                                            <span>{$userinfo.username} {$userinfo.stars}
                                            {$userinfo.level}</span></li>
                                             
                                        <li class="list-group-item d-flex justify-content-between align-items-center">{{$content.email.title}}
                                            <span>{$userinfo.email}</span></li>
                                        <li class="list-group-item d-flex justify-content-between align-items-center">{{$content.fullname.title}}
                                            <span>{$userinfo.full_name}</span></li>

                                       

                                    </ul>
                                </div>
                               

                                <div class="col-md-4">
                                    <ul class="list-group">
                                        <li class="list-group-item bg-success text-white">
                                            {{$content.deposit.text}}
                                        </li>
                                        <li class="list-group-item">{{$content.totaldeposit.title}} <span class="float-right pull-right">{$currency_sign}{$ab_formated.deposit}</span>
                                        </li>
                                        <li class="list-group-item">{{$content.activedeposit.title}}<span class="float-right pull-right">{$currency_sign}{$ab_formated.active_deposit}</span>
                                        </li>
                                        <li class="list-group-item">{{$content.lastdeposit.title}} <span class="float-right pull-right text-right">
                                    <b>{$currency_sign}{$last_deposit|default:"n/a"}</b> &nbsp; <mdall class="d-block">{$last_deposit_date|default:"n/a"}</mdall>

                    </span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-md-4">
                                    <ul class="list-group">
                                        <li class="list-group-item bg-warning text-white">
                                            {{$content.withdraw.text}}
                                        </li>
                                        <li class="list-group-item">{{$content.totalwithdraw.title}} <span class="float-right pull-right">{$currency_sign}{$ab_formated.withdrawal}</span>
                                        </li>
                                        <li class="list-group-item">{{$content.pendingwithdrawals.title}} <span class="float-right pull-right">{$currency_sign}{$ab_formated.withdraw_pending}</span>
                                        </li>
                                        <li class="list-group-item">{{$content.totalwithdraw.content}} <span class="float-right pull-right text-right">         {if $last_withdrawal}

                                  <b>{$currency_sign}{$last_withdrawal|default:"n/a"}</b> &nbsp; <mdall class="d-block">{$last_withdrawal_date|default:"n/a"}</mdall>
                                {/if}      </span>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                     </div>

                </div>
                <div class="row">
                            <div class="col-md-12">
                                <ul class="list-group">
                                    <li class="list-group-item card-header bg-primary text-white">
                                        Referral Information - <a class="text-white" href="marketing">{{$content.referrals.title}}</a>
                                    </li>
                                    <li class="list-group-item text-center">
                                        <ul class="list-inline">
                                           <li class="list-inline-item">{{$content.sponsor.title}}: <b>{$userinfo.sponsor|default:"N/A"}</b></li>
                                        </ul>
                                    </li>
                                    <li class="list-group-item text-center py-2">
                                        <h5 class="mb-2"><code>{$settings.site_url}?ref={$userinfo.username}</code> </h5>
                                        <span class="d-block text-muted">{{$content.comission.content}}</span>

                                    </li>
                                </ul>
                            </div>
                        </div>

                           </div>
        </div>
    </div>
             

    {include file="mfooter.tpl"}