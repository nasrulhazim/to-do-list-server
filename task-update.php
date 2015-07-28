<?php

require_once('inc/init.php');

$task_id = $_POST['task_id'];

$task = new Task();
$task->load('id = ?',[$task_id]);
$task->name = $_POST['task-name'];
$task->description = $_POST['task-description'];
$task->save();