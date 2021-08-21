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

            <div class="col-12 text-left">
                <div class="card my-4">
                    <h5 class="card-header bg-primary text-white">Support</h5>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-12">

                                <h4 class="card-title">Support Ticket List</h4>

                                <div class="row my-4">
                                    <!-- Column -->
                                    <div class="col-md-6 col-lg-3 col-xlg-3">
                                        <div class="card card-inverse card-info">
                                            <div class="box bg-info text-center">
                                                <h1 class="font-light text-white">{$total_tickets}</h1>
                                                <h6 class="text-white">Total Tickets</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Column -->
                                    <div class="col-md-6 col-lg-3 col-xlg-3">
                                        <div class="card card-success card-inverse">
                                            <div class="box bg-warning text-center">
                                                <h1 class="font-light text-white">{$responded_tickets}</h1>
                                                <h6 class="text-white">Responded</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Column -->
                                    <div class="col-md-6 col-lg-3 col-xlg-3">
                                        <div class="card card-inverse card-danger">
                                            <div class="box bg-success text-center">
                                                <h1 class="font-light text-white">{$resolved_tickets}</h1>
                                                <h6 class="text-white">Resolve</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Column -->
                                    <div class="col-md-6 col-lg-3 col-xlg-3">
                                        <div class="card card-inverse card-primary">
                                            <div class="box bg-primary text-center">
                                                <h1 class="font-light text-white">{$pendings_tickets}</h1>
                                                <h6 class="text-white">Pending</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Column -->
                                </div>

                                <div class="table-responsive my-4">
                                    <table id="demo-foo-addrow" class="table m-t-30 table-hover no-wrap contact-list" data-page-size="10">
                                        <thead>
                                            <tr>
                                                <th>ID #</th>
                                                <th>Subject</th>
                                                <th>Status</th>
                                                <th>Datetime</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            {section name=row loop=$tickets}
                                            <tr>
                                                <td><a href="support_ticket?id={$tickets[row].id}">{$tickets[row].id}</a></td>
                                                <td><a href="support_ticket?id={$tickets[row].id}">{$tickets[row].subject}</a></td>
                                                <td>{$tickets[row].status}</td>
                                                <td>{$tickets[row].datetime}</td>
                                            </tr>
                                            {/section}

                                        </tbody>

                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <h5 class="card-header bg-primary text-white">Open a New Support Ticket</h5>

                        <form class="" method="post" action="support">
                            <div class="card-body">
                                <div class="form-group">
                                    <label class="form-label">Subject</label>
                                    <input type="text" name="subject" class="form-control" placeholder="Subject" required="required">
                                </div>

                                <div class="form-group">
                                    <textarea name="message" rows="7" class="form-control" id="mymce" placeholder="Text"></textarea>
                                </div>
                            </div>
                            <div class="card-footer text-muted">
                                <button type="submit" name="submit" value="submit" class="btn btn-primary ml-auto">Open Ticket</button>
                            </div>
                        </form>

                        <!-- footer-wrapper -->
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
{include file="mfooter.tpl"} {literal}
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