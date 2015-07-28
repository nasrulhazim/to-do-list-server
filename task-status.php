<?php

require_once('inc/init.php');

$task_id = $_POST['task-status-id'];
$date = strtotime($_POST['task-status']);
$task = new Task();
$task->load('id = ?',[$task_id]);
$task->status = $_POST['task-status'];

if($task->save()) {
	Response::write('message','Task status updated');
} else {
	Response::write('status', false);
	Response::write('message','Task status failed to update.');
}

Response::output();