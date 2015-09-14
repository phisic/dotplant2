<?php

namespace app\modules\tour\models;

use Yii;
use yii\data\ActiveDataProvider;
use yii\db\ActiveRecord;
use app\modules\tour\models\ServiceList;

class Partner extends ActiveRecord
{
    public static function tableName()
    {
        return '{{%wpartner}}';
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

    public function getHotels()
    {
        return $this->hasMany(ServiceList::className(), ['ID' => 'WSERVICELIST_ID'])
                        ->viaTable('WPARTNERSERVICE', ['WPARTNER_ID' => 'id'])->where(['WSERVICETYPE_ID' => 1]);
    }

    public function getServices()
    {
        return $this->hasMany(ServiceList::className(), ['ID' => 'WSERVICELIST_ID'])
                        ->viaTable('WPARTNERSERVICE', ['WPARTNER_ID' => 'id'])->where(['>', 'WSERVICETYPE_ID', 1]);
    }

}
