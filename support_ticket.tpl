{include file="mheader.tpl"}
        <!-- ============================================================== -->
<!-- End Left Sidebar - style you can find in sidebar.scss  -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- Page wrapper  -->
<!-- ============================================================== -->
<div class="page-wrapper">
   
    <!-- Container fluid  -->
    <!-- ============================================================== -->
    <div class="container-fluid">
    <div class="row content">

        <div class="col-12 text-left">
    <div class="card my-4">
        <h5 class="card-header bg-primary text-white">Subject {$ticket.subject} </h5>
                                  {if $alert}
<div class="{$alert_class}">
    <span>{$alert_message}</span>
</div>
{/if}
    <div class="row">
        <div class="col-lg-8">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Ticket Replies</h5>
                    <ul class="list-unstyled mt-5">
                        {section name=row loop=$replies}
                        <li class="media">
                            <div class="media-body">
                                <h5 class="mt-0 mb-1">{$replies[row].type}</h5>
                                <p>{$replies[row].message}</p>
                            </div>
                        </li>
                        <hr>
                        {/section}
                    </ul>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="mb-3">Write a reply</h5>
                    <form method="post">
                       <div class="form-group">
                                        <textarea name="message" rows="7" class="form-control" id="mymce" placeholder="Text"></textarea>
                                    </div>
                        
                           
                        </div>
                        
                         <div class="card-footer text-muted">
                   <button type="submit" name="submit" value="submit" class="btn btn-primary ml-auto">Reply</button>

                    </div>
                    </form>
                
            </div>
        </div>
        <div class="col-lg-4">
            <div class="card">
                <div class="card-body text-center">
                    <h6 class="card-title">Ticket Info</h6>
                    <hr>
                </div>
                <div class="card-body bg-light">
                    <div class="row text-center">
                        <div class="col-6 mt-2 mb-2">
                            <span class="label label-warning">{$ticket.status}</span> </div>
                        <div class="col-6 mt-2 mb-2">
                         {$ticket.datetime}</div>
                    </div>
                </div>
                <div class="card-body text-center">
                    <h5 class="pt-3">Ticket Creator</h5>
                    <span><b>{$ticket.creator}</b></span>
                    <br>
                </div>
            </div>
            <hr>
            <div class="card">
                <div class="card-body text-center">
                    <h6 class="card-title">User Info</h6>
                    <div class="profile-pic mb-3 mt-3">
                              <hr>
                        <h6 class="mt-3 mb-0">{$userinfo.full_name}</h6>
                        <br>
                        <a href="mailto:{$userinfo.email}">{$userinfo.email}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
</div>
</div>
</div>
{literal}
 <script src="yc-admin/assets/libs/tinymce/tinymce.min.js"></script>
    <script>
    $(function() {

        if ($("#mymce").length > 0) {
            tinymce.init({
                selector: "textarea#mymce",
                theme: "modern",
                height: 300,
                plugins: [
                    "advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
                    "searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
                    "save table contextmenu directionality emoticons template paste textcolor"
                ],
                toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | l      ink image | print preview media fullpage | forecolor backcolor emoticons",

            });
        }
    });
    </script>
    {/literal}
{include file="mfooter.tpl"}