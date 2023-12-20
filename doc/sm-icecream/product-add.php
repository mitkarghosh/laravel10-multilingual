<?php 
$pg = "product-add-pg";
$gPpg = "inventory-module-pg";
$pPg = "product-pg";
;?>
<?php include_once ('header.php');?>

	<main class="site-main">

		<section class="analysis-season-list-sec product-details-sec py-4">
			<div class="container">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">Add Product</h4>
						<form>
							<div class="form-body mt-4-5">
								<div class="row row-gap-3">
									<div class="col-md-6">
										<div class="d-flex flex-column row-gap-3">
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Product ID</label>
												<input placeholder="" class="form-control" type="text">
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Group</label>
												<select class="form-control">
													<option></option>
													<option>1</option>
													<option>2</option>
												</select>
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Name*</label>
												<input placeholder="" class="form-control" type="text" required="required">
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Category</label>
												<select class="form-control">
													<option></option>
													<option>1</option>
													<option>2</option>
												</select>
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Variety</label>
												<input placeholder="" class="form-control" type="text">
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Quantity Per Unit*</label>
												<input placeholder="" class="form-control" type="text" required="required">
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">BrandName</label>
												<input placeholder="" class="form-control" type="text">
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Company</label>
												<input placeholder="" class="form-control" type="text">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="d-flex flex-column row-gap-3">
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Standard Cost</label>
												<input placeholder="" class="form-control" type="text" value="$0.00">
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">List Price</label>
												<input placeholder="" class="form-control" type="text" value="$0.00">
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Reorder Level*</label>
												<input placeholder="" class="form-control" type="text" required="required">
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Target Level*</label>
												<input placeholder="" class="form-control" type="text" required="required">
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Default Reorder Quantity*</label>
												<input placeholder="" class="form-control" type="text" required="required">
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">Discontinued</label>
												<input class="form-check-input ms-1" type="checkbox">
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="d-flex flex-column row-gap-3">
											<div class="form-group">
												<label class="text-dark font-bold mb-2">WS Price - Focus</label>
												<div class="row g-3">
													<div class="col-8">
														<input placeholder="" class="form-control" type="text" value="€0.00">
													</div>
													<div class="col-4">
														<input placeholder="" class="form-control" type="text">
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">WS Price/PC: - Focus</label>
												<div class="row g-3">
													<div class="col-8">
														<input placeholder="" class="form-control" type="text" value="€0.00">
													</div>
													<div class="col-4">
														<input placeholder="" class="form-control" type="text">
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">MF Price:- Focus</label>
												<div class="row g-3">
													<div class="col-8">
														<input placeholder="" class="form-control" type="text" value="€0.00">
													</div>
													<div class="col-4">
														<input placeholder="" class="form-control" type="text">
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">MF Price/Pc: - Focus</label>
												<div class="row g-3">
													<div class="col-8">
														<input placeholder="" class="form-control" type="text" value="€0.00">
													</div>
													<div class="col-4">
														<input placeholder="" class="form-control" type="text">
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">GST%</label>
												<div class="row g-3">
													<div class="col-8">
														<input placeholder="" class="form-control" type="text" value="€0.00">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="d-flex flex-column row-gap-3">
											<div class="form-group">
												<label class="text-dark font-bold mb-2">NonFocus WS Price</label>
												<div class="row g-3">
													<div class="col-8">
														<input placeholder="" class="form-control" type="text" value="€0.00">
													</div>
													<div class="col-4">
														<input placeholder="" class="form-control" type="text">
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">NonFocus WS Price/PC</label>
												<div class="row g-3">
													<div class="col-8">
														<input placeholder="" class="form-control" type="text" value="€0.00">
													</div>
													<div class="col-4">
														<input placeholder="" class="form-control" type="text">
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">NonFocus MF Price</label>
												<div class="row g-3">
													<div class="col-8">
														<input placeholder="" class="form-control" type="text" value="€0.00">
													</div>
													<div class="col-4">
														<input placeholder="" class="form-control" type="text">
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="text-dark font-bold mb-2">NonFocus MF Price/Pc</label>
												<div class="row g-3">
													<div class="col-8">
														<input placeholder="" class="form-control" type="text" value="€0.00">
													</div>
													<div class="col-4">
														<input placeholder="" class="form-control" type="text">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="analysis-season-btn-wrap">
								<div class="form-actions mt-4 d-flex justify-content-center gap-2">
										<a class="btn btn-secondary btn-rounded shadow-md" href="#">
											<i class="ti ti-arrow-back-up"></i> Cancel
										</a>
										<button type="submit" class="btn btn-primary btn-rounded shadow-md pr-3 pl-3">
											<i class="ti ti-device-floppy" aria-hidden="true"></i> Submit
										</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

	</main>





<?php include_once ('footer.php');?>