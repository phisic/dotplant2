<?php

use yii\helpers\Html;
use \kartik\widgets\ActiveForm;
?>
<ul class="nav nav-tabs">
    <li role="presentation" <?=$activeTab != 'service' ? 'class="active"' : ''?>><a href="/tour/hotel">Hotels</a></li>
    <li role="presentation" <?=$activeTab == 'service' ? 'class="active"' : ''?>><a href="/tour/service">Services</a></li>
</ul>
<?php
if ($activeTab == 'services')
{
    $form = ActiveForm::begin(['id' => 'services-search-form', 'action' => 'tour/services']);
    print $form->field($model, 'keyword');
    print '<div class="form-group">';
    print Html::submitButton(Yii::t('app', 'search'), ['class' => 'btn btn-primary']);
    print '</div>';
    ActiveForm::end();
} else
{
    $form = ActiveForm::begin(['id' => 'hotel-search-form', 'action' => 'tour/hotel']);
    print $form->field($model, 'keyword');
    print '<div class="form-group">';
    print Html::submitButton(Yii::t('app', 'search'), ['class' => 'btn btn-primary']);
    print '</div>';
    ActiveForm::end();
    
}
