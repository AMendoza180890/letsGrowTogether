<?php
class childc{
    public function showChild(){
        try {
            $obtainChildList = childm::showChildM();

            if ($obtainChildList != null) {
                foreach ($obtainChildList as $key => $value) {
                    echo '<div class="col-sm-3 p-2">
                                <img src="vista/img/child/'.($value["foto"] != "josue.jpg"? $value["foto"]:"alejandro.jpg").'" alt="img" class="w-100 img-responsive">
                                <!-- <div class="btn-group"> -->
                                <button type="submit" class="btn btn-success w-100">See More</button>
                                <button type="button" class="btn btn-info w-100 mkasponsor" data-dismiss="modal">Make a Sponsor</button>
                                <!-- </div> -->
                          </div>';
                }
            }
        } catch (exception $ex) {
            echo $ex->getMessage();
        }
    }
}
?>