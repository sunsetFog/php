<?php
/**
 * Created by PhpStorm.
 * Author: 芸众商城 www.yunzshop.com
 * Date: 03/03/2017
 * Time: 12:19
 */

namespace app\backend\widgets\goods;


use app\common\components\Widget;
use app\backend\modules\goods\models\Privilege;
use app\backend\modules\member\models\MemberLevel;
use app\backend\modules\member\models\MemberGroup;
use app\backend\modules\goods\services\GoodsPrivilegeService;


class PrivilegeWidget extends Widget
{

    public function run()
    {
        $privilege = new Privilege();
        if ($this->goods_id && Privilege::getInfo($this->goods_id)) {
            $privilege = Privilege::getInfo($this->goods_id);
            $privilege->show_levels = !is_null($privilege->show_levels) ? explode(',', $privilege->show_levels) : '';
            $privilege->buy_levels = !is_null($privilege->buy_levels) ? explode(',', $privilege->buy_levels) : '';
            $privilege->show_groups = !is_null($privilege->show_groups) ? explode(',', $privilege->show_groups) : '';
            $privilege->buy_groups = !is_null($privilege->buy_groups) ? explode(',', $privilege->buy_groups) : '';
        }
        $levels = MemberLevel::getMemberLevelList();
        $groups = MemberGroup::getMemberGroupList();
        return view('goods.widgets.privilege', [
            'privilege' => $privilege,
            'levels' => $levels,
            'groups' => $groups
        ])->render();
    }
}