<?php

use yii\db\Schema;
use yii\db\Migration;

class m150707_071523_tourbase extends Migration
{
    public function up()
	{
		$this->execute('TRUNCATE TABLE wpartner;');
		$this->renameColumn('{{%wpartner}}', 'last_name', 'offname');
		$this->renameColumn('{{%wpartner}}', 'first_name', 'name');
		$this->addColumn('{{%wpartner}}', 'wcountry_id', 'integer default 1 not null');
		$this->addColumn('{{%wpartner}}', 'wregions_id', 'integer default 1 not null');
		$this->addColumn('{{%wpartner}}', 'wcity_id', 'integer default 1 not null');
		$this->addColumn('{{%wpartner}}', 'wstar_id', 'integer default 0 not null');
		$this->addColumn('{{%wpartner}}', 'adress', 'varchar(200)');
		$this->addColumn('{{%wpartner}}', 'url', 'varchar(200)');
		$this->addColumn('{{%wpartner}}', 'phones', 'varchar(200)');
		$this->addColumn('{{%wpartner}}', 'fax', 'varchar(200)');
		$this->addColumn('{{%wpartner}}', 'description', 'varchar(1000)');
		$this->addColumn('{{%wpartner}}', 'notes', 'varchar(1000)');
		$this->addColumn('{{%wpartner}}', 'thotel', 'smallint default 1 not null');
		$this->addColumn('{{%wpartner}}', 'tvisa', 'smallint default 1 not null');
		$this->addColumn('{{%wpartner}}', 'tagent', 'smallint default 1 not null');
		$this->addColumn('{{%wpartner}}', 'ttransport', 'smallint default 1 not null');
		$this->addColumn('{{%wpartner}}', 'tservice', 'smallint default 1 not null');
		$this->addColumn('{{%wpartner}}', 'tother', 'smallint default 1 not null');
		$this->addColumn('{{%wpartner}}', 'numaccount1', 'varchar(100)');
		$this->addColumn('{{%wpartner}}', 'numaccount2', 'varchar(100)');
		$this->addColumn('{{%wpartner}}', 'numaccount3', 'varchar(100)');
		$this->addColumn('{{%wpartner}}', 'st_active', 'smallint default 1');
		$this->execute('ALTER TABLE `wpartner` DROP INDEX `uq-user-username` ;');
		$this->execute(file_get_contents(__DIR__ . '/wpartner-data.sql'));
		$this->update('{{%wpartner}}', array(
				'password_hash' => '$2y$13$jwKmek.4Y/5wUjPoBIzLQeLHN6vuCkY1hDpWcSdGdmZc.SsHsOwRy',
				'create_time' => '1436163184',
				'update_time' => '1436163184',
				'status' => 10
			));
		$this->execute("UPDATE wpartner set username = concat('user', id);");
	}

	public function down()
	{
        echo "m150707_071523_tourbase cannot be reverted.\n";

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
