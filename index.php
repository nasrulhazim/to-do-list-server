<?php

require_once('inc/init.php');

$task = new Task();
$tasks = $task->Find('1 = 1');

Response::write('data', $tasks);

Response::output();

