<?php

namespace app\extensions\DefaultTheme\widgets\OneRowHeaderWithCart;

use Yii;
use app\extensions\DefaultTheme\assets\BootstrapHoverDropdown;
use app\extensions\DefaultTheme\components\BaseWidget;
use yii\helpers\ArrayHelper;

class Widget extends BaseWidget
{
    public $collapseOnSmallScreen = true;
    /**
     * Actual run function for all widget classes extending BaseWidget
     *
     * @return mixed
     */
    public function widgetRun()
    {
        // this header needs this plugin
        BootstrapHoverDropdown::register($this->view);

        return $this->render(
            'header',
            [
                'order' => array(),
                    'collapseOnSmallScreen' => $this->collapseOnSmallScreen,
            ]
        );
    }

    public function getCacheTags()
    {
        $tags = ArrayHelper::merge(parent::getCacheTags(), [
            'Session:'.Yii::$app->session->id,
        ]);
        return $tags;
    }
}