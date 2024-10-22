<?php 
if(isset($_GET['id'])){
    $qry = $conn->query("SELECT a.*,u.username as writer ,u.department as dept FROM `event` a inner join users u on a.user_id = u.id where a.id = '{$_GET['id']}'");
    
    if($qry->num_rows > 0){
        foreach($qry->fetch_array() as $k => $v){
            $$k = $v;
        }
       
    }else{
    echo "<script> alert('Unrecognized Article ID.'); location.replace('./?page=events');</script>";
    }
}else{
    echo "<script> alert('Article ID is required to access this page.'); location.replace('./?page=events');</script>";
}

?>
<div class="content py-3">
    <div class="card card-outline card-primary rounded-0 shadow">
        <div class="card-header">
            <div class="card-title">Event Details</div>
            <div class="card-tools">
                <a href="./?page=events/manage_event&id=<?= isset($id) ? $id : "" ?>" class="btn btn-primary bg-gradient-primary btn-sm btn-flat"><i class="fa fa-edit"></i> Edit Event</a>
                <button class="btn btn-danger bg-gradient-danger btn-sm btn-flat" id="delete_data"><i class="fa fa-trash"></i> Delete Event</button>
            </div>
        </div>
        <div class="card-body">
            <dl>
                <dt class="text-muted">Title</dt>
                <dd class="pl-4"><?= isset($title) ? $title : "" ?></dd>
                <dt class="text-muted">Event Date and Time</dt>
                <dd class="pl-4"><?= isset($e_date) ? $e_date : "" ?></dd>
                <dt class="text-muted">Written By:</dt>
                <dd class="pl-4"><?= isset($writer) ? $writer : "" ?></dd>
                <dt class="text-muted">Department:</dt>
                <dd class="pl-4"><?= isset($dept) ? $dept : "" ?></dd>
                <dt class="text-muted">Summary</dt>
                <dd class="pl-4"><?= isset($short_description) ? $short_description : "" ?></dd>
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
                    <?php ?>    
                </dd>
                <dt class="text-muted">Content</dt>
                <dd class="pl-4">
                    <div>
                        <?php 
                            if(isset($content_path) && !empty($content_path)){
                                echo file_get_contents(base_app.$content_path);
                            }
                        ?>
                    </div>
                </dd>
            </dl>
        </div>
    </div>
</div>
<script>
$(function(){
    $('#delete_data').click(function(){
        _conf("Are you sure to delete this Event permanently?","delete_event",[])
    })
})
    
function delete_event(){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_event",
			method:"POST",
			data:{id: '<?= isset($id) ? $id : '' ?>'},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("An error occured.",'error');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.replace('./?page=events');
				}else{
					alert_toast("An error occured.",'error');
					end_loader();
				}
			}
		})
	}
