<?php
require_once 'controlador/plantillaC.php';
//require_once 'controlador/mensajeC.php';
require_once 'controlador/childc.php';

//require_once 'modulo/mensajeM.php';
require_once 'modulo/childm.php';

$plantilla = new plantillaControlador();
$plantilla -> llamarPlantilla();
?>