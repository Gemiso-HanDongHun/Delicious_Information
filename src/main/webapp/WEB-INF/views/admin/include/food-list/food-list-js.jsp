<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jQuery -->
<script src="/adminLTE/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/adminLTE/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables  & Plugins -->
<script src="/adminLTE/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/adminLTE/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/adminLTE/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/adminLTE/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="/adminLTE/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="/adminLTE/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="/adminLTE/plugins/jszip/jszip.min.js"></script>
<script src="/adminLTE/plugins/pdfmake/pdfmake.min.js"></script>
<script src="/adminLTE/plugins/pdfmake/vfs_fonts.js"></script>
<script src="/adminLTE/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="/adminLTE/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="/adminLTE/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
<!-- AdminLTE App -->
<script src="/adminLTE/dist/js/adminlte.min.js"></script>
<!-- ./wrapper -->
<script>
    $(function () {
        $("#example1").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });
</script>
