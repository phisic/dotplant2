<?php

use yii\db\Schema;
use yii\db\Migration;

class m150719_174343_tourfilter extends Migration
{
    public function up()
    {
        $this->execute("INSERT INTO `theme_active_widgets` (`part_id`, `widget_id`, `variation_id`, `sort_order`) VALUES ('5', '9', '1', '');");
        $this->execute("INSERT INTO `theme_widget_applying` (`widget_id`, `part_id`) VALUES ('9', '5');");
        $this->execute("INSERT INTO `theme_widgets` (`id`, `name`) VALUES ('9', 'TourFilter');");
        $this->execute("UPDATE `theme_widgets` SET `widget`='app\\extensions\\DefaultTheme\\widgets\\TourFilter\\Widget', `configuration_model`='app\\extensions\\DefaultTheme\\widgets\\TourFilter\\ConfigurationModel', `configuration_view`='@app/extensions/DefaultTheme/widgets/TourFilter/views/_config.php', `configuration_json`='{}', `is_cacheable`='0', `cache_tags`='' WHERE `id`='9';");
    }

    public function down()
    {
        echo "m150719_174343_tourfilter cannot be reverted.\n";

        return false;
    }
    
    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }
    
    public function safeDown()
    {
    }
    */
}
