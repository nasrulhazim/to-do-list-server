<?php

require_once('inc/init.php');

$task_id = $_POST['task-edit-id'];
$date = strtotime($_POST['task-edit-date']);
$task = new Task();
$task->load('id = ?',[$task_id]);
$task->name = $_POST['task-edit-name'];
$task->description = $_POST['task-edit-description'];
$task->date = date('Y:m:d 00:00:00', $date);
$task->modified = date('Y:m:d 00:00:00');

if($task->save()) {
	Response::write('message','Task updated');
} else {
	Response::write('status', false);
	Response::write('message','Task failed to update.');
}

Response::output();