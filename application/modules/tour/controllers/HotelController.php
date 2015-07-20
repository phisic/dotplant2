<?php

namespace app\modules\tour\controllers;

use app\components\Controller;
use app\modules\seo\behaviors\MetaBehavior;
use app\traits\LoadModel;
use devgroup\TagDependencyHelper\ActiveRecordHelper;
use Yii;
use yii\caching\TagDependency;
use yii\data\Pagination;
use yii\db\ActiveQuery;
use yii\web\ForbiddenHttpException;
use yii\web\NotFoundHttpException;
use yii\web\Response;

class HotelController extends Controller
{
    use LoadModel;

    public function behaviors()
    {
        return [
            'seo' => [
                'class' => MetaBehavior::className(),
                'index' => $this->defaultAction,
            ],
        ];
    }

    /**
     * @param $id
     * @return string
     * @throws NotFoundHttpException
     * @throws \yii\web\ServerErrorHttpException
     */
    public function actionIndex()
    {
        return $this->render('hotelList');
    }

    
}
