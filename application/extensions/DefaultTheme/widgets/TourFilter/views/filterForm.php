<?php

use yii\helpers\Html;
use \kartik\widgets\ActiveForm;

$form = ActiveForm::begin(['id' => 'filter-form',]);
?>
<?=$form->field($model, 'keyword')?>
<div class="form-group">
    <?=Html::submitButton(Yii::t('app', 'search'), ['class' => 'btn btn-primary'])?>
</div>
<?php ActiveForm::end();?>