<?= message_box('success'); ?>
<?= message_box('error');
$created = can_action('171', 'created');
$edited = can_action('171', 'edited');
$deleted = can_action('171', 'deleted');
if (!empty($created) || !empty($edited)){
?>
<div class="nav-tabs-custom">
    <!-- Tabs within a box -->
    <ul class="nav nav-tabs">
        <li class="<?= $active == 1 ? 'active' : ''; ?>"><a href="<?php echo base_url(); ?>admin/indent/indent">All indent</a></li>
        <li class="<?= $active == 2 ? 'active' : ''; ?>"><a href="#create"
                                                            data-toggle="tab">New indent</a></li>
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
                    <div class="panel-title"><strong>All indent</strong></div>
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
                            <th>Indent no</th>
                            
                            <th class="col-options no-sort"><?= lang('action') ?></th>
                        </tr>
                        </thead>
                        <tbody>

                        </tbody>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                list = base_url + "admin/indent/indentlist";
                                bulk_url = base_url + "admin/indent/bulk_delete";
                            });
                        </script>
                    </table>
                </div>
            </div>
            <?php if (!empty($created) || !empty($edited)) { ?>
                <div class="tab-pane <?= $active == 2 ? 'active' : ''; ?>" id="create">
                    <form role="form" data-parsley-validate="" novalidate="" enctype="multipart/form-data" id="form"
                          action="<?php echo base_url(); ?>admin/indent/save_indent/<?php
                          if (!empty($indent_info)) {
                              echo $indent_info->id;
                          }
                          ?>" method="post" class="form-horizontal  ">

                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-lg-1 control-label">Indent no <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-3">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($indent_info)) {
                                        echo $indent_info->indent_no;
                                    }
                                    ?>" name="indent_no" required="">
                                </div>
                                <label class="col-lg-1 control-label">Project <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-3">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($indent_info)) {
                                        echo $indent_info->project;
                                    }
                                    ?>" name="project" required="">
                                </div>
                                 <label class="col-lg-1 control-label">Date <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-3">
                                    <input type="date" class="form-control" value="<?php
                                    if (!empty($indent_info)) {
                                        echo $indent_info->date;
                                    }
                                    ?>" name="date" required="">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-lg-1 control-label">Indent Due Date <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-3">
                                    <input type="date" class="form-control" value="<?php
                                    if (!empty($indent_info)) {
                                        echo $indent_info->indent_due_date;
                                    }
                                    ?>" name="indent_due_date" required="">
                                </div>
                                <label class="col-lg-1 control-label">Project Initiation Date <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-3">
                                    <input type="date" class="form-control" value="<?php
                                    if (!empty($indent_info)) {
                                        echo $indent_info->project_initiation_date;
                                    }
                                    ?>" name="project_initiation_date" required="">
                                </div>
                                 <label class="col-lg-1 control-label">Indent Created By <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-3">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($indent_info)) {
                                        echo $indent_info->created_by;
                                    }
                                    ?>" name="created_by" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="card" style="padding: 1% 1%; margin:10px; border:1px solid black;">
                                    <div class="table-responsive">
                                        <table class="table mb-0" id="tableIndentPage">
                                            <thead class="table-light">
                                                <tr>
                                                    <th style="max-width:10px;">#</th>
                                                    <th>Product</th>
                                                    <th>Quantity</th>
                                                    <th>HSN</th>
                                                    <th>GST %</th>
                                                    <th>UOM</th>
                                                    <th>Rate</th>
                                                    <th>Remarks</th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody class="tbody">
                                                <tr>
                                                    <th scope="row" class="datarow" style="max-width:10px; text-align: center;">
                                                        1
                                                    </th>

                                                    <td>
                                                        <input type="text" class="form-control" id="inventory" name="inventory[]" list="invs" required="">
                                                        
                                                    </td>
                                                    
                                                    <td style="max-width: 70px;">
                                                        <input type="text" class="form-control" id="qty" name="qty[]" required="">
                                                    </td>

                                                    <td style="max-width: 70px;">
                                                        <input type="text" class="form-control" id="hsn" name="hsn[]" readonly="">
                                                    </td>
                                                    <td style="max-width: 70px;">
                                                        <input type="text" class="form-control" id="gst" value="0" name="gst[]" readonly="">
                                                    </td>
                                                    <td style="max-width: 70px;">
                                                        <input type="text" class="form-control" id="uom" value="0" name="uom[]" readonly="">
                                                    </td>
                                                    <td style="max-width: 70px;">
                                                        <input type="text" class="form-control" id="rate" value="0" name="rate[]" readonly="">
                                                    </td>
                                                    <td style="max-width: 70px;">
                                                        <input type="text" class="form-control" id="remarks" name="remarks[]" value="">
                                                    </td>

                                                    <td style="text-align: center;">
                                                        <button type="button" style="padding: 0.20rem 0.50rem; margin: 5px 0px 15px 0px;" class="btn btn-danger">
                                                            <iclass="uiluil-ban">X
                                                        </iclass="uiluil-ban"></button>
                                                    </td>
                                                </tr>
                                                
                                                


                                            </tbody>
                                            <!-- end tbody-->
                                        </table>
                                        <!-- end table-->
                                        <button type="button" style="padding: 0.20rem 0.50rem; margin: 5px 0px 15px 0px;" class="btn btn-success" id="AddBtnIndent">
                                                            <i class="uil uil-ban">+</i>
                                                        </button>
                                    </div>
                                
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Narration <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($indent_info)) {
                                        echo $indent_info->Narration;
                                    }
                                    ?>" name="Narration" required="">
                                </div>
                               
                            </div>
                            <?php
                            if (!empty($indent_info)) {
                                $rpid = $indent_info->id;
                            } else {
                                $rpid = null;
                            }
                            ?>
                            <?= custom_form_Fields(8, $rpid, true); ?>

                            
                            <div class="btn-bottom-toolbar text-right">
                                <?php
                                if (!empty($indent_info)) { ?>
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