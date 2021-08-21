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

            <div class="col-sm-12 text-left">
                <div class="card my-4">
                    <h5 class="card-header bg-primary text-white">{{$content.referral.title}}</h5>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group row">
                                    <label class="col-form-label col-md-2">{{$content.referral.content}}</label>
                                    <div class="col-md-10">
                                        <input class="form-control" type="datetime" name="datetime" value="{$settings.site_url}?ref={$userinfo.username}">
                                        <span class="form-text text-muted"><a href="my-referrals">{{$content.referrals.title}}</a> </span>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card my-4">
                            <h5 class="card-header bg-primary text-white">{{$content.marketing.title}}</h5>
                            <div class="card-body">
                                <p>{{$content.marketing.content}}{$settings.site_name}</p>
                                <!-- Nav tabs -->
                                <div class="vtabs">
                                    <ul class="nav nav-tabs tabs-vertical" role="tablist">
                                        <li class="nav-item"> <a class="nav-link active show" data-toggle="tab" href="#b1" role="tab" aria-selected="true"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">468x60 {{$content.banner.title}}</span> </a> </li>
                                        <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#b2" role="tab" aria-selected="false"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">728x90 {{$content.banner.title}}</span></a> </li>
                                        <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#b5" role="tab" aria-selected="false"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">160x600 {{$content.banner.title}}</span></a> </li>
                                        <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#b6" role="tab" aria-selected="false"><span class="hidden-sm-up"></span> <span class="hidden-xs-down">125x125 {{$content.banner.title}}</span></a> </li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div class="tab-pane active show" id="b1" role="tabpanel">

                                            <div class="row">
                                                <div class="col-md-12 col-xs-12 ">
                                                    <div class="card">
                                                        <div class="card-body">

                                                            <a href="{$settings.site_url}images/468x60.jpg" target="_blank" class="btn btn-success">Preview</a>
                                                            <div class="form-group">
                                                                <label>{{$content.banner.content}}</label>
                                                                <textarea class="form-control" rows="5" spellcheck="false">&lt;a href="{$settings.site_url}?ref={$userinfo.username}"&gt; &lt;img src="{$settings.site_url}assets/static/468x60.jpg" alt="" width="468" height="60" /&gt;</textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                        <div class="tab-pane p-20" id="b2" role="tabpanel">
                                            <div class="row">
                                                <div class="col-md-12 col-xs-12 ">
                                                    <div class="card">
                                                        <div class="card-body">

                                                            <a href="{$settings.site_url}assets/static/728x90.jpg" target="_blank" class="btn btn-success">Preview</a>
                                                            <div class="form-group">
                                                                <label>{{$content.banner.content}}</label>
                                                                <textarea class="form-control" rows="5" spellcheck="false">&lt;a href="{$settings.site_url}?ref={$userinfo.username}"&gt; &lt;img src="{$settings.site_url}assets/static/728x90.jpg" alt="" width="468" height="60" /&gt;</textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                        </div>
                                        <div class="tab-pane p-20" id="b5" role="tabpanel">
                                            <div class="row">
                                                <div class="col-md-12 col-xs-12 ">
                                                    <div class="card">
                                                        <div class="card-body">

                                                            <a href="{$settings.site_url}assets/static/160x600.jpg" target="_blank" class="btn btn-success">Preview</a>
                                                            <div class="form-group">
                                                                <label>{{$content.banner.content}}</label>
                                                                <textarea class="form-control" rows="5" spellcheck="false">&lt;a href="{$settings.site_url}?ref={$userinfo.username}"&gt; &lt;img src="{$settings.site_url}assets/static/160x600.jpg" alt="" width="468" height="60" /&gt;</textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="tab-pane p-20" id="b6" role="tabpanel">
                                            <div class="row">
                                                <div class="col-md-12 col-xs-12 ">
                                                    <div class="card">
                                                        <div class="card-body">

                                                            <a href="{$settings.site_url}assets/static/125x125.jpg" target="_blank" class="btn btn-success">Preview</a>
                                                            <div class="form-group">
                                                                <label>{{$content.banner.content}}</label>
                                                                <textarea class="form-control" rows="5" spellcheck="false">&lt;a href="{$settings.site_url}?ref={$userinfo.username}"&gt; &lt;img src="{$settings.site_url}assets/static/125x125.jpg" alt="" width="468" height="60" /&gt;</textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="tab-pane p-20" id="b7" role="tabpanel">
                                            <div class="row">
                                                <div class="col-md-12 col-xs-12 ">
                                                    <div class="card">
                                                        <div class="card-body">

                                                            <a href="{$settings.site_url}assets/static/468x60.jpg" target="_blank" class="btn btn-success">Preview</a>
                                                            <div class="form-group">
                                                                <label>{{$content.banner.content}}</label>
                                                                <textarea class="form-control" rows="5" spellcheck="false">&lt;a href="{$settings.site_url}?ref={$userinfo.username}"&gt; &lt;img src="{$settings.site_url}assets/static/125x125.jpg" alt="" width="468" height="60" /&gt;</textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-xs-12 ">
                                                    <div class="card">
                                                        <div class="card-body">

                                                            <a href="{$settings.site_url}assets/ani/468x60.gif" target="_blank" class="btn btn-success">Preview</a>
                                                            <div class="form-group">
                                                                <label>{{$content.banner.content}}</label>
                                                                <textarea class="form-control" rows="5" spellcheck="false">&lt;a href="{$settings.site_url}?ref={$userinfo.username}"&gt; &lt;img src="{$settings.site_url}assets/ani/125x125.gif" alt="" width="468" height="60" /&gt;</textarea>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {include file="mfooter.tpl"}