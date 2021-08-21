
    <section class="footer-section">
    <div class="container" style=" padding: 0px;">
      <footer class="site-footer">
        <!-- <div class="row footer-top">
          <div class="col-md-3">
            <a class="footer-logo" href="{$settings.site_url}">
              <img src="./images/logo.png">
            </a>
          </div>
          <div class="col-md-6"></div>
          <div class="col-md-3 footer-powered-logo">
            <a class="footer-powered-by" href="https://yieldcoders.com">
              <img src="./images/powered-by.png">
            </a>
          </div>
        </div> -->
        <div class="row footer-nav">
          <div class="col-md-8">
            <div class="row">
              <div class="col-md-4">
                <a href="top-referrals">Top Referrals</a>
              </div>
              <div class="col-md-4">
                <a href="top-investors">Top Investors</a>
              </div>
              <div class="col-md-4">
                <a href="last-withdrawals">Last Withdrawals</a>
              </div>
          
              <div class="col-md-4">
                <a href="last-deposits">Last Deposits</a>
              </div>
              <div class="col-md-4">
                <a href="live-payments">Paid out</a>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <h3 class="medium-heading">Contact Us</h3>
            <h3 class="small-heading">General Inquiries</h3>
            <h3 class="small-heading"><a href=""> <i class="fab fa-telegram-plane" style=" font-size: 20px; font-weight: 900; "></i> Our Telegram </a></h3>
            <a href="mailto: {$settings.site_email}">{$settings.site_email}</a>
          </div>
        </div>
        <div class="row text-center">
              <div class="col-md-12">
        <p class="footer-copy-right">All Rights Reserved Copyright © {$settings.site_name} <script>document.write(new Date().getFullYear());</script></p>
        </div>
          </div>
      </footer>
    </div>
    </section>
    <!-- /.container -->
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
   <script src="https://kit.fontawesome.com/a0c361a166.js" crossorigin="anonymous"></script>
      	<script src="https://www.google.com/recaptcha/api.js" async defer></script>
      	{literal}
<script>$(document).ready( function () {
    $('#dataTable').DataTable();
} );
</script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


{/literal}  
</body>
</html>
