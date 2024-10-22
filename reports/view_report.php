<?php 
if(isset($_GET['id'])){
    $qry = $conn->query("SELECT a.*, u.username as writer,u.department as dept FROM `report` a 
                         INNER JOIN users u ON a.user_id = u.id 
                         WHERE a.id = '{$_GET['id']}'");
    if($qry->num_rows > 0){
        foreach($qry->fetch_array() as $k => $v){
            $$k = $v;
        }
    } else {
        echo "<script> alert('Unrecognized Report ID.'); location.replace('./?page=reports');</script>";
    }
} else {
    echo "<script> alert('Report ID is required to access this page.'); location.replace('./?page=reports');</script>";
}
?>

<div class="content py-3">
    <div class="card card-outline card-primary rounded-0 shadow">
        <div class="card-header">
            <div class="card-title">Report Details</div>
            <div class="card-tools">
                <a href="./?page=reports/manage_report&id=<?= isset($id) ? $id : "" ?>" class="btn btn-primary bg-gradient-primary btn-sm btn-flat"><i class="fa fa-edit"></i> Edit Report</a>
                <button class="btn btn-danger bg-gradient-danger btn-sm btn-flat" id="delete_data"><i class="fa fa-trash"></i> Delete Report</button>
            </div>
        </div>
        <div class="card-body">
            <dl>
                <dt class="text-muted">Title</dt>
                <dd class="pl-4"><?= isset($title) ? htmlspecialchars($title, ENT_QUOTES, 'UTF-8') : "" ?></dd>
                
                <dt class="text-muted">Written By:</dt>
                <dd class="pl-4"><?= isset($writer) ? htmlspecialchars($writer, ENT_QUOTES, 'UTF-8') : "" ?></dd>
                <dt class="text-muted">Department</dt>
                <dd class="pl-4"><?= isset($dept) ? htmlspecialchars($dept, ENT_QUOTES, 'UTF-8') : "" ?></dd>
                
                
                <dt class="text-muted">Summary</dt>
                <dd class="pl-4"><?= isset($short_description) ? htmlspecialchars($short_description, ENT_QUOTES, 'UTF-8') : "" ?></dd>
                
                <dt class="text-muted">Status</dt>
                <dd class="pl-4">
                    <?php 
                    $status = isset($status) ? $status : "";
                    switch($status){
                        case 1:
                            echo "<span class='badge badge-primary px-3 rounded-pill bg-gradient-primary'>Published</span>";
                            break;
                        case 0:
                            echo "<span class='badge badge-secondary px-3 rounded-pill bg-gradient-secondary'>Unpublished</span>";
                            break;
                        default:
                            echo "<span class='badge badge-light px-3 rounded-pill bg-gradient-light border'>N/A</span>";
                            break;
                    }
                    ?>
                </dd>
                
                <dt class="text-muted">View Content</dt>
                <dd class="pl-4">
                    <div>
                        <?php if(isset($content_path) && !empty($content_path))
                        
                        ?>
                            
                            <a href="<?= htmlspecialchars(("../$content_path"), ENT_QUOTES, 'UTF-8') ?>" target="_blank">View Content</a>
                        
                        
                    </div>
                </dd>

                <dt class="text-muted">Report</dt>
                <dd class="pl-4">
                    <?php if (isset($invite) && !empty($invite)): ?>
                    
                        <a href="<?= htmlspecialchars("../$invite", ENT_QUOTES, 'UTF-8') ?>" target="_blank">View Report</a>
                    <?php else: ?>
                        No report available.
                    <?php endif; ?>
                </dd>

                <dt class="text-muted">Image</dt>
                <dd class="pl-4">
                    <?php if (isset($image) && !empty($image)): ?>
                        <a href="<?= htmlspecialchars("../$image", ENT_QUOTES, 'UTF-8') ?>" target="_blank">
                            <img src="<?= htmlspecialchars("../$image", ENT_QUOTES, 'UTF-8') ?>" alt="Report Image" style="max-width: 200px; height: auto;">
                        </a>
                    <?php else: ?>
                        No image available.
                    <?php endif; ?>
                </dd>
            </dl>
        </div>
    </div>
</div>

<script>
$(function(){
    $('#delete_data').click(function(){
        _conf("Are you sure to delete this Report permanently?","delete_report",[])
    })
})

function delete_report(){
    start_loader();
    $.ajax({
        url: _base_url_ + "classes/Master.php?f=delete_report",
        method: "POST",
        data: {id: '<?= isset($id) ? $id : '' ?>'},
        dataType: "json",
        error: err => {
            console.log(err);
            alert_toast("An error occurred.", 'error');
            end_loader();
        },
        success: function(resp) {
            if (typeof resp == 'object' && resp.status == 'success') {
                location.replace('./?page=reports');
            } else {
                alert_toast("An error occurred.", 'error');
                end_loader();
            }
        }
    })
}
</script>
