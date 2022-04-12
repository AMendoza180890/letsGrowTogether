<!-- welcome_docmed_area_start -->
<div class="welcome_docmed_area" id="internship">
    <div class="container">
        <div class="row align-items-start">
            <?php
            $childList = new childc();
            $childList->showChild();

            $idChild = null;
            $child = $childList::getDataChild($idChild);
            ?>
        </div>
    </div>
</div>
<!-- welcome_docmed_area_end -->
<?php
include 'childGetData.php';
?>