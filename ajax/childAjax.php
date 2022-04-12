<?php
require_once '../modulo/childm.php';
require_once '../controlador/childc.php';

class childa
{
    public $id;

    public function getDataChild()
    {
        try {

            $idChild = $this->id;
            $getDataChildFillOne = childc::getDataChild($idChild);
            echo json_encode($getDataChildFillOne);

        } catch (Exception $ex) {
            echo $ex->getMessage();
        }
    }
}

if (isset($_POST["id"])) {
    $getChild = new childa;
    $getChild ->id = $_POST["id"];
    $getChild -> getDataChild();
}
?>
