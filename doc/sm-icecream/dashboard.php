<?php $pg = "dashboard-pg" ;?>
<?php include_once ('header.php');?>



	<main class="site-main">
	
		<section class="dsbrd py-5">
			<div class="container">
				<div class="dsbrd-hd text-center mb-5">
					<h1>Welcome To SM Icecream Software</h1>
				</div>
				<div class="row g-4 justify-content-center">
					<div class="col-lg-3">
						<div class="card text-center">
							<div class="dsbrd-card-hover">
								<a href="product-list.php"><i class="ti ti-list"></i> List</a>
								<a href="product-add.php"><i class="ti ti-plus"></i> Add</a>
							</div>
							<div class="card-body">
								<div class="dsbrd-icn">
									<i class="ti ti-box"></i>
								</div>
								<h5 class="card-title"> Product</h5>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="card text-center">
							<div class="dsbrd-card-hover">
								<a href="category.php"><i class="ti ti-list"></i> View</a>
							</div>
							<div class="card-body">
								<div class="dsbrd-icn">
									<i class="ti ti-category"></i>
								</div>
								<h5 class="card-title"> Category</h5>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="card text-center">
							<div class="dsbrd-card-hover">
								<a href="group.php"><i class="ti ti-list"></i> View</a>
							</div>
							<div class="card-body">
								<div class="dsbrd-icn">
									<i class="ti ti-packages"></i>
								</div>
								<h5 class="card-title"> Group</h5>
							</div>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="card text-center">
							<div class="dsbrd-card-hover">
								<a href="variety.php"><i class="ti ti-list"></i> View</a>
							</div>
							<div class="card-body">
								<div class="dsbrd-icn">
									<i class="ti ti-triangle-square-circle"></i>
								</div>
								<h5 class="card-title"> Variety</h5>
							</div>
						</div>
					</div>


				</div>
			</div>
		</section>

	</main>


	<?php include_once ('footer.php');?>