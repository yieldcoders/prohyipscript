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
                <h5 class="card-header bg-primary text-white">{{$content.makepayment.title}}</h5>
                <div class="card-body">

                    {if $alert}
                    <div class="{$alert_class}">
                        <span>{$alert_message}</span>
                    </div>
                    {/if}

                    <table class="table">
                        <tbody>
                            <tr>
                                <th>{{$content.plan.title}}:</th>
                                <td>{$plan_name}</td>
                            </tr>
                            <tr>
                                <th>{{$content.depositconfirm.content}}:</th>
                                <td>{$principal}</td>
                            </tr>
                            <tr>
                                <th>{{$content.depositconfirm.title}}:</th>
                                <td>${$credit}</td>
                            </tr>
                            <tr>
                                <th>{{$content.paymentmethods.title}}:</th>
                                <td>{$payment_method}</td>
                            </tr>
                            <tr>
                                <th>{{$content.amount.title}}:</th>
                                <td>${$amount}</td>
                            </tr>
                            {if $tag}
                            <tr>
                                <th>Tag:</th>
                                <td>{$tag}</td>
                            </tr>
                            {/if}
                        </tbody>
                    </table>
                    {if $address}
                    <center>

                        <img class="" style="max-width:100%;height:auto;width:auto\9;" alt="qrcode" data-size="200" src="{$img}" data-original-title="QR Code - address and sum you can scan with a mobile phone camera. Open {$payment_method} Wallet, click on camera icon, point the camera at the code, and you're done" data-placement="bottom" data-toggle="tooltip">

                        <h1 class="mt-3 card-title " id="pamount" style="cursor: pointer;"><span>{$symbol} {$amount} </span> <small class="text-muted"><span>{$cur}</span></small></h1>
                        <small class="">don't include transaction fee in this amount</small>
                        <div class="lead " style="cursor: pointer;">Send {$amount} {$cur} (in ONE payment) to:</div>

                        <div class="input-group has-success">
                            <input type="text" class="form-control text-center" id="success" value="{$address}">

                        </div>

                        <small>If you send any other {$payment_method} amount, payment system will ignore it!</small>

                    </center>
                    {/if}
                    {if $form}
                    {{$form}}
                    {/if}
                </div>
                <div class="card-footer text-muted" id="result">
                    <button class="btn btn-primary" type="button" disabled>
                        <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Waiting for Payment.
                    </button>

                </div>
            </div>
        </div>
    </div>
</div>
{include file="mfooter.tpl"}

<script>

var myVar = setInterval(alertFunc, 5000);

function alertFunc() {
  $.ajax( {
	url: "index.php?address={$address}",
	type: 'GET',
	success: function ( data ) {
	if(data) {
		$("#result").html(data);
		}
	}
  });
}

</script>
