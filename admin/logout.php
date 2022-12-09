<?php
require_once '../library/init.php';

session_destroy();

new Redirect('index.php');