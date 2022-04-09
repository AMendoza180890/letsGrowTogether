<?php
require_once "Admin/modelo/conexionBD.php";
class childm extends conexionBD{
    public static function showChildM(){
        try {
            $pdo = conexionBD::conexion()->prepare("SELECT id, nombre, edad, diagnostico, funfact, foto FROM catchild");
            
            $pdo -> execute();

            return $pdo->fetchAll();

        } catch (exception $ex) {
            echo $ex->getMessage();
        }
    }
}
?>