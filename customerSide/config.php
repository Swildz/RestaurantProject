<?php

$host = getenv('DB_HOST');      // db
$user = getenv('DB_USERNAME'); // restaurant_user
$pass = getenv('DB_PASSWORD');
$db   = getenv('DB_DATABASE');

$link = new mysqli($host, $user, $pass, $db);

if ($link->connect_error) {
    die("Database connection failed: " . $link->connect_error);
}