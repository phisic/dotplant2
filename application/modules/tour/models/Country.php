<?php

namespace app\modules\tour\models;

use Yii;
use yii\data\ActiveDataProvider;
use yii\db\ActiveRecord;

class Country extends ActiveRecord
{
    public static function tableName()
    {
        return '{{%WCOUNTRY}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['NAME', 'COD'], 'required'],
            [['ACTIVE'], 'boolean'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [];
    }

    public static function getList()
    {
        $list = [];
        foreach (self::find()->where(['ACTIVE' => 1])->orderBy(['NAME' => 'asc'])->all() as $item)
            $list[] = ['label' => $item->NAME, 'url' => \yii\helpers\Url::toRoute(['country/' . $item->ID])];
        return $list;
    }

}
