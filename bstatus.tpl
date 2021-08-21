<div class="col-12">
    <div class="card text-center">
        <div class="card-header bg-orange text-white">Payment Detected Successfully</div>
        <div class="card-body">
     
            <p class="card-text">Transaction ID : {$transaction_hash}</p>
            <a href="javascript:void(0)" class="btn btn-info">{$confs} / {$confirmations} Confirmations</a>
        </div>
        <div class="card-footer text-muted">
            Please wait for {$confirmations} Confirmations on Blockchain Network.
        </div>
          <div class="bg-orange text-white p-1">
            After {$confirmations} Confirmations on Blockchain Network Investment will be automatically added to your account.
        </div>
    </div>
    <!-- Card -->
</div>