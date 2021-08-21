{include file="mheader.tpl"}
        <!-- ============================================================== -->
<!-- End Left Sidebar - style you can find in sidebar.scss  -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
    <!-- ============================================================== -->
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
    <div class="row content">

        <div class="col-12 text-left">
            <div class="card my-4">
                <h5 class="card-header bg-primary text-white">{{$content.profile.content}}</h5>
                <form method="POST">
                    <div class="card-body">

                        {if $alert}
                        <div class="{$alert_class}">
                            <span>{$alert_message}</span>
                        </div>
                        {/if}

                        <div class="form-group">
                            <label> {{$content.sponsor.title}} </label>
                            <input type="text" readonly="" value="{$userinfo.sponsor|default:" No Sponsor "}" class="form-control">
                        </div>
                        <div class="form-group">
                            <label> {{$content.username.title}} </label>
                            <input type="text" value="{$userinfo.username}" readonly="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label> {{$content.fullname.title}} </label>
                            <input type="text" name="name" value="{$userinfo.full_name}" class="form-control">
                        </div>
                        <div class="form-group">

                            <label> {{$content.email.title}} </label>
                            <input type="text" name="email" value="{$userinfo.email}" {if !($settings.general.can_change_email)} readonly {/if} class="form-control">
                        </div>
                        <div class="form-group">
                            <label> {{$content.question.content}} </label>
                            <input type="text" name="question" value="{$userinfo.question}" class="form-control">
                        </div>
                        <div class="form-group">
                            <label> {{$content.answer.title}} </label>
                            <input type="text" name="answer" value="{$userinfo.awnser}" class="form-control">
                        </div>

                    </div>
                    <div class="card-footer text-muted">
                        <input type="submit" value="{{$content.save.title}}" class="btn btn-primary ml-auto" name="submit">

                    </div>

                </form>

            </div>
            <div class="card my-4">
                <h5 class="card-header bg-primary text-white">{{$content.security.content}}</h5>
				
				{if !$userinfo.2fa}
                <form method="POST" id="security">
                    <div class="card-body">

                        <br>
                        <h2> {{$content.2fa.title}}</h2>
                        <p class="card-text">1. Install <a href="https://m.google.com/authenticator">Google Authenticator</a> on your mobile device</p>                         
						<label><img src="{{$qr_url}}"></label>                         
						<p class="card-text">2. Your Secret Code: {{$secret}}</p>                         
						<p class="card-text">3. Scan and two factor token from Google Authenticator to verify correct setup</p>
                        <input type="hidden" name="secret" value="{{$secret}}">

                        <div class="form-group">
                            <input type="text" name="code" class="form-control" placeholder="{{$content.code.title}}">
                            <br>
                        </div>
                    </div>
                    <div class="card-footer text-muted">
                        <input name="en_2fa" type="submit" class="btn btn-primary" id="en_2fa" value="{{$content.btn2fa.title}}">
                    </div>

                </form>
				{else}
				<form method="POST" id="security">
                    <div class="card-body">

                        <br>
                        <h5 class="card-header bg-primary text-white"> {{$content.2fa.title}}</h5>

                        <div class="form-group">
                            <input type="text" name="code" class="form-control" placeholder="{{$content.code.title}}">
                            <br>
                        </div>
                    </div>
                    <div class="card-footer text-muted">
                        <input name="dis_2fa" type="submit" class="btn btn-primary" id="dis_2fa" value="{{$content.btn2fa.content}}">
                    </div>

                </form>
				{/if}
            </div>

            <div class="card my-4">
               <h5 class="card-header bg-primary text-white">{{$content.password.content}}</h5>
                <form method="POST" id="security">
                    <div class="card-body">

                        <div class="form-group">
                            <label> {{$content.oldpassword.title}}</label>
                            <input type="password" name="ppassword" value="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label> {{$content.oldpassword.content}}</label>
                            <input type="password" name="password" value="" class="form-control">
                      
                        </div>
                        <div class="form-group">
                            <label> {{$content.repassword.title}} </label>
                            <input type="password" name="rpassword" value="" class="form-control">
                         
                        </div>
                    </div>
                    <div class="card-footer text-muted">

                        <input class="btn btn-primary" type="submit" name="submit" value="{{$content.update.title}}">

                    </div>
                </form>
            </div>
            <div class="card my-4">
                <h5 class="card-header bg-primary text-white">{{$content.payment.title}}</h5>
                <form method="POST">
                    <div class="card-body">
                      
                            <p class="card-title">{{$content.payment.content}}</p>
                            <hr>
							
							{foreach from=$payment item=$pm}
							<div class="form-group">
                                <label class="control-label">{{$pm.name}} Address</label>
                                <input type="text" id="{{$pm.field}}" value="{{$userinfo[$pm.field]}}" {if !($settings.general.can_change_wallet_acc) && ($userinfo[$pm.field])} readonly {/if} class="form-control" placeholder="" name="{{$pm.field}}">
                            </div>
							{/foreach}
                        </div>
                        
                        <div class="card-footer text-muted">
                            <button type="submit" name="payment_settings" class="btn btn-primary"> {{$content.save.title}}</button>
                        </div>
                </form>
 </div>
        </div>
    </div>

{include file="mfooter.tpl"}