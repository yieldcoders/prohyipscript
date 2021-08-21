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
                    We have some rules for you here.
                </h1>
                <p class="sub-text-banner">
                    You agree to be of legal age in your country to partake in this program, and in all the cases your minimal age must be 18 years.
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
<!-- main banner FAQ end -->



<section class="rules-section section-pad-with-marg">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
 {{$content.rules.text}}
      </div>
    </div>
  </div>
</section>
{include file="footer.tpl"}