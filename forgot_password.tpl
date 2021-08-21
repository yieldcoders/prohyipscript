{include file="header.tpl"}
<section class="login-section">
    <div class="container">
        <div class="row">

            <div class="col-md-3"></div>
            <div class="col-md-6 login-form">
                <h3 class="login-title">Forget Password</h3>
                {if $alert}
                <div class="{$alert_class}">
                    <span>{$alert_message}</span>
                </div>
                {/if}

                <form method="post" action="forget" class="form-horizontal mt-3">
                    <label>Forgot Password</label>
                            <input type="text" name="forget_email" id="forget_email" class="form-control" placeholder="Enter Email">
                            {include file="captcha.tpl" action="forgot"}
                            <button class="normal-btn ml-auto" type="submit" name="submit">Recover Password</button>
                </form>
           </div>
            </div>
        </div>
    
        </div>
</section>



{include file="auth.tpl"}


{include file="footer.tpl"}