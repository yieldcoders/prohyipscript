{include file="header.tpl"}

<section class="login-section">
    <div class="container">
        <div class="row">
             <div class="col-md-3"></div>
            <div class="col-md-6 login-form">
                <h3 class="login-title">{{$content.login.content}}</h3>
                {if $alert}
                <div class="{$alert_class}">
                    <span>{$alert_message}</span>
                </div>
                {/if}
                <form class="form-horizontal mt-3" action="login" id="signInFrm" method="post" enctype="multipart/form-data" onSubmit="checkForm()">
                    {$token}
                    <label>{{$content.username.title}}</label>
                    <input type="text" name="username" class="form-control" placeholder="{{$content.username.title}}" aria-label="{{$content.username.title}}">
                   
                    <label>{{$content.password.title}}</label>
                    <input type="password" name="password" class="form-control" placeholder="{{$content.password.title}}" aria-label="{{$content.password.title}}">
              {include file="captcha.tpl" action="login"}
                    <a href="forget" id="to-recover" class=""><i class="fa fa-lock mr-1"></i> {{$content.forget.title}}</a>
                <button class="normal-btn ml-auto" type="submit" name="login">{{$content.login.title}}</button>
                                      {if $settings.isp}
                    <button class="normal-btn ml-auto" href="#" onclick="isp_login_popup()">$   {{$content.login.title}} via InvestorsStartPage</button>
                    {/if}
                </form>
                </div>
            </div>
        </div>
    </div>
</section>
{include file="footer.tpl"}
{include file="auth.tpl"}