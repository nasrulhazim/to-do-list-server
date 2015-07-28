<?php

require_once('inc/init.php');

$task = new Task();
$date = strtotime($_POST['task-add-date']);
$task->name = $_POST['task-add-name'];
$task->description = $_POST['task-add-description'];
$task->status = 'Pending'; // Default is Pending
$task->date = date('Y:m:d 00:00:00', $date);

if($task->save()) {
	Response::write('message','Task added');
} else {
	Response::write('status', false);
	Response::write('message','Task failed to add.');
}

Response::output();