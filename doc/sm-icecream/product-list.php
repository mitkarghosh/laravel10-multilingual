<?php 
$pg = "product-list-pg";
$gPpg = "inventory-module-pg";
$pPg = "product-pg";
;?>
<?php include_once ('header.php');?>

	<main class="site-main">

			<!-- <section class="analysis-season-list-sec analysis-season-filter-sec  pt-4">
				<div class="container-fluid">
					<div class="card">
						<div class="card-body">
							<h4 class="card-title">Filter</h4>
							<div class="product-filter-table">
								<div class="row g-4">
									<div class="col-lg col-md-6">
										<select class="analysisSeasonSelect2" name="state">
										  <option>Select Category</option>
										  <option>cmc</option>
										  <option>Box</option>
										</select>
									</div>
									<div class="col-lg col-md-6">
										<select class="analysisSeasonSelect2" name="state">
										  <option>Select Group</option>
										  <option>Oil</option>
										  <option>Chips</option>
										</select>
									</div>
									<div class="col-lg col-md-6">
										<select class="analysisSeasonSelect2" name="state">
										  <option>Select Variety</option>
										  <option>Cup</option>
										  <option>Cone</option>
										</select>
									</div>
									<div class="col-lg col-md-6">
										<select class="analysisSeasonSelect2" name="state">
										  <option>Select BrandName</option>
										  <option>Colgate</option>
										  <option>Coolfi</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section> -->

				
		<section class=" analysis-season-filter-sec pt-4">
			<div class="container">
				<div class="product-filter-table">
					<div class="row row-gap-2">
						<div class="col-lg col-md-6">
							<select class="analysisSeasonSelect2" name="state">
							  <option>Select Category</option>
							  <option>cmc</option>
							  <option>Box</option>
							</select>
						</div>
						<div class="col-lg col-md-6">
							<select class="analysisSeasonSelect2" name="state">
							  <option>Select Group</option>
							  <option>Oil</option>
							  <option>Chips</option>
							</select>
						</div>
						<div class="col-lg col-md-6">
							<select class="analysisSeasonSelect2" name="state">
							  <option>Select Variety</option>
							  <option>Cup</option>
							  <option>Cone</option>
							</select>
						</div>
						<div class="col-lg col-md-6">
							<select class="analysisSeasonSelect2" name="state">
							  <option>Select BrandName</option>
							  <option>Colgate</option>
							  <option>Coolfi</option>
							</select>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="analysis-season-list-sec py-4">
			<div class="container-fluid">
				<div class="card p-2">
					<div class="card-body">
						<h4 class="card-title">Product List</h4>

						<div class="product-list-table">
							<table id="productList" class="table table-striped" style="width:100%">
				        <thead>
				            <tr>
				                <th>ID</th>
				                <th>Product Name</th>
				                <th>Group</th>
				                <th>Category</th>
				                <th>SubCategory</th>
				                <th>Quantity Per Unit</th>
				                <th>BrandName</th>
				                <th>Company</th>
				                <th>Description</th>
				                <th>Standard Cost</th>
				                <th>List Price</th>
				                <th>Reorder Level</th>
				                <th>Target Level</th>
				                <th>Product Code</th>
				                <th>Discontinue</th>
				                <th>Minimum Reorder Quantity</th>
				                <th><i class="ti ti-paperclip"></i></th>
				                <th>WS Price</th>
				                <th>WS Price/PC</th>
				                <th>MF Price</th>
				                <th>MF Price/Pc</th>
				                <th>GST%</th>
				                <th>SPGSTComp</th>
				                <th>NonFocus WS Price</th>
				                <th>NonFocus WS Price/PC</th>
				                <th>NonFocus MF Price</th>
				                <th>NonFocus MF Price/PC</th>
				                <th>B Category Price</th>
				                <th>B Category Price/PC</th>
				                <th>Click to add</th>
				                <th>Status</th>
				                <th class="action">Action</th>
				            </tr>
				        </thead>
				        <tbody>
				            <tr>
				                <td>100</td>
				                <td>Rolled Sugar Cone</td>
				                <td>Rolled Cone</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>25 pieces x4 packet X 6 Box=600 pieces</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹0.00</td>
				                <td>₹0.00</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td><input type="checkbox" class="form-check-input" ></td>
				                <td>&nbsp;</td>
				                <td><i class="ti ti-paperclip"></i>(0)</td>
				                <td>₹840.00</td>
				                <td>₹1.40</td>
				                <td>₹990.00</td>
				                <td>₹1.65</td>
				                <td>18</td>
				                <td>4</td>
				                <td>₹870.00</td>
				                <td>₹1.45</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹900.00</td>
				                <td>₹1.50</td>
				                <td>&nbsp;</td>
				              	<td>
				              		<a href="#">
					              		<span class="badge badge-pill badge-success">Active</span>
					              	</a>
					              </td>
				              	<td>
				              		<div class="d-flex gap-2">
				              			<a href="#" class="btn-edit" data-bs-toggle="tooltip" data-bs-title="Edit"><i class="ti ti-edit"></i></a>
				              			<a href="#" class="btn-edit btn-delete" data-bs-toggle="tooltip" data-bs-title="Delete"><i class="ti ti-trash"></i></a>
				              		</div>
					              </td>
				            </tr>
				            <tr>
				                <td>101</td>
				                <td>Rolled Sugar Cone</td>
				                <td>Sweet Cone</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>25 pieces x4 packet X 6 Box=600 pieces</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹0.00</td>
				                <td>₹0.00</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td><input type="checkbox" class="form-check-input" ></td>
				                <td>&nbsp;</td>
				                <td><i class="ti ti-paperclip"></i>(0)</td>
				                <td>₹840.00</td>
				                <td>₹1.40</td>
				                <td>₹990.00</td>
				                <td>₹1.65</td>
				                <td>18</td>
				                <td>4</td>
				                <td>₹870.00</td>
				                <td>₹1.45</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹900.00</td>
				                <td>₹1.50</td>
				                <td>&nbsp;</td>
				              	<td>
				              		<a href="#">
					              		<span class="badge badge-pill badge-success">Active</span>
					              	</a>
					              </td>
				              	<td>
				              		<div class="d-flex gap-2">
				              			<a href="#" class="btn-edit" data-bs-toggle="tooltip" data-bs-title="Edit"><i class="ti ti-edit"></i></a>
				              			<a href="#" class="btn-edit btn-delete" data-bs-toggle="tooltip" data-bs-title="Delete"><i class="ti ti-trash"></i></a>
				              		</div>
					              </td>
				            </tr>
				            <tr>
				                <td>102</td>
				                <td>Rolled Sugar Cone</td>
				                <td>Mafer Cone</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>25 pieces x4 packet X 6 Box=600 pieces</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹0.00</td>
				                <td>₹0.00</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td><input type="checkbox" class="form-check-input" ></td>
				                <td>&nbsp;</td>
				                <td><i class="ti ti-paperclip"></i>(0)</td>
				                <td>₹840.00</td>
				                <td>₹1.40</td>
				                <td>₹990.00</td>
				                <td>₹1.65</td>
				                <td>18</td>
				                <td>4</td>
				                <td>₹870.00</td>
				                <td>₹1.45</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹900.00</td>
				                <td>₹1.50</td>
				                <td>&nbsp;</td>
				              	<td>
				              		<a href="#">
					              		<span class="badge badge-pill badge-success">Active</span>
					              	</a>
					              </td>
				              	<td>
				              		<div class="d-flex gap-2">
				              			<a href="#" class="btn-edit" data-bs-toggle="tooltip" data-bs-title="Edit"><i class="ti ti-edit"></i></a>
				              			<a href="#" class="btn-edit btn-delete" data-bs-toggle="tooltip" data-bs-title="Delete"><i class="ti ti-trash"></i></a>
				              		</div>
					              </td>
				            </tr>
				            <tr>
				                <td>103</td>
				                <td>Rolled Sugar Cone</td>
				                <td>China Stick</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>25 pieces x4 packet X 6 Box=600 pieces</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹0.00</td>
				                <td>₹0.00</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td><input type="checkbox" class="form-check-input" ></td>
				                <td>&nbsp;</td>
				                <td><i class="ti ti-paperclip"></i>(0)</td>
				                <td>₹840.00</td>
				                <td>₹1.40</td>
				                <td>₹990.00</td>
				                <td>₹1.65</td>
				                <td>18</td>
				                <td>4</td>
				                <td>₹870.00</td>
				                <td>₹1.45</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹900.00</td>
				                <td>₹1.50</td>
				                <td>&nbsp;</td>
				              	<td>
				              		<a href="#">
					              		<span class="badge badge-pill badge-success">Active</span>
					              	</a>
					              </td>
				              	<td>
				              		<div class="d-flex gap-2">
				              			<a href="#" class="btn-edit" data-bs-toggle="tooltip" data-bs-title="Edit"><i class="ti ti-edit"></i></a>
				              			<a href="#" class="btn-edit btn-delete" data-bs-toggle="tooltip" data-bs-title="Delete"><i class="ti ti-trash"></i></a>
				              		</div>
					              </td>
				            </tr>
				            <tr>
				                <td>104</td>
				                <td>Rolled Sugar Cone</td>
				                <td>Paper Lid</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>25 pieces x4 packet X 6 Box=600 pieces</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹0.00</td>
				                <td>₹0.00</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td><input type="checkbox" class="form-check-input" ></td>
				                <td>&nbsp;</td>
				                <td><i class="ti ti-paperclip"></i>(0)</td>
				                <td>₹840.00</td>
				                <td>₹1.40</td>
				                <td>₹990.00</td>
				                <td>₹1.65</td>
				                <td>18</td>
				                <td>4</td>
				                <td>₹870.00</td>
				                <td>₹1.45</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹900.00</td>
				                <td>₹1.50</td>
				                <td>&nbsp;</td>
				              	<td>
				              		<a href="#">
					              		<span class="badge badge-pill badge-success">Active</span>
					              	</a>
					              </td>
				              	<td>
				              		<div class="d-flex gap-2">
				              			<a href="#" class="btn-edit" data-bs-toggle="tooltip" data-bs-title="Edit"><i class="ti ti-edit"></i></a>
				              			<a href="#" class="btn-edit btn-delete" data-bs-toggle="tooltip" data-bs-title="Delete"><i class="ti ti-trash"></i></a>
				              		</div>
					              </td>
				            </tr>
				        
				            <tr>
				                <td>105</td>
				                <td>Rolled Sugar Cone</td>
				                <td>Rolled Cone</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>25 pieces x4 packet X 6 Box=600 pieces</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹0.00</td>
				                <td>₹0.00</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td><input type="checkbox" class="form-check-input" ></td>
				                <td>&nbsp;</td>
				                <td><i class="ti ti-paperclip"></i>(0)</td>
				                <td>₹840.00</td>
				                <td>₹1.40</td>
				                <td>₹990.00</td>
				                <td>₹1.65</td>
				                <td>18</td>
				                <td>4</td>
				                <td>₹870.00</td>
				                <td>₹1.45</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹900.00</td>
				                <td>₹1.50</td>
				                <td>&nbsp;</td>
				              	<td>
				              		<a href="#">
					              		<span class="badge badge-pill badge-success">Active</span>
					              	</a>
					              </td>
				              	<td>
				              		<div class="d-flex gap-2">
				              			<a href="#" class="btn-edit" data-bs-toggle="tooltip" data-bs-title="Edit"><i class="ti ti-edit"></i></a>
				              			<a href="#" class="btn-edit btn-delete" data-bs-toggle="tooltip" data-bs-title="Delete"><i class="ti ti-trash"></i></a>
				              		</div>
					              </td>
				            </tr>
				            <tr>
				                <td>106</td>
				                <td>Rolled Sugar Cone</td>
				                <td>Sweet Cone</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>25 pieces x4 packet X 6 Box=600 pieces</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹0.00</td>
				                <td>₹0.00</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td><input type="checkbox" class="form-check-input" ></td>
				                <td>&nbsp;</td>
				                <td><i class="ti ti-paperclip"></i>(0)</td>
				                <td>₹840.00</td>
				                <td>₹1.40</td>
				                <td>₹990.00</td>
				                <td>₹1.65</td>
				                <td>18</td>
				                <td>4</td>
				                <td>₹870.00</td>
				                <td>₹1.45</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹900.00</td>
				                <td>₹1.50</td>
				                <td>&nbsp;</td>
				              	<td>
				              		<a href="#">
					              		<span class="badge badge-pill badge-success">Active</span>
					              	</a>
					              </td>
				              	<td>
				              		<div class="d-flex gap-2">
				              			<a href="#" class="btn-edit" data-bs-toggle="tooltip" data-bs-title="Edit"><i class="ti ti-edit"></i></a>
				              			<a href="#" class="btn-edit btn-delete" data-bs-toggle="tooltip" data-bs-title="Delete"><i class="ti ti-trash"></i></a>
				              		</div>
					              </td>
				            </tr>
				            <tr>
				                <td>107</td>
				                <td>Rolled Sugar Cone</td>
				                <td>Mafer Cone</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>25 pieces x4 packet X 6 Box=600 pieces</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹0.00</td>
				                <td>₹0.00</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td><input type="checkbox" class="form-check-input" ></td>
				                <td>&nbsp;</td>
				                <td><i class="ti ti-paperclip"></i>(0)</td>
				                <td>₹840.00</td>
				                <td>₹1.40</td>
				                <td>₹990.00</td>
				                <td>₹1.65</td>
				                <td>18</td>
				                <td>4</td>
				                <td>₹870.00</td>
				                <td>₹1.45</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹900.00</td>
				                <td>₹1.50</td>
				                <td>&nbsp;</td>
				              	<td>
				              		<a href="#">
					              		<span class="badge badge-pill badge-success">Active</span>
					              	</a>
					              </td>
				              	<td>
				              		<div class="d-flex gap-2">
				              			<a href="#" class="btn-edit" data-bs-toggle="tooltip" data-bs-title="Edit"><i class="ti ti-edit"></i></a>
				              			<a href="#" class="btn-edit btn-delete" data-bs-toggle="tooltip" data-bs-title="Delete"><i class="ti ti-trash"></i></a>
				              		</div>
					              </td>
				            </tr>
				            <tr>
				                <td>108</td>
				                <td>Rolled Sugar Cone</td>
				                <td>China Stick</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>25 pieces x4 packet X 6 Box=600 pieces</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹0.00</td>
				                <td>₹0.00</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td><input type="checkbox" class="form-check-input" ></td>
				                <td>&nbsp;</td>
				                <td><i class="ti ti-paperclip"></i>(0)</td>
				                <td>₹840.00</td>
				                <td>₹1.40</td>
				                <td>₹990.00</td>
				                <td>₹1.65</td>
				                <td>18</td>
				                <td>4</td>
				                <td>₹870.00</td>
				                <td>₹1.45</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹900.00</td>
				                <td>₹1.50</td>
				                <td>&nbsp;</td>
				              	<td>
				              		<a href="#">
					              		<span class="badge badge-pill badge-success">Active</span>
					              	</a>
					              </td>
				              	<td>
				              		<div class="d-flex gap-2">
				              			<a href="#" class="btn-edit" data-bs-toggle="tooltip" data-bs-title="Edit"><i class="ti ti-edit"></i></a>
				              			<a href="#" class="btn-edit btn-delete" data-bs-toggle="tooltip" data-bs-title="Delete"><i class="ti ti-trash"></i></a>
				              		</div>
					              </td>
				            </tr>
				            <tr>
				                <td>109</td>
				                <td>Rolled Sugar Cone</td>
				                <td>Paper Lid</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>25 pieces x4 packet X 6 Box=600 pieces</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹0.00</td>
				                <td>₹0.00</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td><input type="checkbox" class="form-check-input" ></td>
				                <td>&nbsp;</td>
				                <td><i class="ti ti-paperclip"></i>(0)</td>
				                <td>₹840.00</td>
				                <td>₹1.40</td>
				                <td>₹990.00</td>
				                <td>₹1.65</td>
				                <td>18</td>
				                <td>4</td>
				                <td>₹870.00</td>
				                <td>₹1.45</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹900.00</td>
				                <td>₹1.50</td>
				                <td>&nbsp;</td>
				              	<td>
				              		<a href="#">
					              		<span class="badge badge-pill badge-success">Active</span>
					              	</a>
					              </td>
				              	<td>
				              		<div class="d-flex gap-2">
				              			<a href="#" class="btn-edit" data-bs-toggle="tooltip" data-bs-title="Edit"><i class="ti ti-edit"></i></a>
				              			<a href="#" class="btn-edit btn-delete" data-bs-toggle="tooltip" data-bs-title="Delete"><i class="ti ti-trash"></i></a>
				              		</div>
					              </td>
				            </tr>
				            <tr>
				                <td>110</td>
				                <td>Rolled Sugar Cone</td>
				                <td>Paper Lid</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>25 pieces x4 packet X 6 Box=600 pieces</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹0.00</td>
				                <td>₹0.00</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td><input type="checkbox" class="form-check-input" ></td>
				                <td>&nbsp;</td>
				                <td><i class="ti ti-paperclip"></i>(0)</td>
				                <td>₹840.00</td>
				                <td>₹1.40</td>
				                <td>₹990.00</td>
				                <td>₹1.65</td>
				                <td>18</td>
				                <td>4</td>
				                <td>₹870.00</td>
				                <td>₹1.45</td>
				                <td>&nbsp;</td>
				                <td>&nbsp;</td>
				                <td>₹900.00</td>
				                <td>₹1.50</td>
				                <td>&nbsp;</td>
				              	<td>
				              		<a href="#">
					              		<span class="badge badge-pill badge-success">Active</span>
					              	</a>
					              </td>
				              	<td>
				              		<div class="d-flex gap-2">
				              			<a href="#" class="btn-edit" data-bs-toggle="tooltip" data-bs-title="Edit"><i class="ti ti-edit"></i></a>
				              			<a href="#" class="btn-edit btn-delete" data-bs-toggle="tooltip" data-bs-title="Delete"><i class="ti ti-trash"></i></a>
				              		</div>
					              </td>
				            </tr>
				        </tbody>
					    </table>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>





<?php include_once ('footer.php');?>