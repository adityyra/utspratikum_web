<?php
require_once __DIR__ . '/connect.php';
$result = mysqli_query($conn, 'SELECT COUNT(*) AS c FROM nilaimhsw');
$row = mysqli_fetch_assoc($result);
echo 'ROW_COUNT:' . ($row ? $row['c'] : 'ERR') . PHP_EOL;
