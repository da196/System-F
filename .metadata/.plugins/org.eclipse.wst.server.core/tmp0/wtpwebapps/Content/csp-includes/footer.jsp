<!-- Footer -->
<footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>&copy; Tanzania Communications Regulatory Authority  
				<script type="text/javascript">
				  document.write(new Date().getFullYear());
				</script> 
				. All Rights Reserved           
            </span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->
    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->
      

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>

  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/css/bootstrap-select.min.css">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.9/dist/js/bootstrap-select.min.js"></script>

  <script type="text/javascript">

    $(document).ready(function(){
        $("#exampleAccordion a").each(function (index, element) {
            if ($(this).attr('href') == window.location.pathname) {
                $(this).parent().addClass("active");
            }
        });
        // var url = window.location;
        // var element = $('ul.nav a').filter(function() {
        //     return this.href == url || url.href.indexOf(this.href) == 0;
        // }).addClass('active').parent().parent().addClass('in').parent();
        // if (element.is('li')) {
        //     element.addClass('active');
        // }
    });

    $(function(){
      $('.select').selectpicker();
    });
  </script>
  
 