{include file="header.tpl"}
<style>
.banner-image-top img {
    width: 90%;
}
</style>
<!-- main banner FAQ start -->
<section class="main-banner">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <h1 class="welcome-heading">
                    {{$content.contact.content}}
                </h1>
                <p class="sub-text-banner">
                    {{$content.contact.text}}
                </p>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="banner-image-top">
                    <img src="./images/contact-image.png">
                </div>
            </div>
        </div>
    </div>
    <a href="#" class="join-telegram-link">
        <div class="join-telegram">
            <img src="./images/telegram.png" class="telegram-icon">
            <a href="#" class="join-telegram-link"><h3 class="small-heading">Join Our Telegram</h3></a>
        </div>
    </a>
</section>
<!-- main banner FAQ end -->

<section class="contact-section  section-pad-with-marg">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
                <h3 class="contact-title"> {{$content.contact.title}} {$settings.site_name}</h3>

                {if $alert}
                <div class="{$alert_class}">
                    <span>{$alert_message}</span>
                </div>
                {/if}

                	<form  method="post" >
                {$token}
                        <div class="card-body">

	
		    <label> {{$content.fullname.text}}</label>
			<input name="name" class="form-control" placeholder="{{$content.fullname.text}}" id="YourName" type="text" required="required">
	<br>
			    <label>{{$content.email.text}}</label>
				<input name="email" class="form-control" placeholder="{{$content.email.text}}" id="EmailAddress" type="email" required="required">
		<br>
				    <label>{{$content.username.text}}</label>
					<input name="username" class="form-control
                            form-tel" placeholder="{{$content.username.text}}" id="UserName" type="text" required="required">
				<br>
				<br>
							<select name="topic" class="form-control" >
								<option class="bs-title-option" value="">Select your service topic</option>
								<option value="my_account">My account</option>
								<option value="order_purchase">Order purchase</option>
								<option value="listing">Listing</option>
								<option value="withdrawal">Withdrawal Issue</option>
								<option value="affiliate">Affiliate program</option>
								<option value="general">General</option>
							</select>
<br>
						<label for="PageMessage">{{$content.supportticket.text}}</label>
						<textarea name="message" class="form-control" placeholder="Start typing here..." onkeyup="countChar(this)" cols="30" rows="6" id="PageMessage" required="required"></textarea>
			
                {include file="captcha.tpl" action="login"}
       
                    </div>
                     
						<button type="submit" name="submit" class="normal-btn" >{{$content.save.text}}</button>
				
				</form>
			</div>
		</div>
	</div>
</section> 
{include file="footer.tpl"}