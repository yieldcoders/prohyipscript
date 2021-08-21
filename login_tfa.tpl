{include file="header.tpl"}

<section class="login-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="./images/sign-in-banner.png" class="login-image">
            </div>
            <div class="col-md-6 login-form">
                <h3 class="login-title">{{$content.2fa.content}}</h3>
                {if $alert}
                <div class="{$alert_class}">
                    <span>{$alert_message}</span>
                </div>
                {/if}
	<form class="card" method="post" action="tfa">
									<div class="card-body p-6 ">
										<div class="card-title text-center">{{$content.2fa.title}}</div>
										<div class="input-icon form-group wrap-input">
											<span class="input-icon-addon search-icon">
												<i class="fas fa-user-tie"></i>
											</span>
											<input type="text" class="form-control" name="2fa" placeholder="{{$content.code.text}}">
										</div>
											<a href="logout">{{$content.logout.text}}</a><br>
										<div class="form-footer mt-2">
											<button type="submit" name="submit" class="normal-btn ml-auto">{{$content.login.title}}</button>
										</div>
									
										
									
									</div>
								
     
                   </form>
                </div>
            </div>
        </div>
    </div>
</section>

  
{include file="footer.tpl"}						
{include file="auth.tpl"}
       

