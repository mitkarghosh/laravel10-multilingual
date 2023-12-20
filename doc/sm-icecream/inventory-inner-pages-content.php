	<main class="site-main">

		<section class="analysis-season-list-sec category-add-sec py-4">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Add <?php echo "$pgTitle";?></h4>
								<form method="POST" action="#">
									<div class="form-body">
										<div class="column-gap-2 d-flex flex-wrap">
											<div class="form-group flex-grow-1">
												<label class="text-dark font-bold">Title</label>
												<input id="title" placeholder="" class="form-control" required="" name="title" type="text">
											</div>
											<div class="align-items-center d-flex flex-shrink-0 form-actions gap-2 justify-content-center mt-4">
												<button type="submit" class="btn btn-primary btn-rounded shadow-md">
													Submit
												</button>
												<!-- <button type="submit" class="btn btn-secondary btn-rounded shadow-md">
													Submit
												</button>-->
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="col-md-7">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title mb-3"><?php echo "$pgTitle";?> List</h4>
								<div class="category-list-table">
									<div class="d-flex flex-wrap gap-2 justify-content-between pb-3">
										<label class="d-flex gap-2">
											<span>Show </span>
											<select class="form-select form-select-sm w-auto">
												<option value="10">10</option>
												<option value="25">25</option>
												<option value="50">50</option>
												<option value="100">100</option>
											</select>
											<span>entries</span>
										</label>
										<label class="d-flex gap-2">Search:
											<input type="search" class="form-control form-control-sm w-auto">
										</label>
									</div>
									<table id="categoryList" class="table table-striped" style="width:100%">
										<thead>
					            <tr>
				                <th>ID</th>
				                <th>Title</th>
				                <th class="statusColumn">Status</th>
				                <th class="actionColumn">Action</th>
				              </tr>
				            </thead>
				            <tbody>
				              <tr>
				              	<td>1</td>
				              	<td><?php echo "$pgTitle";?> One</td>
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
				              	<td>2</td>
				              	<td><?php echo "$pgTitle";?> Two</td>
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
				              	<td>3</td>
				              	<td><?php echo "$pgTitle";?> Two</td>
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
				              	<td>4</td>
				              	<td><?php echo "$pgTitle";?> Two</td>
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
					        <div class="d-flex flex-wrap gap-2 justify-content-between pt-3">
										<div><small>Showing 1 to 4 of 4 entries</small></div>
											<div>
												<nav>
												  <ul class="pagination pagination-sm mb-0">
												    <li class="page-item">
												      <a class="page-link" href="#">Previous</a>
												    </li>
												    <li class="page-item"><a class="page-link" href="#">1</a></li>
												    <li class="page-item active" aria-current="page">
												      <span class="page-link">2</span>
												    </li>
												    <li class="page-item"><a class="page-link" href="#">3</a></li>
												    <li class="page-item">
												      <a class="page-link" href="#">Next</a>
												    </li>
												  </ul>
												</nav>
											</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
