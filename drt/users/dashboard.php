<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>User  | Dashboard</title>
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
						
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">User | Dashboard</h1>
																	</div>
								<ol class="breadcrumb">
									<li>
										<span>User</span>
									</li>
									<li class="active">
										<span>Dashboard</span>
									</li>
								</ol>
							</div>
						</section>
						<!-- end: PAGE TITLE -->
						<!-- start: BASIC EXAMPLE -->
							<div class="container-fluid container-fullw bg-white">
							<div class="row">
								<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x"> 
											<!--<i class="fa fa-square fa-stack-2x text-primary"></i> <i class="fa fa-smile-o fa-stack-1x fa-inverse"></i>-->
											<svg id="Layer_3" enable-background="new 0 0 64 64" height="52" viewBox="0 0 64 64" width="52" xmlns="http://www.w3.org/2000/svg"><path d="m6 18h32v4h-32z" fill="#f4b2b0"/><path d="m35 36-2-6h-21v32h46v-26zm5 15h-3v3h-4v-3h-3v-4h3v-3h4v3h3z" fill="#f4b2b0"/><g fill="#b3404a"><path d="m32 44v2h-2c-.552 0-1 .448-1 1v4c0 .552.448 1 1 1h2v2c0 .552.448 1 1 1h4c.552 0 1-.448 1-1v-2h2c.552 0 1-.448 1-1v-4c0-.552-.448-1-1-1h-2v-2c0-.552-.448-1-1-1h-4c-.552 0-1 .448-1 1zm2 3v-2h2v2c0 .552.448 1 1 1h2v2h-2c-.552 0-1 .448-1 1v2h-2v-2c0-.552-.448-1-1-1h-2v-2h2c.552 0 1-.448 1-1z"/><path d="m62 31h-19v-29c0-.552-.448-1-1-1h-40c-.552 0-1 .448-1 1v52c0 .552.448 1 1 1h9v7c0 .552.448 1 1 1h46 2c1.654 0 3-1.346 3-3v-28c0-.552-.448-1-1-1zm-57-2v2h6v2h-6v2h6v2h-6v2h6v2h-6v2h6v2h-6v2h6v6h-8v-50h38v28h-6.612l-.439-1.316c-.137-.409-.518-.684-.949-.684h-21zm52 32h-44v-30h19.279l1.772 5.316c.136.409.518.684.949.684h22zm4-1c0 .551-.449 1-1 1h-1v-25c0-.552-.448-1-1-1h-22.279l-.667-2h25.946z"/><path d="m18.586 14c.645.645 1.502 1 2.414 1s1.77-.355 2.414-1l2.586-2.586c.645-.644 1-1.502 1-2.414s-.355-1.77-1-2.414l-.586-.586c-1.289-1.29-3.539-1.29-4.828 0l-2.586 2.586c-.645.644-1 1.502-1 2.414s.355 1.77 1 2.414zm4.414-7c.372 0 .737.151 1 .414l.586.586c.263.263.414.628.414 1s-.151.737-.414 1l-.586.586-2.586-2.586.586-.586c.263-.263.628-.414 1-.414zm-3.586 3 .586-.586 2.586 2.586-.586.586c-.526.526-1.474.526-2 0l-.586-.586c-.263-.263-.414-.628-.414-1s.151-.737.414-1z"/><path d="m6 23h32c.552 0 1-.448 1-1v-4c0-.552-.448-1-1-1h-32c-.552 0-1 .448-1 1v4c0 .552.448 1 1 1zm1-4h30v2h-30z"/><path d="m5 25h34v2h-34z"/></g></svg>
											</span>
											
											<h2 class="StepTitle">Manage Data Requests</h2>
											
											<p class="links cl-effect-1">
												<a href="manage-requests.php">
												<?php $result = mysqli_query($con,"SELECT * FROM drequest_tracker ");
$num_rows = mysqli_num_rows($result);
{
?>
											Total Data Requets :<?php echo htmlentities($num_rows);  } ?>		
												</a>
											</p>
										</div>
									</div>
								</div>
								<!--<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x"> <i class="fa fa-square fa-stack-2x text-primary"></i> <i class="fa fa-users fa-stack-1x fa-inverse"></i> </span>
											<h2 class="StepTitle">Manage Users</h2>
										
											<p class="cl-effect-1">
												<a href="manage-users.php">
												<?php $result1 = mysqli_query($con,"SELECT * FROM drequest_tracker ");
