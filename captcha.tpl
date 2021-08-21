{if $settings.captcha.turning && $settings.captcha.$action}
<div class="input-group-prepend mb-1">
<img src="login.php?image" />
</div>
<input type="text" name="captcha" class="form-control" required placeholder="Captcha" aria-label="Captcha" aria-describedby="basic-addon1">
{elseif $settings.gsitekey}
<div class="g-recaptcha" data-sitekey="{$settings.gsitekey}"></div>
{/if}