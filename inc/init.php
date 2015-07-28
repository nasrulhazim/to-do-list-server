<?php

require_once('funcs.php');

$libraries = array(
	'AR',
	'Config',
	'Validate',
	'Html',
	'Session',
	'Response'
);

$models = array(
	'Task'
);

$configuration_files = array(
	'application' => 'inc/conf/application.php', 
	'database' => 'inc/conf/database.php', 
	'email' => 'inc/conf/email.php'
);

foreach ($libraries as $key => $value) {
	require_once('inc/lib/utilities/'.$value.'.php');
}

foreach ($models as $key => $value) {
	require_once('inc/models/'.$value.'.php');
}

Config::loads($configuration_files);

// connect to database
AR::$conn = connect(
	Config::read('database', 'username'), 
	Config::read('database', 'password'), 
	Config::read('database', 'server'),
	Config::read('database', 'database')
);
// AR::$conn->debug = 1; // turn on / off debug message
ADOdb_Active_Record::SetDatabaseAdapter(AR::$conn);

// set minimum length of password
Validate::$min_length = 8;

Session::init();

safe_post_data();

header("Content-Type: application/json; charset=utf-8");