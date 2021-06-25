<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

if(isset($_POST['submit']))
{	
$date_request_received=$_POST['date_request_received'];
$requester_first_name=$_POST['requester_first_name'];
$requester_last_name=$_POST['requester_last_name'];
$requester_position=$_POST['requester_position'];
$requester_phone=$_POST['requester_phone'];
$requester_email=$_POST['requester_email'];
$requester_organization=$_POST['requester_organization'];
$date_data_required=$_POST['date_data_required'];
$type_of_data_required=$_POST['type_of_data_required'];
$intended_use_of_requested_data=$_POST['intended_use_of_requested_data'];
$type_of_access_format=$_POST['type_of_access_format'];
$data_disposal_arrangement_after_use=$_POST['data_disposal_arrangement_after_use'];


$sql=mysqli_query($con,"insert into drequest_tracker(date_request_received,requester_first_name,requester_last_name,requester_position,requester_phone,requester_email,requester_organization,date_data_required,type_of_data_required,intended_use_of_requested_data,type_of_access_format,data_disposal_arrangement_after_use,request_status) values('$date_request_received','$requester_first_name','$requester_last_name','$requester_position','$requester_phone','$requester_email','$requester_organization','$date_data_required','$type_of_data_required','$intended_use_of_requested_data','$type_of_access_format','$data_disposal_arrangement_after_use','received')");
if($sql)
{
echo "<script>alert('Data Request Info Added Succesfully');</script>";
header('location:manage-requests.php');

}
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Admin | Add Data Request</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
<script type="text/javascript">
/*function valid()
{
 if(document.adddoc.npass.value!= document.adddoc.cfpass.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.adddoc.cfpass.focus();
return false;
}
return true;
}*/
</script>


<script>
/*function checkemailAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'emailid='+$("#docemail").val(),
type: "POST",
success:function(data){
$("#email-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}*/
</script>


	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
			<div class="app-content">
				
						<?php include('include/header.php');?>
						
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">User | Add Data Request</h1>
																	</div>
								<ol class="breadcrumb">
									<li>
										<span>User</span>
									</li>
									<li class="active">
										<span>Add Data Request</span>
									</li>
								</ol>
							</div>
						</section>
						<!-- end: PAGE TITLE -->
						<!-- start: BASIC EXAMPLE -->
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-md-12">
									
									<div class="row margin-top-30">
										<div class="col-lg-8 col-md-12">
											<div class="panel panel-white">
												<div class="panel-heading">
													<h5 class="panel-title">Add Data Request</h5>
												</div>
												<div class="panel-body">
												<form role="form" name="adddoc" method="post" onSubmit="return valid();">
									


<div class="form-group">
															<label for="date_request_received">
																Date Of Request
															</label>
					<input type="date" name="date_request_received" class="form-control" value="<?= date('Y-m-d', time()); ?>" readonly>
														</div>


<div class="form-group">
															<label for="requester_first_name">
																 Requester First Name
															</label>
					<input type="text" name="requester_first_name" class="form-control"  placeholder="Capture Requester First Name" required="true"></textarea>
														</div>
<div class="form-group">
															<label for="requester_last_name">
																 Requester Last Name
															</label>
					<input type="text" name="requester_last_name" class="form-control"  placeholder="Enter Requester Surname" required="true">
														</div>
	
<div class="form-group">
									<label for="requester_position">
																 Requester Role/Position
															</label>
					<input type="text" name="requester_position" class="form-control"  placeholder="Enter Requester Position" required="true">
														</div>
<div class="form-group">
															<label for="requester_phone">
																 Requester Phone
															</label>
					<input type="text" name="requester_phone" class="form-control"  placeholder="Enter Requester's Phone Number" required="required">
														</div>
														
<div class="form-group">
															<label for="requester_email">
																Capture Requester's E-mail Address
															</label>
									<input type="text" name="requester_email" class="form-control"  placeholder="Capture Requester's E-mail Address" required="required">
														</div>

<div class="form-group">
															<label for="requester_organization">
																Select Requester Organisation
															</label>
							<select name="requester_organization" class="form-control" required="required">
					<option value="<?php echo htmlentities($data['requester_organization']);?>">
					<?php echo htmlentities($data['requester_organization']);?></option>
<?php $ret=mysqli_query($con,"select * from partners");
while($row=mysqli_fetch_array($ret))
{
?>
																<option value="<?php echo htmlentities($row['partner_name']);?>">
																	<?php echo htmlentities($row['partner_name']);?>
																</option>
																<?php } ?>
																
															</select>
														</div>
														

<div class="form-group">
															<label for="date_data_required">
																Date Data Required
															</label>
					<input type="date" name="date_data_required" class="form-control"  placeholder="yyyy-mm-dd" required="true" min="2021-01-01" max="2030-12-31">
														</div>
														
<div class="form-group">
															<label for="type_of_data_required">
																Type Of Data Required
															</label>
									<input type="text" name="type_of_data_required" class="form-control"  placeholder="What type of data is required" required="required">
														</div>
														
<div class="form-group">
															<label for="intended_use_of_requested_data">
																Intended Use Of Requested Data
															</label>
									<input type="text" name="intended_use_of_requested_data" class="form-control"  placeholder="intended_use_of_requested_data" required="required">
														</div>
														
<div class="form-group">
															<label for="type_of_access_format">
																Capture The Access Format Preferred
															</label>
									<input type="text" name="type_of_access_format" class="form-control"  placeholder="Write the access format preferred" required="required">
														</div>
														
<div class="form-group">
															<label for="data_disposal_arrangement_after_use">
																Data Disposal Arrangement
															</label>
									<input type="text" name="data_disposal_arrangement_after_use" class="form-control"  placeholder="Write the data disposal format" required="required">
														</div>
														

														
													
														
														
														<button type="submit" name="submit" id="submit" class="btn btn-o btn-primary">
															Submit
														</button>
													</form>
												</div>
											</div>
										</div>
											
											</div>
										</div>
									<div class="col-lg-12 col-md-12">
											<div class="panel panel-white">
												
												
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end: BASIC EXAMPLE -->
			
					
					
						
						
					
						<!-- end: SELECT BOXES -->
						
					</div>
				</div>
			</div>
			<!-- start: FOOTER -->
	<?php include('include/footer.php');?>
			<!-- end: FOOTER -->
		
			<!-- start: SETTINGS -->
	<?php include('include/setting.php');?>
			<>
			<!-- end: SETTINGS -->
		</div>
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
		<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
		<script src="vendor/autosize/autosize.min.js"></script>
		<script src="vendor/selectFx/classie.js"></script>
		<script src="vendor/selectFx/selectFx.js"></script>
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CLIP-TWO JAVASCRIPTS -->
		<script src="assets/js/main.js"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="assets/js/form-elements.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
