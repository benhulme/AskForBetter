<?php

global $project;
$project = 'askforbetter';

global $databaseConfig;
$databaseConfig = array(
	'type' => 'MySQLPDODatabase',
	//'server' => 'aa1n7vpb9zto1e0.cz2njti9yqtd.ap-southeast-2.rds.amazonaws.com', //live
	'server' => 'aa1jsq0ussp4o48.cz2njti9yqtd.ap-southeast-2.rds.amazonaws.com',  //staging
//	'server' => 'localhost',
	'username' => 'root',
	'password' => 'mellon25',
//	'password' => 'root',
	'database' => 'askforbetter',
	'path' => ''
);

// Set the site locale
i18n::set_locale('en_US');
//bump

//Security::setDefaultAdmin('admin','password');
