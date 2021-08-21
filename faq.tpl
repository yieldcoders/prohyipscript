{include file="header.tpl"} {literal}
<style>
.banner-image-top img {
    width: 90%;
}
    h2 {
        font-family: inherit;
        font-weight: 800;
        font-size: 1.0rem;
        color: #091f2f;
        text-transform: uppercase;
    }
    
    .accordion-section .panel-default > .panel-heading {
        border: 0;
        background: #f4f6fb;
        padding: 0;
    }
    
    .accordion-section .panel-default .panel-title a {
        display: block;
        text-decoration: none;
        font-size: 1.0rem;
    }
.panel-title a {
    color: #041033;
}
.accordion-section .panel-default .panel-body {
        font-size: 1.0rem;
}
</style>
{/literal}
    <!-- main banner FAQ start -->
<section class="main-banner">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <h1 class="welcome-heading">
                    Do You Have Some Questions?
                </h1>
                <p class="sub-text-banner">
                    You have questions in your mind? Here are few of the frequently asked question. If you want to know more please feel free to contact us!
                </p>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="banner-image-top">
                    <img src="./images/faq-banner.png">
                </div>
            </div>
        </div>
    </div>
 
</section>
<!-- main banner FAQ end -->
<section class="accordion-section clearfix mt-3 section-pad-with-marg" aria-label="Question Accordions">
        <div class="container">

            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                
				
				
				{foreach from=$faqs key=key item=value}
				
				<div class="panel panel-default">
                    <div class="panel-heading p-3 mb-3" role="tab" id="heading2">
                        <h3 class="panel-title">
        <a class="collapsed" role="button" title="" data-toggle="collapse" data-parent="#accordion" href="#collapse{{$key}}" aria-expanded="true" aria-controls="collapse2">
        {{$value.question|replace:'[site_name]':$settings.site_name}}
        </a>
        </h3>
                    </div>
                    <div id="collapse{{$key}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2">
                        <div class="panel-body px-3 mb-4">
                            <p>{{$value.answer}}</p>
                        </div>
                    </div>
                </div>
				{/foreach}
            </div>

        </div>
        </section>

{include file="footer.tpl"}