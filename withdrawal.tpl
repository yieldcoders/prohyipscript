{include file="mheader.tpl"}
<!-- ============================================================== -->
<!-- End Left Sidebar - style you can find in sidebar.scss  -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
   
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">

        <div class="row content">
        
                        
						{if $confirm}
						
						<div class="col-sm-12 text-left">
                                <div class="card my-4">
                                    <h5 class="card-header bg-primary text-white">{{$content.withdrawconfirm.title}}</h5>
                                    <form method="post">
                                        <input type=hidden name=action value=withdraw>
                                        <div class="card-body">
                                                    {if $alert}
                        <div class="{$alert_class}">
                            <span>{$alert_message}</span>
                        </div>
                        {/if}
                            <h4 class="text-center mb-3 mt-4">{{$content.withdrawrequest.title}}</h4>
                        <p class="text-muted text-center mb-4 pb-2">{{$content.withdrawconfirm.content}}</p>
                                        
                                          <table cellspacing="0" cellpadding="2" border="0" class="table">
											<tbody>
												<tr>
													<th>{{$content.paymentmethods.title}}:</th>
													<td>{{$system}}</td>
												</tr>
												<tr>
													<th>{{$content.withdrawconfirm.text}}:</th>
													<td>{{$address}}</td>
												</tr>
												<tr>
													<th>{{$content.withdrawfee.title}}:</th>
													<td>{$settings.symbol}{{$amount}}</td>
												</tr>
												<tr>
													<th>{{$content.withdrawfee.text}}:</th>
													<td>
														{if $fee}
														{$settings.symbol}{{$fee}}
														{else}
														{{$content.withdrawrequest.text}}
														{/if}
													</td>
												</tr>
												<tr>
													<th>{{$content.withdrawfee.content}}:</th>
													<td>{$settings.symbol}{{$debit}}</td>
												</tr>

											</tbody>
										</table>

                                        </div>
                                        <div class="card-footer text-muted">
										{$str}
                                            <input type="submit" value="{{$content.complete.text}}" class="btn btn-primary ml-auto" name="submit">

                                        </div>

                                    </form>

                                </div>
                            </div>
						{else}
                            <div class="col-sm-12 text-left">
                                <div class="card my-4">
                                    <h5 class="card-header bg-primary text-white">{{$content.withdraw.title}}</h5>
                                    <form method="post">
                                        <input type=hidden name=action value=withdraw>
                                        <div class="card-body">
                                                    {if $alert}
                        <div class="{$alert_class}">
                            <span>{$alert_message}</span>
                        </div>
                        {/if}
<h4 class="text-center mb-3 mt-4">{{$content.withdrawrequest.title}}</h4>
                        <p class="text-muted text-center mb-4 pb-2">{{$content.withdrawrequest.content}} </p>
                                            <table cellspacing="0" cellpadding="2" border="0" class="table">
                                                <tbody>
                                                    <tr>
                                                        <td>{{$content.accountbalance.title}}:</td>
                                                        <td>{$settings.symbol}<b>{$ab_formated.total}</b></td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td> <small>
{section name=p loop=$ps}
   {if $ps[p].balance > 0}{$currency_sign}{$ps[p].balance|amount_format} of {$ps[p].name}<br>{/if}
{/section}
</small></td>
                                                    </tr>
                                                    <tr>
                                                        <td>{{$content.pendingwithdrawals.title}}: </td>
                                                        <td>{$settings.symbol}<b>{$ab_formated.withdraw_pending}</b></td>
                                                    </tr>

                                                    {section name=p loop=$ps}
                                                    <tr>
                                                        <td>{{$content.accountbalance.content}} {$ps[p].name} {{$content.accountbalance.text}} </td>
                                                        <td>{if $userinfo[$ps[p].field]} {$userinfo[$ps[p].field]} {else} <a href="profile">Not Set</a> {/if}</td>
                                                    </tr>
                                                    {/section}

                                                </tbody>
                                            </table>
                                            <table cellspacing="0" cellpadding="2" border="0" width="200" class="table chuttu1">
                                                <tbody>
                                                    <tr>
                                                        <td>{{$content.selectcurrency.title}}:</td>
                                                        <td>
                                                            <select class="form-control" name=ec class=inpts>
                                                                {section name=p loop=$withdraw_systems}
                                                                <option value={$withdraw_systems[p].id}>{$withdraw_systems[p].name}</option>
                                                                {/section}

                                                            </select>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>{{$content.amount.title}} ({$settings.symbol}):</td>
                                                        <td>
                                                            <input type="text" class="form-control" name=amount value="" placeholder="0.00" style="color:000 !important;">
                                                        </td>
                                                    </tr>

                                                </tbody>
                                            </table>

                                        </div>
                                        {include file="captcha.tpl" action="withdrawal"}
                                        <div class="card-footer text-muted">
                                            <input type="submit" value="{{$content.withdraw.title}}" class="btn btn-primary ml-auto" name="with_submit">

                                        </div>

                                    </form>

                                </div>

								{/if}
								
                        </div>
                    </div>
            

    {include file="mfooter.tpl"}