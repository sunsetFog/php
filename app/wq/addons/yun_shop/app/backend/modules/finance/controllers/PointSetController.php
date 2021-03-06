<?php
/**
 * Created by PhpStorm.
 * Author: 芸众商城 www.yunzshop.com
 * Date: 2017/4/10
 * Time: 下午2:00
 */

namespace app\backend\modules\finance\controllers;


use app\backend\modules\finance\services\PointService;
use app\common\components\BaseController;
use Setting;
use app\common\helpers\Url;

class PointSetController extends BaseController
{
    /**
     * @name 积分基础设置
     * @author yangyang
     * @return array $set
     */
    public function index()
    {
        $set = Setting::get('point.set');
        $point_data = PointService::getPointData(
            \YunShop::request()->set,
            \YunShop::request()->enough,
            \YunShop::request()->give
        );
        if ($point_data) {
            $point_data = $this->verifySetData($point_data);
            $result = (new PointService())->verifyPointData($point_data);
            if ($result) {
                return $this->message($result, Url::absoluteWeb('finance.point-set'));
            }
        }

        $love_name = Setting::get('love.name');
        $set['love_name'] = $love_name ? $love_name : '爱心值';

        return view('finance.point.set', [
            'set' => $set
        ])->render();
    }

    /**
     * @name 转换类型
     * @author yangyang
     * @param array $point_data
     * @return mixed array
     */
    private function verifySetData($point_data)
    {
        $point_data['money'] = floatval($point_data['money']);
        $point_data['money_max'] = floatval($point_data['money_max']);
        $point_data['give_point'] = trim($point_data['give_point']);
        $point_data['enough_money'] = floatval($point_data['enough_money']);
        $point_data['enough_point'] = floatval($point_data['enough_point']);
        return $point_data;
    }
}
