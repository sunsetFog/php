<div class="form-group">
    <label class="col-xs-12 col-sm-3 col-md-2 control-label">赠送优惠券</label>
    <div class="col-sm-9 col-xs-12">
        <label class='radio-inline'>
            <input type='radio' name='widgets[coupon][is_give]' value='1' @if($coupon->is_give == '1') checked @endif/>
            开启
        </label>
        <label class='radio-inline'>
            <input type='radio' name='widgets[coupon][is_give]' value='0' @if(empty($coupon->is_give)) checked @endif/>
            关闭
        </label>
        <span class='help-block'>订单完成赠送优惠券</span>
    </div>
</div>


<div id='widgets_coupon' @if( empty($coupon->is_give) ) style="display:none" @endif>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
        <div class="col-sm-9 col-xs-12">
            <label class='radio-inline'>
                <input type='radio' name='widgets[coupon][send_type]' value='0' @if(empty($coupon->send_type)) checked @endif/>
                每月1号 0:00发放
            </label>
            <label class='radio-inline'>
                <input type='radio' name='widgets[coupon][send_type]' value='1' @if($coupon->send_type == 1) checked @endif/>
                订单完成立即发放
            </label>
        </div>
    </div>



    <div id="coupon_send_month" class="form-group" @if(!empty($coupon->send_type)) style="display: none" @endif>
        <label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
        <div class="col-sm-6 col-xs-6">
            <div class='input-group col-md-6' >
                <div class='input-group-addon'>连续发放</div>
                <input type='text' name='widgets[coupon][send_num]' class="form-control" value="{{ $coupon->send_num }}"/>
                <div class='input-group-addon'>月</div>
            </div>
        </div>
    </div>



    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
        <div class="col-sm-9 col-xs-12">
            <h4>
                <button id="coupon_add" type='button' class="btn btn-default"  style="margin-bottom:5px">
                    <input type="hidden" id="coupon_input" value="0">
                    <i class='fa fa-plus'></i> 添加优惠券
                </button>
            </h4>


            <div class='recharge-items'>
                @foreach( $coupon->coupon as $key => $list)

                    <div class="input-group recharge-item" style="margin-top:5px; width: 60%">
                        <input type="hidden" name="widgets[coupon][coupon_id][]" value="{{ $list['coupon_id'] }}"/>
                        <input type="text" maxlength="30" class="form-control" name='widgets[coupon][coupon_name][]' value='{{ $list['coupon_name'] or '' }}' readonly/>
                        <div class="input-group-addon"><button type="button" class="input-group-add">选择优惠券</button></div>
                        <input type="text" class="form-control" name='widgets[coupon][coupon_several][]' value='{{ $list['coupon_several'] or '' }}'/>
                        <span class="input-group-addon unit">张</span>
                        <div class='input-group-btn'>
                            <button class='btn btn-danger' type='button'
                                    onclick="removeRechargeItem(this)"><i class='fa fa-remove'></i>
                            </button>
                        </div>
                    </div>
                @endforeach
            </div>

            <span class="help-block">两项都填写才能生效</span>
            <span class="help-block">订单完成后，按照勾选发放规则发放</span>
        </div>
    </div>
</div>



<div id="modal-module-menus-coupon" class="modal fade" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h3>选择优惠券</h3></div>
            <div class="modal-body">
                <div class="row">
                    <div class="input-group">
                        <input type="text" class="form-control" name="keyword" value="" id="search-kwd-coupon" placeholder="请输入优惠券名称"/>
                        <span class='input-group-btn'>
                            <button type="button" class="btn btn-default" onclick="search_coupons();">搜索</button>
                        </span>
                    </div>
                </div>
                <div id="module-menus-coupon"></div>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn btn-default" data-dismiss="modal" aria-hidden="true">关闭</a>
            </div>
        </div>

    </div>
</div>




<script language='javascript'>
    $(function () {
        $(":radio[name='widgets[coupon][is_give]']").click(function () {
            if ($(this).val() == 1) {
                $("#widgets_coupon").show();
            }
            else {
                $("#widgets_coupon").hide();
            }
        });
        $(":radio[name='widgets[coupon][send_type]']").click(function () {
            if ($(this).val() == 1) {
                $("#coupon_send_month").hide();
            }
            else {
                $("#coupon_send_month").show();
            }
        });
    });

    //添加优惠券
    function addRechargeItem(i) {

        var html = '<div class="input-group recharge-item"  style="margin-top:5px; width: 60%;">';
        html += '<input type="hidden" name="widgets[coupon][coupon_id][]" value=""/>';
        html += '<input type="text" maxlength="30" class="form-control" name="widgets[coupon][coupon_name][]"  readonly />';
        html += '<div class="input-group-addon"><button type="button" class="input-group-add">选择优惠券</button></div>';
        html += '<input type="text" class="form-control"  name="widgets[coupon][coupon_several][]" placeholder="请输入赠送张数（正整数）" value="1"/>';
        html += '<span class="input-group-addon unit">张</span>';
        html += '<div class="input-group-btn"><button type="button" class="btn btn-danger" onclick="removeRechargeItem(this)"><i class="fa fa-remove"></i></button></div>';
        html += '</div>';
        $('.recharge-items').append(html);
    }

    //优惠券模态框
    function showCouponModel(obj) {
        $('#modal-module-menus-coupon').modal();
    }

    //关闭优惠券模态框
    function removeRechargeItem(obj) {
        $(obj).closest('.recharge-item').remove();
    }

    //优惠券搜索
    function search_coupons() {
        if ($('#search-kwd-coupon').val() == '') {
            Tip.focus('#search-kwd-coupon', '请输入关键词');
            return;
        }
        $("#module-menus-coupon").html("正在搜索....");
        $.get("{!! yzWebUrl('coupon.coupon.get-search-coupons') !!}", {
            keyword: $.trim($('#search-kwd-coupon').val())
        }, function (dat) {
            $('#module-menus-coupon').html(dat);
        });
    }

    //选择优惠券
    function select_coupon(o) {
        //$("#coupon_id").val(o.id);
        //$("#coupon").val(o.name);
        $('.select_coupon_id').val(o.id);
        $('.select_coupon_name').val(o.name);
        $("#modal-module-menus-coupon .close").click();
        //console.log($(document).find('.recharge-item'));
        $(document).find('input').removeClass('select_coupon_id');
        $(document).find('input').removeClass('select_coupon_name');
    }


    $(function(){
        $(document).on('click', '#coupon_add', function() {
            addRechargeItem();
        });

        $(document).on('click', '.input-group-add', function() {
            showCouponModel($(this).get(0));
            $(this).parents('.recharge-item').find('input[name="widgets[coupon][coupon_id][]"]').addClass('select_coupon_id');
            $(this).parents('.recharge-item').find('input[name="widgets[coupon][coupon_name][]"]').addClass('select_coupon_name');
        });
    });
</script>


