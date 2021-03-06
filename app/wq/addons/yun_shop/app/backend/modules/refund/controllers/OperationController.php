<?php

namespace app\backend\modules\refund\controllers;

use app\backend\modules\refund\models\RefundApply;
use app\common\components\BaseController;
use app\common\events\order\AfterOrderRefundedEvent;
use app\common\exceptions\AdminException;
use app\common\models\refund\ResendExpress;
use Illuminate\Support\Facades\DB;
use app\backend\modules\refund\services\RefundMessageService;

/**
 * 退款申请操作
 * Created by PhpStorm.
 * Author: 芸众商城 www.yunzshop.com
 * Date: 2017/4/13
 * Time: 下午3:05
 */
class OperationController extends BaseController
{
    /**
     * @var $refundApply RefundApply
     */
    private $refundApply;

    public function __construct()
    {
        parent::__construct();
        $request = \Request::capture();
        $this->validate([
            'refund_id' => 'required',
        ]);
        $this->refundApply = RefundApply::find($request->input('refund_id'));
        if (!isset($this->refundApply)) {
            throw new AdminException('退款记录不存在');
        }
    }

    /**
     * 拒绝
     * @param \Request $request
     * @return mixed
     */
    public function reject(\Request $request)
    {
        $refundApply = $this->refundApply;
//        RefundMessageService::rejectMessage($refundApply);
        DB::transaction(function () use ($refundApply) {
            $refundApply->reject(\Request::only(['reject_reason']));
            $refundApply->order->refund_id = 0;
            $refundApply->order->save();
            RefundMessageService::rejectMessage($refundApply);//通知买家
        });


        return $this->message('操作成功', '');
    }

    /**
     * 同意
     * @param \Request $request
     * @return mixed
     */
    public function pass(\Request $request)
    {
        $this->refundApply->pass();
        return $this->message('操作成功', '');
    }

    public function receiveReturnGoods(\Request $request)
    {
        $this->refundApply->receiveReturnGoods();
        return $this->message('操作成功', '');
    }

    public function resend(\Request $request)
    {
        $resendExpress = new ResendExpress($request->only('express_code', 'express_company_name', 'express_sn'));

        $this->refundApply->resendExpress()->save($resendExpress);
        $this->refundApply->resend();
        return $this->message('操作成功', '');

    }

    /**
     * 手动退款
     * @param \Request $request
     * @return mixed
     */
    public function consensus(\Request $request)
    {

        $refundApply = $this->refundApply;
        DB::transaction(function () use ($refundApply) {
            $refundApply->consensus();
            $refundApply->order->close();
            RefundMessageService::passMessage($refundApply);//通知买家
        });
        return $this->message('操作成功', '');
    }
}