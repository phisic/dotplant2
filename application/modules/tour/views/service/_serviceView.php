<div class="row">
    <div class="col-sm-4 col-md-4">
        <div class="thumbnail">
            <img src="http://r-ec.bstatic.com/images/hotel/square200/450/45068043.jpg" alt="...">
        </div>
    </div>
    <div class="col-sm-4 col-md-4">
        <div class="caption">
            <h3><?=$model->name?></h3>
            <p>
                <?php
                foreach ($model->services as $s)
                    echo '<div>' . $s->NAME . '</div>';
                ?>
            </p>
        </div>
    </div>
</div>
