<?php

namespace app\modules\tour;

use app;
use app\components\BaseModule;
use Yii;

/**
 * Base configuration module for DotPlant2 CMS
 * @package app\modules\tour
 */
class TourModule extends BaseModule
{
    public $controllerMap = [
        'backend' => 'app\modules\tour\backend\TourController',
    ];

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'configurableModule' => [
                'class' => 'app\modules\config\behaviors\ConfigurableModuleBehavior',
                'configurationView' => '@app/modules/tour/views/configurable/_config',
                'configurableModel' => 'app\modules\tour\models\ConfigConfigurationModel',
            ]
        ];
    }
}