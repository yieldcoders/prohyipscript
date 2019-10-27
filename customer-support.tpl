{include file="header.tpl"} {if $alert}
<div class="{$alert_class}">
    <span>{$alert_message}</span>
</div>
{/if}
<form action="" method="post" accept-charset="utf-8">
    <label>Your Name</label>
    <input name="name" type="text" required="required">

    <label>Your Email</label>
    <input name="email" type="email" required="required">

    <label>Your username</label>
    <input name="username" type="text" required="required">

    <select name="topic">
        <option value="">Select your service topic</option>
        <option value="my_account">My account</option>
        <option value="order_purchase">Order purchase</option>
        <option value="listing">Listing</option>
        <option value="withdrawal">Withdrawal Issue</option>
        <option value="affiliate">Affiliate program</option>
        <option value="general">General</option>
    </select>

    <label for="PageMessage">Enter your message here</label>
    <textarea name="message" required="required"></textarea>

    <!--Google Re captcha setting site key. please enter the key in admin settings -->
    <div class="g-recaptcha" data-sitekey="{$settings.gsitekey}"></div>

    <button type="submit" name="submit" class="btn btn-warning" style="margin-bottom: 50px;">Submit ticket</button>

</form>
{include file="footer.tpl"}
