<?php

class Conexion{
    static public function conectar(){

    $contraseña = "root";
    $usuario = "postgres";
    $BD = "Miyerlandi_db";
    $rutaServidor = "127.0.0.1";
    $puerto = "5432";
try {
    $base_de_datos = new PDO("pgsql:host=$rutaServidor;port=$puerto;dbname=$BD", $usuario, $contraseña);
    $base_de_datos->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
     //echo "Conecto con la base de datos ";
} catch (Exception $e) {
     //echo "Ocurrió un error con la base de datos: " . $e->getMessage();
}
return  $base_de_datos;
    }
}

?>