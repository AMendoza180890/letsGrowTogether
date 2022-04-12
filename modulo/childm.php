<?php
require_once "conexionBD.php";

class childm extends conexionBD{
    public static function showChildM(){
        try {
            $pdo = conexionBD::conexion()->prepare("SELECT id, nombre, edad, diagnostico, funfact, foto, estado FROM catchild");
            
            $pdo -> execute();

            return $pdo->fetchAll();

        } catch (exception $ex) {
            echo $ex->getMessage();
        }
    }

    public static function getDataChildM($idChild){
        try {
            $pdo = conexionBD::conexion()->prepare("SELECT id, nombre, edad, diagnostico, funfact, foto, estado FROM catchild WHERE id = :id");
            $pdo -> bindParam(":id", $idChild, PDO::PARAM_INT);
            $pdo -> execute();

            return  $pdo->fetch();
        } catch (exception $ex) {
            echo $ex->getMessage();
        }
    }
}
?>