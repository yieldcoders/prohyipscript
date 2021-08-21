{include file="mheader.tpl"}
<div class="container">
    <div class="row content">
        <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <h4 class="text-center mb-3 mt-4">Payment Wallets</h4>
                <p class="text-muted text-center mb-4 pb-2">Fill the e-currency wallets carefully to recieve payments directly to your e-currency wallet. </p>
                {if $alert}
                            <div class="{$alert_class}">
                                <span>{$alert_message}</span>
                            </div>
                            {/if}
        <div class="col-sm-12 text-left">
            <div class="card my-4">
                <h5 class="card-header bg-primary text-white">Payment Settings</h5>
                <form method="POST">
                    <div class="card-body">
                      
                            <p class="card-title">Please change your personal wallet address and account to recieve auto withdrawals daily.</p>
                            <hr> 

                            <div class="form-group">
                                <label class="control-label">Bitcoin Address</label>
                                <input type="text" id="bitcoin_acc" value="{$userinfo.bitcoin_acc}" class="form-control" placeholder="1NJy49h5zZbFffKR2tCcvRW1xdcZijiNxX" name="bitcoin_acc">
                                <small>  Your BTC address is a string of 26-35 letters and numbers that identify your Bitcoin wallet. BTC addresses begin with either a 1 or a 3 and are case-sensitive.</small> </div>

                            <div class="form-group">
                                <label class="control-label">Perfect Money Account</label>
                                <input type="text" id="perfectmoney_acc" value="{$userinfo.perfectmoney_acc}" class="form-control" placeholder="U112233" name="perfectmoney_acc">
                                <small> you need to use your account number, NOT the ID number. Your Perfect Money USD Account can be found in your My Account tab.  </small> </div>
<div class="form-group">
                                <label class="control-label">Payeer Account</label>
                                <input type="text" id="payeer_acc" value="{$userinfo.payeer_acc}" class="form-control" placeholder="Payeer account" name="payeer_acc">
                                 </div>
                        </div>
                        <div class="card-footer text-muted">
                            <button type="submit" name="submit" class="btn btn-primary"> Save Payment Settings</button>

                        </div>
                    </div>

                </form>

            </div>
        </div>
    </div></div></div></div></div>

{include file="mfooter.tpl"}