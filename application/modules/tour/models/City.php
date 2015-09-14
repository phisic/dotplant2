<?php

namespace app\modules\tour\models;

use Yii;
use yii\data\ActiveDataProvider;
use yii\db\ActiveRecord;

class City extends ActiveRecord
{
    public static function tableName()
    {
        return '{{%WCITY}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['NAME', 'COD'], 'required'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [];
    }

    public static function getList($countryId)
    {
        $q = 'SELECT ci.ID, ci.NAME, count(*) as COUNT FROM WPARTNERSERVICE ps
                join wpartner p on p.ID = ps.WPARTNER_ID
                join WSERVICELIST sl on sl.ID = ps.WSERVICELIST_ID
                join WSERVICECLASS c on c.ID = sl.WSERVICECLASS_ID
                join WSERVICETYPE t on t.ID=ps.WSERVICETYPE_ID
                join WCITY ci on p.WCITY_ID = ci.ID
                where ps.WSERVICETYPE_ID=1 and p.WCOUNTRY_ID=1 group by ci.ID order by ci.NAME; ';
        $list = [];
        foreach (self::findBySql($q)->asArray()->all() as $item)
            $list[] = ['label' => $item['NAME'] . ' (' . $item['COUNT'] . ')', 'url' => \yii\helpers\Url::toRoute(['/tour/hotel', 'city' => $item['ID']])];
        return $list;
    }

}
