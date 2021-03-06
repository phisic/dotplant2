<?php

namespace app\modules\tour\controllers;

use app\components\Controller;
use Yii;
use yii\data\Pagination;
use app\modules\tour\models\Partner;
use yii\data\ActiveDataProvider;

class HotelController extends Controller
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
                ->where(['WPARTNERSERVICE.WSERVICETYPE_ID' => 1])
                ->groupBy(['wpartner.id'])
                ->with('hotels');

        if ($city = (int)Yii::$app->request->get('city'))
        {
            $q->andWhere(['wcity_id' => $city]);
        }

        $provider = new ActiveDataProvider([
            'query' => $q,
            'pagination' => [
                'pageSize' => 10,
            ],
        ]);
        return $this->render('hotelList', ['provider' => $provider]);
    }

    
}
