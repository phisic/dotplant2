<?php

namespace app\extensions\DefaultTheme\widgets\TourFilter;

use app\extensions\DefaultTheme\components\BaseWidget;
use app\modules\tour\models\ServiceFilterForm;
use app\modules\tour\models\HotelFilterForm;
use app\modules\tour\models\City;
use yii\helpers\Html;
use Yii;

class Widget extends BaseWidget
{

    public $countryId = 1;

    public function widgetRun()
    {
         return $this->renderCity() . $this->renderFilter();
    }

    public function renderCity()
    {
        return $this->render('cityMenu', ['cityList' => City::getList($this->countryId)]);
    }

    public function renderFilter()
    {
        $tab = Yii::$app->controller->id;
        if ($tab == 'service')
            $model = new ServiceFilterForm();
        else
            $model = new HotelFilterForm();
        $model->load(Yii::$app->request->post());
        return $this->render('filterForm', ['model' => $model, 'activeTab' => $tab]);
    }

}