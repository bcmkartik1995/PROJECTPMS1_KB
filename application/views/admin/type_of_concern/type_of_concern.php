<?= message_box('success'); ?>
<?= message_box('error');
$created = can_action('165', 'created');
$edited = can_action('165', 'edited');
$deleted = can_action('165', 'deleted');
if (!empty($created) || !empty($edited)){
?>
<div class="nav-tabs-custom">
    <!-- Tabs within a box -->
    <ul class="nav nav-tabs">
        <li class="<?= $active == 1 ? 'active' : ''; ?>"><a href="<?php echo base_url(); ?>admin/type_of_concern/type_of_concern">All Type of concern</a></li>
        <li class="<?= $active == 2 ? 'active' : ''; ?>"><a href="#create"
                                                            data-toggle="tab">New Type of concern</a></li>
    </ul>
    <style type="text/css">
        .custom-bulk-button {
            display: initial;
        }
    </style>
    <div class="tab-content bg-white">
        <!-- ************** general *************-->
        <div class="tab-pane <?= $active == 1 ? 'active' : ''; ?>" id="manage">
            <?php } else { ?>
            <div class="panel panel-custom">
                <header class="panel-heading ">
                    <div class="panel-title"><strong>All Type of concern</strong></div>
                </header>
                <?php } ?>
                <div class="table-responsive">
                    <table class="table table-striped DataTables bulk_table" id="DataTables" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <?php if (!empty($deleted)) { ?>
                                <th data-orderable="false">
                                    <div class="checkbox c-checkbox">
                                        <label class="needsclick">
                                            <input id="select_all" type="checkbox">
                                            <span class="fa fa-check"></span></label>
                                    </div>
                                </th>
                            <?php } ?>
                            <th>Name</th>
                            
                            <th class="col-options no-sort"><?= lang('action') ?></th>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                list = base_url + "admin/type_of_concern/type_of_concernlist";
                                bulk_url = base_url + "admin/type_of_concern/bulk_delete";
                            });
                        </script>
                    </table>
                </div>
            </div>
            <?php if (!empty($created) || !empty($edited)) { ?>
                <div class="tab-pane <?= $active == 2 ? 'active' : ''; ?>" id="create">
                    <form role="form" data-parsley-validate="" novalidate="" enctype="multipart/form-data" id="form"
                          action="<?php echo base_url(); ?>admin/type_of_concern/save_tc/<?php
                          if (!empty($TConcern_info)) {
                              echo $TConcern_info->id;
                          }
                          ?>" method="post" class="form-horizontal  ">

                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-lg-2 control-label">Name <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($TConcern_info)) {
                                        echo $TConcern_info->name;
                                    }
                                    ?>" name="name" required="">
                                </div>
                                
                            </div>
                
                            <?php
                            if (!empty($TConcern_info)) {
                                $rpid = $TConcern_info->id;
                            } else {
                                $rpid = null;
                            }
                            ?>
                            <?= custom_form_Fields(8, $rpid, true); ?>

                            
                            <div class="btn-bottom-toolbar text-right">
                                <?php
                                if (!empty($TConcern_info)) { ?>
                                    <button type="submit"
                                            class="btn btn-sm btn-primary"><?= lang('updates') ?></button>
                                    <button type="button" onclick="goBack()"
                                            class="btn btn-sm btn-danger"><?= lang('cancel') ?></button>
                                <?php } else {
                                    ?>
                                    <button type="submit"
                                            class="btn btn-sm btn-primary"><?= lang('save') ?></button>
                                <?php }
                                ?>
                            </div>
                    </form>
                </div>
            <?php } else { ?>
        </div>
        <?php } ?>
    </div>
</div>