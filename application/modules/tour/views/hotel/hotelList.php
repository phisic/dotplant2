<?php

/**
 * @var $breadcrumbs array
 * @var $children \app\modules\page\models\Page[]
 * @var $model \app\modules\page\models\Page,
 * @var $pages \app\widgets\PagesList
 */

use kartik\icons\Icon;
use yii\helpers\Html;
use yii\helpers\Url;

$this->params['breadcrumbs'] = [['label' => 'Hotels']];
echo Html::tag('h1', Html::encode('Hotels'));
?>
<?php
echo 'Hello WOrld!';
?>
<div class="pages-list-content">
<?=$this->blocks['content']?>
</div>

