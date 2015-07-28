<?php

require_once('inc/init.php');

$task_id = $_GET['task-id'];

$task = new Task();
$task->load('id = ?',[$task_id]);

Response::write('data', $task);

Response::output();