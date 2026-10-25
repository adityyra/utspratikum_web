<?php
// definisi nilai parameter server
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "db5a";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

mysqli_set_charset($conn, "utf8mb4");

$tables = mysqli_query($conn, "SHOW TABLES");
$actual_table = "nilaimahasiswa";
while ($row = mysqli_fetch_array($tables)) {
    $table_name = strtolower($row[0]);
    if ($table_name === "nilaimahasiswa") {
        $actual_table = "nilaimahasiswa";
        break;
    }
    if ($table_name === "nilaimhsw") {
        $actual_table = "nilaimhsw";
    }
}

$table_check = mysqli_query($conn, "SHOW TABLES LIKE '" . mysqli_real_escape_string($conn, $actual_table) . "'");
if (!$table_check || mysqli_num_rows($table_check) === 0) {
    $create_table_sql = "
        CREATE TABLE IF NOT EXISTS `nilaimahasiswa` (
            `NIM` int(18) unsigned NOT NULL AUTO_INCREMENT,
            `NamaMahasiswa` varchar(30) NOT NULL,
            `NilaiAkhir` double NOT NULL,
            `NilaiHuruf` varchar(5) NOT NULL,
            `predikat` varchar(20) NOT NULL,
            `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
            `modified_date` timestamp NOT NULL DEFAULT current_timestamp(),
            `created_date` datetime DEFAULT current_timestamp(),
            `file_path` varchar(255) DEFAULT NULL,
            PRIMARY KEY (`NIM`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
    ";
    mysqli_query($conn, $create_table_sql);
    $actual_table = "nilaimahasiswa";
} else {
    $column_check = mysqli_query($conn, "SHOW COLUMNS FROM `" . mysqli_real_escape_string($conn, $actual_table) . "` LIKE 'file_path'");
    if (!$column_check || mysqli_num_rows($column_check) === 0) {
        mysqli_query($conn, "ALTER TABLE `" . mysqli_real_escape_string($conn, $actual_table) . "` ADD COLUMN `file_path` VARCHAR(255) NULL AFTER `modified_date`");
    }
}

if (!defined('DB_TABLE_NAME')) {
    define('DB_TABLE_NAME', $actual_table);
}
?>