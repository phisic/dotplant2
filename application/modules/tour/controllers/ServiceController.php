<?php

namespace app\modules\tour\controllers;

use app\components\Controller;
use Yii;
use yii\data\Pagination;
use app\modules\tour\models\Partner;
use yii\data\ActiveDataProvider;

class ServiceController extends Controller
{
    /**
     * @param $id
     * @return string
     * @throws NotFoundHttpException
     * @throws \yii\web\ServerErrorHttpException
     */
    public function actionIndex()
    {
        $q = Partner::find()
                ->join('JOIN', 'WPARTNERSERVICE', 'WPARTNERSERVICE.WPARTNER_ID = wpartner.id')
                ->join('JOIN', 'WSERVICELIST', 'WSERVICELIST.ID = WPARTNERSERVICE.WSERVICELIST_ID')
                ->where(['>', 'WPARTNERSERVICE.WSERVICETYPE_ID', 1])
                ->groupBy(['wpartner.id'])
                ->with('services');

        $provider = new ActiveDataProvider([
            'query' => $q,
            'pagination' => [
                'pageSize' => 10,
            ],
        ]);
        return $this->render('serviceList', ['provider' => $provider]);
    }

    
}
