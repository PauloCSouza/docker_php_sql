<?php

// phpinfo();
// exit;

define('DB_HOST'        , "cms-database");
define('DB_USER'        , "sa");
define('DB_PASSWORD'    , "0sz86cv50@");
define('DB_NAME'        , "website");
define('DB_DRIVER'      , "sqlsrv");

require_once "conexao.php";

try {

    $Conexao    = Conexao::getConnection();
    $query      = $Conexao->query("SELECT * FROM tb_pessoas;");
    $empresas   = $query->fetchAll();

    foreach ($empresas as $key => $value) {
        var_dump($value);
    }

} catch(Exception $e) {

    echo $e->getMessage();
    exit;

}