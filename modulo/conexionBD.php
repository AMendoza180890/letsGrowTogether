<?php
class conexionBD{
    public static function conexion(){
        try {
            $bd = new PDO("mysql:host=localhost;dbname=tesorosd_letsgrowtogether", "tesorosd_lgtgthe", "MWr^PW75~{2r");
            $bd -> exec("set names utf8");

            return $bd;
        } catch (Exception $ex) {
            echo 'error - '.$ex;
        }
    }
}
?>