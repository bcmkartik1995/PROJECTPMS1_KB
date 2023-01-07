<style type="text/css">
    .reply_ {
        display: none;
    }
</style>

<div class="panel panel-custom">
    <div class="panel-heading" style="display: flex;">
        
        <h4 class="panel-title" id="myModalLabel" style="width: 50%;">Vendor Details</h4>
        <div style="width:50%; text-align: right;">
            <a href="<?= base_url() ?>admin/vendor/approve_vendor/<?= $vendor_details->id ?>" style="margin-right: 10PX;" class="btn btn-success"> Approve</a>

            <a href="<?= base_url() ?>admin/vendor/reject_vendor/<?= $vendor_details->id ?>"  class="btn btn-round custom-bg"> Reject</a>
        </div>
    </div>
    <div class="modal-body wrap-modal wrap">
        <div class="p">
            <div class="row">
                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Vendor Name
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->vendor_name)) {
                                echo $vendor_details->vendor_name;
                            }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Company Name
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->company_name)) {
                                echo $vendor_details->company_name;
                            }
                            ?>
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Work Address
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->work_address)) {
                                echo $vendor_details->work_address;
                            }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Office Address
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->office_address)) {
                                echo $vendor_details->office_address;
                            }
                            ?>
                        </p>
                    </div>
                </div>
                
                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Type Of Concern
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->type_of_concern_id)) {
                                echo $vendor_details->type_of_concern_id;
                            }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Contact Person
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->contact_person)) {
                                echo $vendor_details->contact_person;
                            }
                            ?>
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Designation
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->designation)) {
                                echo $vendor_details->designation;
                            }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Mobile
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->mobile)) {
                                echo $vendor_details->mobile;
                            }
                            ?>
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Telephone
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->telephone)) {
                                echo $vendor_details->telephone;
                            }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Email
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->email)) {
                                echo $vendor_details->email;
                            }
                            ?>
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Week of
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->week_of)) {
                                echo $vendor_details->week_of;
                            }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Remark
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->remark)) {
                                echo $vendor_details->remark;
                            }
                            ?>
                        </p>
                    </div>
                </div>
                <h4 style="margin: 20px; color: blue;">BUSINESS DETAILS</h2>
                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Bussiness activity
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->bussiness_activity_id)) {
                                echo $vendor_details->bussiness_activity_id;
                            }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Pancard
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->pancard)) {
                                echo $vendor_details->pancard;
                            }
                            ?>
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Gstin
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->gstin)) {
                                echo $vendor_details->gstin;
                            }
                            ?>
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>iso9001
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->iso9001)) {
                                echo $vendor_details->iso9001;
                            }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>iso140011
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->iso140011)) {
                                echo $vendor_details->iso140011;
                            }
                            ?>
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>ohsasa18001
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->ohsasa18001)) {
                                echo $vendor_details->ohsasa18001;
                            }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>other
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->other)) {
                                echo $vendor_details->other;
                            }
                            ?>
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>iso9001m
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->iso9001m)) {?>
                                <a href ="<?= base_url() ?>uploads/vendor/<?php echo $vendor_details->iso9001m;?>" target="blank"><?php echo $vendor_details->iso9001m;?></a>
                           <?php }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>iso140011m
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->iso140011m)) {?>
                                <a href ="<?= base_url() ?>uploads/vendor/<?php echo $vendor_details->iso140011m;?>" target="blank"><?php echo $vendor_details->iso140011m;?></a>
                           <?php }
                            ?>
                            
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>ohsasa18001m
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->ohsasa18001m)) {?>
                                <a href ="<?= base_url() ?>uploads/vendor/<?php echo $vendor_details->ohsasa18001m;?>" target="blank"><?php echo $vendor_details->ohsasa18001m;?></a>
                           <?php }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>otherm
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->otherm)) {?>
                                <a href ="<?= base_url() ?>uploads/vendor/<?php echo $vendor_details->otherm;?>" target="blank"><?php echo $vendor_details->otherm;?></a>
                           <?php }
                            ?>
                            
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-9">
                        <label class="control-label col-sm-6"><strong>Is any of your relative working with United way of Baroda office
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->is_relative_working_uwob)) {
                                echo $vendor_details->is_relative_working_uwob;
                            }
                            ?>
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-9">
                        <label class="control-label col-sm-6"><strong>Range of Products
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->range_of_products)) {
                                echo $vendor_details->range_of_products;
                            }
                            ?>
                        </p>
                    </div>
                </div>

                <h4 style="margin: 20px; color: blue;">INFORMATION FURNISHED BY</h2>

                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Name
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->name)) {
                                echo $vendor_details->name;
                            }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Designation
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->designationi)) {
                                echo $vendor_details->designationi;
                            }
                            ?>
                        </p>
                    </div>
                </div>

                <div class="form-group col-sm-12">
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Date
                                :</strong>
                        </label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->date)) {
                                echo $vendor_details->date;
                            }
                            ?>
                        </p>
                    </div>
                    <div class="col-sm-6">
                        <label class="control-label col-sm-4"><strong>Sign with seal
                                :</strong></label>
                        <p class="form-control-static">
                            <?php
                            if (!empty($vendor_details->sign_with_seal)) {?>
                                <a href ="<?= base_url() ?>uploads/vendor/<?php echo $vendor_details->sign_with_seal;?>" target="blank"><?php echo $vendor_details->sign_with_seal;?></a>
                           <?php }
                            ?>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
