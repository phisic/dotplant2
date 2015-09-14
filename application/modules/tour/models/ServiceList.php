<?php

namespace app\modules\tour\models;

use Yii;
use yii\data\ActiveDataProvider;
use yii\db\ActiveRecord;

class ServiceList extends ActiveRecord
{
    public static function tableName()
    {
        return '{{%WSERVICELIST}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['NAME'], 'required'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [];
    }

}
