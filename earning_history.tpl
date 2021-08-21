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
        <div class="col-md-12">
            <div class="card">

        <h5 class="card-header bg-primary text-white">{$pagename}</h5>
        <div class="card-body">
        
         <h4 class="text-center mb-3 mt-4">{$pagename}</h4>
                <p class="text-muted text-center mb-4 pb-2">History of your {$pagename}. </p>
                <div class="table-responsive">
                    <table class="table table-hover table-sm mb-0">
                                <thead class="bg-info text-white">
                            <tr>
                                <th>#</th>
                                {section name=head loop=$heads}
                                <th>{$heads[head]}</th>
                                {/section}
                            </tr>
                        </thead>
                        <tbody>

                            {foreach from=$rows key=key item=value}
                            <tr>
                                {foreach from=$value key=key2 item=value2}
                                <td>{$value2}</td>
                                {/foreach}
                            </tr>

                            {/foreach}

                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>

</div>
{include file="mfooter.tpl"}