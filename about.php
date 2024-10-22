<section class="py-5">
    <div class="container">
        <div class="card rounded-0">
            <div class="card-body">
                <?php include "about.html" ?>
            </div>
        </div>
    </div>
    <div class="row">
        <center>
            <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="card card-outline card-primary rounded-0 shadow mb-3">
                    <div class="card-body lh-2">
                        <h2 class="text-center font-weight-bolder m-0">Mission</h2>
                        <center><hr class="border-primary bg-primary my-1" style="width:3vw;height:3px;opacity:1"></center>
                        <div class="my-4">
                            <?php if(is_file(base_app.'pages/default/mission.html')): ?>
                                <?= file_get_contents(base_app.'pages/default/mission.html') ?>
                            <?php else: ?>
                                    <center><small class="text-muted"><i>Content is not set yet.</i></small></center>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
                <div class="card card-outline card-primary rounded-0 shadow mb-3">
                    <div class="card-body lh-2">
                        <h2 class="text-center font-weight-bolder m-0">Vision</h2>
                        <center><hr class="border-primary bg-primary my-1" style="width:3vw;height:3px;opacity:1"></center>
                        <div class="my-4">
                            <?php if(is_file(base_app.'pages/default/vision.html')): ?>
                                <?= file_get_contents(base_app.'pages/default/vision.html') ?>
                            <?php else: ?>
                                    <center><small class="text-muted"><i>Content is not set yet.</i></small></center>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
                <div class="card card-outline card-primary rounded-0 shadow mb-3">
                    <div class="card-body lh-2">
                        <h2 class="text-center font-weight-bolder m-0">Goal</h2>
                        <center><hr class="border-primary bg-primary my-1" style="width:3vw;height:3px;opacity:1"></center>
                        <div class="my-4">
                            <?php if(is_file(base_app.'pages/default/goal.html')): ?>
                                <?= file_get_contents(base_app.'pages/default/goal.html') ?>
                            <?php else: ?>
                                    <center><small class="text-muted"><i>Content is not set yet.</i></small></center>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
            </center>
            <!-- <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <?php //include("./inc/aside.php") ?>
            </div> -->
        </div>
</section>