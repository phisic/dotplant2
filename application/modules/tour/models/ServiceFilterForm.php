<?php

namespace app\modules\tour\models;

use Yii;
use yii\base\Model;

class ServiceFilterForm extends Model
{

    public $keyword;
    public $city_id;

    public function attributeLabels()
    {
        return [
            'city_id' => Yii::t('app', 'City'),
            'keyword' => Yii::t('app', 'Visa, Transfer, excursion and etc'),
        ];
    }

    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            // username and password are both required
            [['city_id'], 'number'],
            [['keyword'], 'trim']
        ];
    }

}
