<?php

/**
 * @var $breadcrumbs array
 * @var $children \app\modules\page\models\Page[]
 * @var $model \app\modules\page\models\Page,
 * @var $pages \app\widgets\PagesList
 */

use kartik\icons\Icon;
use yii\helpers\Html;
use yii\widgets\ListView;

$this->params['breadcrumbs'] = [['label' => 'Services']];
echo Html::tag('h1', Html::encode('Services'));
?>
<div class="container-fluid">
    <div class="row">
        <?=
            ListView::widget([
                'dataProvider' => $provider,
                'itemView' => '_serviceView',
                'itemOptions' => ['tag' => false],
            ]);
        ?>
        </div>
</div>
<div class="pages-list-content">
<?=$this->blocks['content']?>
</div>

