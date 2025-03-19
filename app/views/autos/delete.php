<?php
/**
 * We sluiten het configuratiebestand in bij de pagina
 */
include('../../app/config/config.php');

$dsn = "mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=UTF8";

/**
 * Maak een nieuw PDO-object aan zodat we een verbinding
 * kunnen maken met de mysql-server
 */
$pdo = new PDO($dsn, DB_USER, DB_PASS);

/**
 * De sql-query om een auto record te verwijderen
 */
$sql = "DELETE FROM koenigsegg AS AUTO
        WHERE AUTO.Id = :Id";

/**
 * We moeten de sql-query voorbereiden voor de PDO class
 */
$statement = $pdo->prepare($sql);

/**
 * We koppelen aan de placeholder :Id de waarde die we
 * via het $_GET-array hebben binnengekregen
 */
$statement->bindValue(':Id', $_GET['Id'], PDO::PARAM_INT);

/**
 * We voeren de geprepareerde sql-query uit
 */
$statement->execute();

/**
 * We sturen de gebruiker door naar de autos index pagina
 */
header('Location: ' . URLROOT . '/autos');
exit;

?>