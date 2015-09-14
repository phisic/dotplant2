
<div class="thumbnail">
    <a href="<?=\yii\helpers\Url::toRoute(['/tour/hotel', 'country' => 1])?>">UAE Hotels</a>
<?=
    yii\widgets\Menu::widget([
        'items' => $cityList, 'options' => [
            'class' => 'personal-menu',
    ]]);
    ?>
</div>