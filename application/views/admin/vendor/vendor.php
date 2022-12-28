<?= message_box('success'); ?>
<?= message_box('error');
$created = can_action('162', 'created');
$edited = can_action('162', 'edited');
$deleted = can_action('162', 'deleted');
if (!empty($created) || !empty($edited)){
?>
<div class="nav-tabs-custom">
    <!-- Tabs within a box -->
    <ul class="nav nav-tabs">
        <li class="<?= $active == 1 ? 'active' : ''; ?>"><a href="<?php echo base_url(); ?>admin/vendor/vendor">All Vendor</a></li>
        <li class="<?= $active == 2 ? 'active' : ''; ?>"><a href="#create"
                                                            data-toggle="tab">New Vendor</a></li>
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
                    <div class="panel-title"><strong>All Vendor</strong></div>
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
                                list = base_url + "admin/vendor/vendorlist";
                                bulk_url = base_url + "admin/vendor/bulk_delete";
                            });
                        </script>
                    </table>
                </div>
            </div>
            <?php if (!empty($created) || !empty($edited)) { ?>
                <div class="tab-pane <?= $active == 2 ? 'active' : ''; ?>" id="create">
                    <form role="form" data-parsley-validate="" novalidate="" enctype="multipart/form-data" id="form"
                          action="<?php echo base_url(); ?>admin/vendor/save_vendor/<?php
                          if (!empty($Vendor_info)) {
                              echo $Vendor_info->id;
                          }
                          ?>" method="post" class="form-horizontal  ">

                        <div class="panel-body">

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Vendor Name <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->vendor_name;
                                    }
                                    ?>" name="vendor_name" required="">
                                </div>
                                <label class="col-lg-2 control-label">Company Name <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->company_name;
                                    }
                                    ?>" name="company_name" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Work Address<span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->work_address;
                                    }
                                    ?>" name="work_address" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Office Address <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->office_address;
                                    }
                                    ?>" name="office_address" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Type Of Concern <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <?php

                                    $TConcerns = $this->db->order_by('id', 'ASC')->get('tbl_type_of_concern')->result();
                                    
                                    $select = '<select class="selectpicker" data-width="100%" name="type_of_concern_id" required>';
                                    $select .= '<option value="0">-- Select -- </option>';
                                    foreach ($TConcerns as $concern) {
                                        $selected = '';
                                        if (!empty($Vendor_info->type_of_concern_id) && $Vendor_info->type_of_concern_id != NULL) {
                                            if ($concern->id == $Vendor_info->type_of_concern_id) {
                                                $selected = ' selected ';
                                            }
                                        }
                                        $select .= '<option value="' . $concern->id . '"' . $selected . '>' . $concern->name . '</option>';
                                    }
                                    $select .= '</select>';
                                    echo $select;
                                    ?>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Contact Person <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->contact_person;
                                    }
                                    ?>" name="contact_person" required="">
                                </div>
                                <label class="col-lg-2 control-label">Designation <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->designation;
                                    }
                                    ?>" name="designation" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Mobile <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->mobile;
                                    }
                                    ?>" name="mobile" required="">
                                </div>
                                <label class="col-lg-2 control-label">Telephone</label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->telephone;
                                    }
                                    ?>" name="telephone" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Email ID <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->email;
                                    }
                                    ?>" name="email" required="">
                                </div>
                                <label class="col-lg-2 control-label">Week-of <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <select class="selectpicker" data-width="100%" name="week_of" required="" >
                                        <option value="0">-- Select -- </option>
                                        <option value="1" <?= $Vendor_info->week_of == 1 ? 'selected' : ''; ?>>Monday </option>
                                        <option value="2" <?= $Vendor_info->week_of == 2 ? 'selected' : ''; ?>>Tuesday </option>
                                        <option value="3" <?= $Vendor_info->week_of == 3 ? 'selected' : ''; ?>>Wednesday </option>
                                        <option value="4" <?= $Vendor_info->week_of == 4 ? 'selected' : ''; ?>>Thursday </option>
                                        <option value="5" <?= $Vendor_info->week_of == 5 ? 'selected' : ''; ?>>Friday </option>
                                        <option value="6" <?= $Vendor_info->week_of == 6 ? 'selected' : ''; ?>>Saturday </option>
                                        <option value="7" <?= $Vendor_info->week_of == 7 ? 'selected' : ''; ?>>Sunday </option>
                                    </select>
                                    
                                </div>
                            </div>

                            <div class="form-group">
                                
                                <label class="col-lg-2 control-label">Vendor Status <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <select class="selectpicker" data-width="100%" name="vendor_status" required="" >
                                        <option value="1" <?= $Vendor_info->vendor_status == 1 ? 'selected' : ''; ?>>Active </option>
                                        <option value="0" <?= $Vendor_info->vendor_status == 0 ? 'selected' : ''; ?>>Inactive </option>
                                    </select>
                                </div>

                                <label class="col-lg-2 control-label">Remark <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->remark;
                                    }
                                    ?>" name="remark" required="">
                                </div>
                            </div>

                            <h2 style="margin: 20px; color: blue;">BUSINESS DETAILS</h2>
                            <div class="form-group">
                                
                                <label class="col-lg-2 control-label">Bussiness Activities <span
                                        class="text-danger">*</span></label>
                                

                                <div class="col-lg-4">
                                    <?php

                                    $bussinessA = $this->db->order_by('id', 'ASC')->get('tbl_bussiness_activities')->result();
                                    
                                    $select = '<select class="selectpicker" data-width="100%" name="bussiness_activity_id" required="" >';
                                    $select .= '<option value="0">-- Select -- </option>';
                                    foreach ($bussinessA as $bus) {
                                        $selected = '';
                                        if (!empty($Vendor_info->bussiness_activity_id) && $Vendor_info->bussiness_activity_id != NULL) {
                                            if ($bus->id == $Vendor_info->bussiness_activity_id) {
                                                $selected = ' selected ';
                                            }
                                        }
                                        $select .= '<option value="' . $bus->id . '"' . $selected . '>' . $bus->name . '</option>';
                                    }
                                    $select .= '</select>';
                                    echo $select;
                                    ?>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Pancard <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->pancard;
                                    }
                                    ?>" name="pancard" required="">
                                </div>

                                <label class="col-lg-2 control-label">Gstin <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->gstin;
                                    }
                                    ?>" name="gstin" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Iso 9001</label>
                                <div class="col-lg-4">
                                    <input type="checkbox" class="form-control" value="1" name="iso9001" <?= $Vendor_info->iso9001 == 1 ? 'checked' : ''; ?>>
                                </div>

                                <label class="col-lg-2 control-label">Iso 9001 m </label>
                                <div class="col-lg-4">
                                    <input type="file" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->iso9001m;
                                    }
                                    ?>" name="iso9001m">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Iso 140011</label>
                                <div class="col-lg-4">
                                    <input type="checkbox" class="form-control" value="1" name="iso140011" <?= $Vendor_info->iso140011 == 1 ? 'checked' : ''; ?>>
                                </div>

                                <label class="col-lg-2 control-label">Iso 140011 m </label>
                                <div class="col-lg-4">
                                    <input type="file" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->iso140011m;
                                    }
                                    ?>" name="iso140011m">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Ohsasa 18001 </label>
                                <div class="col-lg-4">
                                    <input type="checkbox" class="form-control" value="1" name="ohsasa18001" <?= $Vendor_info->ohsasa18001 == 1 ? 'checked' : ''; ?>>
                                </div>

                                <label class="col-lg-2 control-label">Ohsasa 18001 m </label>
                                <div class="col-lg-4">
                                    <input type="file" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->ohsasa18001m;
                                    }
                                    ?>" name="ohsasa18001m">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Others </label>
                                <div class="col-lg-4">
                                    <input type="checkbox" class="form-control" value="1" name="other" <?= $Vendor_info->other == 1 ? 'checked' : ''; ?>>
                                </div>

                                <label class="col-lg-2 control-label">Others m </label>
                                <div class="col-lg-4">
                                    <input type="file" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->otherm;
                                    }
                                    ?>" name="otherm">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-3 control-label">Range Of Product<span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-5">
                                    <?php

                                    $products = $this->db->order_by('id', 'ASC')->get('tbl_range_of_product')->result();
                                    
                                    $select = '<select class="selectpicker" data-width="100%" name="range_of_products" required="">';
                                    $select .= '<option value="0">-- Select -- </option>';
                                    foreach ($products as $product) {
                                        $selected = '';
                                        if (!empty($Vendor_info->range_of_products) && $Vendor_info->range_of_products != NULL) {
                                            if ($product->id == $Vendor_info->range_of_products) {
                                                $selected = ' selected ';
                                            }
                                        }
                                        $select .= '<option value="' . $product->id . '"' . $selected . '>' . $product->name . '</option>';
                                    }
                                    $select .= '</select>';
                                    echo $select;
                                    ?>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-4 control-label">Is any of your relative working with United way of Baroda office </label>
                                <div class="col-lg-2">
                                    <input type="checkbox" class="form-control" value="1" name="is_relative_working_uwob" <?= $Vendor_info->is_relative_working_uwob == 1 ? 'checked' : ''; ?>>
                                </div>
                            </div>

                            <h2 style="margin: 20px; color: blue;">INFORMATION FURNISHED BY</h2>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Name <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->name;
                                    }
                                    ?>" name="name" required="">
                                </div>

                                <label class="col-lg-2 control-label">Designation <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="text" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->designationi;
                                    }
                                    ?>" name="designationi" required="">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-lg-2 control-label">Date <span
                                        class="text-danger">*</span></label>
                                <div class="col-lg-4">
                                    <input type="date" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->date;
                                    }
                                    ?>" name="date" required="">
                                </div>

                                <label class="col-lg-2 control-label">Sign with seal </label>
                                <div class="col-lg-4">
                                    <input type="file" class="form-control" value="<?php
                                    if (!empty($Vendor_info)) {
                                        echo $Vendor_info->sign_with_seal;
                                    }
                                    ?>" name="sign_with_seal">
                                </div>
                            </div>
                
                            <?php
                            if (!empty($Vendor_info)) {
                                $rpid = $Vendor_info->id;
                            } else {
                                $rpid = null;
                            }
                            ?>
                            <?= custom_form_Fields(8, $rpid, true); ?>

                            
                            <div class="btn-bottom-toolbar text-right">
                                <?php
                                if (!empty($Vendor_info)) { ?>
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