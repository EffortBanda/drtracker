<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();
$did=intval($_GET['id']);// get id
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
$request_status=$_POST['request_status'];
$sql=mysqli_query($con,"update drequest_tracker set date_request_received='$date_request_received', requester_first_name='$requester_first_name',requester_last_name='$requester_last_name',requester_position='$requester_position',requester_phone='$requester_phone',requester_email='$requester_email',requester_organization='$requester_organization',type_of_data_required='$type_of_data_required',intended_use_of_requested_data='$intended_use_of_requested_data',type_of_access_format='$type_of_access_format',data_disposal_arrangement_after_use='$data_disposal_arrangement_after_use',request_status='$request_status' where request_id='$did'");
if($sql)
{
$msg="Data request details updated Successfully";
header('location:manage-requests2.php');
}
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Admin | Update data request status</title>
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


	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
			<div class="app-content">
				
						<?php include('include/header.php');?>
						<!-- start: MENU TOGGLER FOR MOBILE DEVICES -->
					
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">User | Update data request status</h1>
																	</div>
								<ol class="breadcrumb">
									<li>
										<span>User</span>
									</li>
									<li class="active">
										<span>Edit Data request Details</span>
									</li>
								</ol>
							</div>
						</section>
						<!-- end: PAGE TITLE -->
						<!-- start: BASIC EXAMPLE -->
						<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-md-12">
									<h5 style="color: green; font-size:18px; ">
<?php if($msg) { echo htmlentities($msg);}?> </h5>
									<div class="row margin-top-30">
										<div class="col-lg-8 col-md-12">
											<div class="panel panel-white">
												<div class="panel-heading">
													<h5 class="panel-title">Edit Requester Info</h5>
												</div>
												<div class="panel-body">
									<?php $sql=mysqli_query($con,"select * from drequest_tracker where request_id='$did' and requester_organization != 'EGPAF'");
while($data=mysqli_fetch_array($sql))
{
?>
<h4><?php echo htmlentities($data['requester_first_name']);?>'s Data Request</h4>
<p><b>Which was received on: </b><?php echo htmlentities($data['date_request_received']);?></p>
<?php if($data['requester_organization']){?>
<p><b>Requester's Organisation: </b><?php echo htmlentities($data['requester_organization']);?></p>
<?php } ?>
<hr />
													<form role="form" name="adddoc" method="post" onSubmit="return valid();">
													
<div class="form-group">
															<label for="date_request_received">
																 Date Request Received
															</label>
	<input type="date" name="date_request_received" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['date_request_received']);?>" >
														</div>
														

<div class="form-group">
															<label for="requester_first_name">
																 Requester's First Name
															</label>
	<input type="text" name="requester_first_name" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['requester_first_name']);?>" >
														</div>
														
<div class="form-group">
															<label for="requester_last_name">
																 Requester Last Name
															</label>
	<input type="text" name="requester_last_name" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['requester_last_name']);?>" >
														</div>
														
<div class="form-group">
															<label for="requester_position">
																 Requester's Position
															</label>
	<input type="text" name="requester_position" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['requester_position']);?>" >
														</div>
														
<div class="form-group">
															<label for="requester_phone">
																 Requester's Phone
															</label>
	<input type="text" name="requester_phone" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['requester_phone']);?>" >
														</div>
														
														
<div class="form-group">
															<label for="requester_email">
																 Requester's E-mail
															</label>
	<input type="text" name="requester_email" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['requester_email']);?>" >
														</div>
														
														
<div class="form-group">
															<label for="requester_organization">
																 Requester's Organization
															</label>
	<input type="text" name="requester_organization" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['requester_organization']);?>" >
														</div>
														
														
<div class="form-group">
															<label for="date_data_required">
																 Date data is required
															</label>
	<input type="date" name="date_data_required" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['date_data_required']);?>" >
														</div>
														
														
<div class="form-group">
															<label for="type_of_data_required">
																 Type of data required
															</label>
	<input type="text" name="type_of_data_required" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['type_of_data_required']);?>" >
														</div>
														
														
<div class="form-group">
															<label for="intended_use_of_requested_data">
																 Intended Use of Requested Data
															</label>
	<input type="text" name="intended_use_of_requested_data" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['intended_use_of_requested_data']);?>" >
														</div>
														
														
<div class="form-group">
															<label for="type_of_access_format">
																 Type of Access Format
															</label>
	<input type="text" name="type_of_access_format" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['type_of_access_format']);?>" >
														</div>
														
														
<div class="form-group">
															<label for="data_disposal_arrangement_after_use">
																 Data disposal arrangement
															</label>
	<input type="text" name="data_disposal_arrangement_after_use" class="form-control" readonly="readonly" value="<?php echo htmlentities($data['data_disposal_arrangement_after_use']);?>" >
														</div>
<div class="form-group">
															<label for="request_status">
																Request Status
															</label>
							<select name="request_status" class="form-control" required="required">
					<option value="<?php echo htmlentities($data['request_status']);?>">
					<?php echo htmlentities($data['request_status']);?></option>
<?php $ret=mysqli_query($con,"select * from request_status where status !='data submitted'");
while($row=mysqli_fetch_array($ret))
{
?>
																<option value="<?php echo htmlentities($row['status']);?>">
																	<?php echo htmlentities($row['status']);?>
																</option>
																<?php } ?>
																
															</select>
														</div>






														
														<?php } ?>
														
														
														<button type="submit" name="submit" class="btn btn-o btn-primary">
															Update
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
