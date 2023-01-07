<?= message_box('success'); ?>
<?= message_box('error');?>
<div class="nav-tabs-custom">

    
    <div class="tab-content bg-white">
           
            <div class="panel panel-custom">
                
                <div class="table-responsive">
                    <table class="table table-striped DataTables bulk_table" id="DataTables" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            
                            <th>Vendor Name</th>
                            <th>Company Name</th>
                            <th>Designation</th>
                            <th>Email</th>
                            <th>Mobile</th>
                            
                            <th class="col-options no-sort"><?= lang('action') ?></th>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                list = base_url + "admin/vendor/InactiveVendorList";
                            });
                        </script>
                    </table>
                </div>
            </div>
           
    </div>
</div>