$num_rows1 = mysqli_num_rows($result1);
{
?>
											Total Users :<?php echo htmlentities($num_rows1);  } ?>		
												</a>
												
											</p>
										</div>
									</div>
								</div>-->
								<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x">
											<!--<i class="fa fa-square fa-stack-2x text-primary"></i> <i class="fa fa-terminal fa-stack-1x fa-inverse"></i>-->
											<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	                                         viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve">
                                             <polygon style="fill:#76BDF6;" points="368.814,0 143.186,0 143.186,199.593 82.441,199.593 256,303.729 429.559,199.593 
	                                           368.814,199.593 "/>
                                              <path style="fill:#3689C9;" d="M472.949,112.814H368.814v34.712h104.136v225.627H39.051V147.525h104.136v-34.712H39.051
	                                           c-19.17,0-34.712,15.542-34.712,34.712v242.983c0,19.17,15.542,34.712,34.712,34.712h433.898c19.17,0,34.712-15.542,34.712-34.712
	                                           V147.525C507.661,128.356,492.119,112.814,472.949,112.814z"/>
                                              <path style="fill:#FFDDBA;" d="M39.051,373.153h433.898V147.525H368.814v52.068h60.746L256,303.729L82.441,199.593h60.746v-52.068
	                                           H39.051V373.153z"/>
                                                <g>
                                            	<path style="fill:#3689C9;" d="M4.339,477.288C4.339,506.047,27.648,512,56.407,512h399.186c28.759,0,52.068-5.953,52.068-34.712
	                                        	H4.339z"/>
                                            	<polygon style="fill:#3689C9;" points="169.22,477.288 342.78,477.288 316.746,425.22 195.254,425.22 	"/>
                                                </g>
                                               <path style="fill:#FFDDBA;" d="M308.068,86.78l-43.39-26.034C256,86.78,203.932,86.78,203.932,86.78
	                                           c0,28.759,33.662,52.068,52.068,52.068S308.068,115.538,308.068,86.78z"/>
                                               <path style="fill:#854F09;" d="M264.678,60.746l43.39,26.034c0-28.759-8.678-60.746-52.068-60.746s-52.068,31.987-52.068,60.746
                                               	C203.932,86.78,256,86.78,264.678,60.746z"/>
                                                <g>
                                            	<path style="fill:#3689C9;" d="M186.576,208.271v-34.712c0-19.17,15.542-34.712,34.712-34.712h69.424
		                                         c19.17,0,34.712,15.542,34.712,34.712v34.712H186.576z"/>
	                                             <polygon style="fill:#3689C9;" points="442.576,316.746 420.881,316.746 420.881,295.051 412.203,295.051 412.203,316.746 
		                                         390.508,316.746 390.508,325.424 412.203,325.424 412.203,347.119 420.881,347.119 420.881,325.424 442.576,325.424 	"/>
                                                </g>
                                                <g style="opacity:0.14;">
	                                            <polygon points="316.746,425.22 195.254,425.22 190.915,433.898 195.254,433.898 316.746,433.898 321.085,433.898 	"/>
                                                </g>
                                                <g style="opacity:0.14;">
	                                            <polygon points="256,303.729 111.364,216.949 82.441,216.949 256,321.085 429.559,216.949 400.636,216.949 	"/>
                                                </g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g><g></g></svg>
											   </span>
											    <h2 class="StepTitle"> View Completed Requests</h2>
											
											<p class="links cl-effect-1">
												<a href="manage-requests4.php">
													<!--<a href="search-patient-history.php">-->
												<?php $sql= mysqli_query($con,"SELECT * FROM drequest_tracker where request_status = 'data submitted'");
$num_rows2 = mysqli_num_rows($sql);
{
?>
											Total Records :<?php echo htmlentities($num_rows2);  } ?>	
												</a>
												</a>
											</p>
										</div>
									</div>
								</div>



			<div class="col-sm-4">
									<div class="panel panel-white no-radius text-center">
										<div class="panel-body">
											<span class="fa-stack fa-2x">
											<!--<i class="ti-files fa-1x text-primary"></i> <i class="fa fa-terminal fa-stack-1x fa-inverse">-->
											<svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="plus-square" class="svg-inline--fa fa-plus-square fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path fill="currentColor" d="M400 32H48C21.5 32 0 53.5 0 80v352c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48V80c0-26.5-21.5-48-48-48zm-32 252c0 6.6-5.4 12-12 12h-92v92c0 6.6-5.4 12-12 12h-56c-6.6 0-12-5.4-12-12v-92H92c-6.6 0-12-5.4-12-12v-56c0-6.6 5.4-12 12-12h92v-92c0-6.6 5.4-12 12-12h56c6.6 0 12 5.4 12 12v92h92c6.6 0 12 5.4 12 12v56z"></path></svg>
											</i> </span>
											<h2 class="StepTitle"> Manage Pending Requests</h2>
											
											<p class="links cl-effect-1">
												<a href="manage-requests2.php">
													<!--<a href="manage-patient-admission.php">-->
												<?php 
$sql= mysqli_query($con,"SELECT * FROM drequest_tracker where request_status != 'data submitted'");
$num_rows22 = mysqli_num_rows($sql);
?>
											Total Pending Data Requests :<?php echo htmlentities($num_rows22);   ?>	
												</a>
												</a>
											</p>
										</div>
									</div>
								</div>



							</div>
						</div>
			
					
					
						
						
					
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
