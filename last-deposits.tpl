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
                    Last Deposits
                </h1>
                <p class="sub-text-banner">
                    Here are the complete list of your last deposits invested in a program
                </p>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="banner-image-top">
                    <img src="./images/rules-banner.png">
                </div>
            </div>
        </div>
    </div>
</section>
<section class="rules-section section-pad-with-marg">
  <div class="container">
    <div class="row">
    <div class="col-md-12">
            <div class="card my-4">
                <h5 class="card-header bg-primary text-white">Last Deposits </h5>
           
            <div class="card-body">
                <hr>

                <div class="table-responsive">
                    <table class="table table-hover table-primary table-sm mb-0" id="dataTable">
                                <thead class="bg-primary text-white">
                            <tr>
                                <td>Username</td>
                                <td>Payment Method</td>
                                <td>Amount</td>
                                <td>Date</td>

                            </tr>
                        </thead>
                        {foreach from=$last_deposits item=s}
                        <tr>
                            <td>{$s.username}</td>
                            <td><img width="70px" src="images/payment-icons/dark/{$s.ec}.png"></td>
                            <td>{$currency_sign}{$s.amount}</td>
                            <td>{$s.date}</td>
                        </tr>
                        {/foreach}
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
 </div> </div>
 </section>
{include file="footer.tpl"}