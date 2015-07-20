    <a href="<?=\yii\helpers\Url::toRoute(['hotel/index', 'country' => 1])?>">UAE</a>
    <?=
    yii\widgets\Menu::widget([
        'items' => $cityList, 'options' => [
            'class' => 'personal-menu',
    ]]);
    ?>