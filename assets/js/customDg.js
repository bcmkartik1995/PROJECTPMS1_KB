$(document).ready(function () {
    $(document).ready(function(){
        $("#AddBtnIndent").click(function(){
            var rowCount = $("#tableIndentPage tr").length;
            $("#tableIndentPage").append('<tr><th scope="row" class="datarow" style="max-width:10px; text-align: center;">'+rowCount+'</th><td><input type="text" class="form-control" id="inventory'+rowCount+'" name="inventory[]" list="invs" required=""></td><td style="max-width: 70px;"><input type="text" class="form-control" id="qty'+rowCount+'" name="qty[]" required=""></td><td style="max-width: 70px;"> <input type="text" class="form-control" id="hsn'+rowCount+'" name="hsn[]" readonly=""></td><td style="max-width: 70px;"> <input type="text" class="form-control" id="gst'+rowCount+'" value="0" name="gst[]" readonly=""></td><td style="max-width: 70px;"><input type="text" class="form-control" id="uom'+rowCount+'" value="0" name="uom[]" readonly=""></td><td style="max-width: 70px;"><input type="text" class="form-control" id="rate'+rowCount+'" value="0" name="rate[]" readonly=""></td><td style="max-width: 70px;"><input type="text" class="form-control" id="remarks'+rowCount+'" name="remarks[]" value=""></td><td style="text-align: center;"><a href="javascript:void(0);" style="padding: 0.20rem 0.50rem; margin: 5px 0px 15px 0px;" class="btn btn-danger remCF"><iclass="uiluil-ban">X</iclass="uiluil-ban"></a></td></tr>')

        });
        $("#tableIndentPage").on('click','.remCF',function(){
            $(this).parent().parent().remove();
        });
    });
});