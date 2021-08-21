 <footer class="footer text-center">
                All Rights Reserved by  <a href="{$settings.url}">{$settings.site_name}</a>.
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
  <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>

<script src="https://kit.fontawesome.com/a0c361a166.js" crossorigin="anonymous"></script>
    <script src="yc-admin/dist/js/app.min.js"></script>
    <script src="yc-admin/dist/js/app.init.iconbar.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="yc-admin/dist/js/perfect.js"></script>
    <script src="yc-admin/dist/js/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="yc-admin/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="yc-admin/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="yc-admin/dist/js/custom.min.js"></script>
    <script type="text/javascript">
setInterval(function(){
    $.ajax({
     url:'get_expected',
     type:'GET',
     success:function(data) {
      $("#exdata").html(data);
     }
  });
}, 1000);
    </script>
</body>

</html>