<?php 
if(isset($_GET['id'])){
    $qry = $conn->query("SELECT * FROM `event` where id = '{$_GET['id']}'");
    if($qry->num_rows > 0){
        foreach($qry->fetch_array() as $k => $v){
            $$k = $v;
        }
    }
   $q = $conn->query("SELECT a.*,u.username as writer ,u.department as dept FROM `event` a inner join users u on a.user_id = u.id where a.id = '{$_GET['id']}'");
$d=isset($dept) ? $dept : "" ;
$id = $_GET['id']; // Make sure this is sanitized or validated before using
 // Replace with the actual department value you want to set

$stmt = $conn->prepare("UPDATE `event` SET `dept` = ? WHERE `id` = ?");
$stmt->bind_param('si', $d, $id); // 'si' means string, integer
$stmt->execute();
}



?>
<div class="content py-3">
    <div class="card card-outline card-primary rounded-0 shadow">
        <div class="card-header">
            <h5 class="card-title"><b><?= isset($id) ? "Update Event" : "New Event" ?></b></h5>
        </div>
        <div class="card-body">
            <form action="" id="article-form">
                <input type="hidden" name="id" value="<?= isset($id) ? $id : "" ?>">
                <input type="hidden" name="content_path" value="<?= isset($content_path) ? $content_path : "" ?>">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="title" class="control-label">Title</label>
                            <input type="text" class="form-control form-control-sm rounded-0" name="title" value="<?= isset($title) ? $title : "" ?>" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="e_date" class="control-label">Date</label>
                            <input type="DateTime-local" class="form-control form-control-sm rounded-0" name="e_date" value="<?= isset($e_date) ? $e_date : "" ?>" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="short_description" class="control-label">Summary</label>
                            <textarea rows="5" class="form-control form-control-sm rounded-0" name="short_description" required><?= isset($short_description) ? $short_description : "" ?></textarea>
                        </div>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="content" class="label-control-label">Content</label>
                            <textarea name="content" id="content" cols="30" rows="10" class="form-control form-control-sm rounded-0 summernote"><?= isset($content_path) && !empty($content_path) && is_file(base_app.$content_path) ? file_get_contents(base_app.$content_path) : "" ?></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="invite" class="label-control-label">Invitation</label>
                            <input type="file" accept=".pdf,.doc,.docx,.jpg,.jpeg" name="invite" id="invite" = class="form-control form-control-sm rounded-0 "><?= isset($invite) && !empty($invite) && is_file(base_app.$invite) ? "" : "" ?>
                        </div>
                    </div>
                </div>
                <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="image" class="label-control-label">Event Image</label>
                    <input type="file" accept=".jpg,.jpeg,.png,.gif" name="image" id="image" class="form-control form-control-sm rounded-0">
                    <div id="image-preview" class="mt-3 center">
                        <?php if(isset($image) && !empty($image) && is_file(base_app.$image)): ?>
                            <img src="https://placehold.co/600x400" alt="Current Image" style="max-width: 200px; display: block;">
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        </div>
       

                <div class="row">
                    <div class="col-md-12">
                        <div class="custom-control custom-checkbox">
                          <input class="custom-control-input" type="checkbox" id="status" value="1" name="status" <?= isset($status) && $status == 1 ? "checked" : (!isset($status) ? 'checked' : "") ?>>
                          <label for="status" class="custom-control-label">Publish Event</label>
                        </div>
                    </div>
                </div>
                
            </form>
        </div>
        <div class="card-footer text-center"><button class="btn btn-primary rounded-pill btn-sm w-25" type="submit" form="article-form"><i class="fa fa-save"></i> Save</button></div>
    </div>
</div>

<script>
    
        document.getElementById('image').addEventListener('change', function(event) {
            var imagePreview = document.getElementById('image-preview');
            imagePreview.innerHTML = ''; // Clear any existing preview

            var file = event.target.files[0];
            if (file && file.type.startsWith('image/')) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    var img = document.createElement('img');
                    img.src = e.target.result;
                    img.style.maxWidth = '200px';
                    img.style.display = 'block';
                    imagePreview.appendChild(img);
                };
                reader.readAsDataURL(file);
            } else {
                var errorMsg = document.createElement('p');
                errorMsg.textContent = 'Invalid file type. Please upload an image.';
                errorMsg.style.color = 'red';
                imagePreview.appendChild(errorMsg);
            }
        });

    $(function(){
        $('.summernote').summernote({
            height: "30vh",
            toolbar: [
                [ 'style', [ 'style' ] ],
                [ 'font', [ 'bold', 'italic', 'underline', 'strikethrough', 'superscript', 'subscript', 'clear'] ],
                [ 'fontname', [ 'fontname' ] ],
                [ 'fontsize', [ 'fontsize' ] ],
                [ 'color', [ 'color' ] ],
                [ 'para', [ 'ol', 'ul', 'paragraph', 'height' ] ],
                [ 'table', [ 'table' ] ],
                [ 'insert', [ 'picture', 'video', 'link' ] ],
                [ 'view', [ 'undo', 'redo', 'fullscreen', 'codeview', 'help' ] ]
            ]
        })
        $('#article-form').submit(function(e){
			e.preventDefault();
            var _this = $(this)
			 $('.err-msg').remove();
             var el = $('<div>')
                 el.addClass("alert alert-danger err-msg")
                 el.hide()
			start_loader();
			$.ajax({
				url:_base_url_+"classes/Master.php?f=save_event",
				data: new FormData($(this)[0]),
                cache: false,
                contentType: false,
                processData: false,
                method: 'POST',
                type: 'POST',
                dataType: 'json',
				error:err=>{
					console.error(err)
                    el.text("An error occured",'error');
                    _this.prepend(el)
                    el.show('slow')
                    $("html, body").scrollTop(0);
					end_loader();
                    $("html, body").scrollTop(0);
				},
				success:function(resp){
					if(typeof resp =='object' && resp.status == 'success'){
                        el.removeClass("alert alert-danger err-msg")
						location.replace("./?page=events/view_events&id="+resp.aid)
					}else if(resp.status == 'failed' && !!resp.msg){
                            el.text(resp.msg)
                    }else{
						el.text("An error occured",'error');
						end_loader();
                        console.err(resp)
					}
                    _this.prepend(el)
                    el.show('slow')
                    $("html, body").scrollTop(0);
                    end_loader()
				}
			})
		})
    })
</script>