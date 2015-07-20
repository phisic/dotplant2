<?php

namespace app\extensions\DefaultTheme\widgets\TourFilter;

use app\extensions\DefaultTheme\components\BaseWidget;
use app\modules\tour\models\FilterForm;
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
        $model = new FilterForm();
        $model->load(Yii::$app->request->post());
        return $this->render('filterForm', ['model' => $model]);
    }

}