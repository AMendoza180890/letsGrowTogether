<?php
class childc
{
    public function showChild()
    {
        try {
            $obtainChildList = childm::showChildM();

            if ($obtainChildList != null) {
                foreach ($obtainChildList as $key => $value) {
                    echo '<div class="col-sm-3 p-2 box">
                            <img class="card-img-top '.(!empty($value["estado"])?"colorImg":"").'" src="vista/img/child/'.(!empty($value["foto"])?$value["foto"]:"foto.jpg"). '" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title text-center">Name: '.$value["nombre"]. '</h5>
                                    <h5 class="card-title text-center">Dx: ' . $value["diagnostico"] . '</h5>
                                    <h5 class="card-title text-center">Age: ' . $value["edad"] . '</h5>
                                    '.(!empty($value["estado"])? '<a href="#" class="btn btn-danger w-100 disabled" disabled>Sponsored</a>': '<a href="#" class="btn btn-success w-100 bntGetChild" codChild = "' . $value["id"] . '" data-toggle="modal" data-target="#dataChild" data-backdrop="false">See More</a>').'
                                    '.(!empty($value["estado"])?"": '<a href="#" class="btn btn-primary w-100 mkasponsor">Make a Sponsor</a>').'
                                </div>
                            </div>';
                }
            }
        } catch (exception $ex) {
            echo $ex->getMessage();
        }
    }

     public static function getDataChild($id){
         try {
             if (!empty($id)) {
                 $getDataChildFillOne = childm::getDataChildM($id);
                 return $getDataChildFillOne;
             }
         } catch (Exception $ex) {
             echo $ex->getMessage();
         }
     }
}
?>