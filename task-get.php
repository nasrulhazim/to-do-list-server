<?php

require_once('inc/init.php');

$task_id = $_GET['task_id'];

$task = new Task();
$task->load('id = ?',[$task_id]);

Response::write('data', $task);

Response::output();