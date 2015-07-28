<?php

require_once('inc/init.php');

$task_id = $_GET['task-id'];

$task = new Task();
$task->load('id = ?',[$task_id]);

if($task->delete()) {
	Response::write('message','Task deleted');
} else {
	Response::write('status', false);
	Response::write('message','Task failed to delete.');
}

Response::output();