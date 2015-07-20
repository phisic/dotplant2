<?php

use yii\db\Schema;
use yii\db\Migration;

class m150719_174831_tourhotels extends Migration
{
    public function up()
    {
        $this->execute(file_get_contents(__DIR__ . '/whotel-data.sql'));
    }

    public function down()
    {
        echo "m150719_174831_tourhotels cannot be reverted.\n";

        return false;
    }
}
