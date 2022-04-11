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
                                    '.(!empty($value["estado"])? '<a href="#" class="btn btn-danger w-100 disabled" disabled>Sponsored</a>': '<a href="#" class="btn btn-success w-100">See More</a>').'
                                    '.(!empty($value["estado"])?"": '<a href="#" class="btn btn-primary w-100 mkasponsor">Make a Sponsor</a>').'
                                </div>
                            </div>';
                }
            }
        } catch (exception $ex) {
            echo $ex->getMessage();
        }
    }
}
?>

<!-- <div class="card" style="width: 18rem;">
  <img class="card-img-top" src="..." alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div> -->

<!-- '<div class="col-sm-3 p-2">
                <img src="vista/img/child/' . ($value["foto"] != "josue.jpg" ? $value["foto"] : "alejandro.jpg") . '" alt="img" class="w-100 img-responsive">
                <div class="btn-group">
                <button type="submit" class="btn btn-success w-100">See More</button>
                <button type="button" class="btn btn-info w-100 mkasponsor" data-dismiss="modal">Make a Sponsor</button>
        </div> 
                          </div>' -->