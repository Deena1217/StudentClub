<?php session_start() ?>
<div class="container-fluid">
	<form action="" id="login-frm">
		<div class="form-group">
			<label for="" class="control-label">Email</label>
			<input type="email" name="username" required="" class="form-control">
		</div>
		<div class="form-group">
			<label for="" class="control-label">Password</label>
			<input type="password" name="password" required="" class="form-control">
			<small><a href="index.php?page=signup" id="new_account">Create New Account</a></small>
			
			<!-- <a href="admin/login.php" class="btn" style="margin-left:125px;">Are u Admin?</a> -->
		
<!-- <a href="admin/login.php" style="display: inline-block; padding: 10px 20px; background-color: #007bff; color: #fff; text-decoration: none; border-radius: 5px; margin-left: 125px;">Are u Admin?</a> -->
<!-- <a href="admin/login.php" style="display: inline-block; padding: 8px 16px; font-size: 14px; background-color: #007bff; color: #fff; text-decoration: none; border-radius: 5px; margin-left: 125px;">Are u Admin?</a> -->

<a href="admin/login.php" style="color: blue; text-decoration: none; margin-left: 210px; transition: color 0.3s;font-size: 14px;">Admin Login</a>
		</div>
		<button class="button btn btn-info btn-sm">Login</button>
		<!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button> -->
		<button type="button" class="btn btn-secondary" style="padding: 2px 10px;" data-dismiss="modal">Cancel</button>

	</form>
</div>

<style>
	#uni_modal .modal-footer{
		display:none;
	}
</style>

<script>
	$('#login-frm').submit(function(e){
		e.preventDefault()
		$('#login-frm button[type="submit"]').attr('disabled',true).html('Logging in...');
		if($(this).find('.alert-danger').length > 0 )
			$(this).find('.alert-danger').remove();
		$.ajax({
			url:'admin/ajax.php?action=login2',
			method:'POST',
			data:$(this).serialize(),
			error:err=>{
				console.log(err)
		$('#login-frm button[type="submit"]').removeAttr('disabled').html('Login');

			},
			success:function(resp){
				if(resp == 1){
					location.href ='<?php echo isset($_GET['redirect']) ? $_GET['redirect'] : 'index.php?page=home' ?>';
				}else if(resp == 2){
					$('#login-frm').prepend('<div class="alert alert-danger">Your account is not yet verified.</div>')
					$('#login-frm button[type="submit"]').removeAttr('disabled').html('Login');
				}else{
					$('#login-frm').prepend('<div class="alert alert-danger">Email or password is incorrect.</div>')
					$('#login-frm button[type="submit"]').removeAttr('disabled').html('Login');
				}
			}
		})
	})
</script>