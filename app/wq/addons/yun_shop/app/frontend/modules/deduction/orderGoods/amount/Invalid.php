<?php
/**
 * Created by PhpStorm.
 * User: shenyang
 * Date: 2017/10/16
 * Time: 下午5:08
 */

namespace app\frontend\modules\deduction\orderGoods\amount;


class Invalid extends OrderGoodsDeductionAmount
{
    public function getAmount(){
        return 0;
    }

}