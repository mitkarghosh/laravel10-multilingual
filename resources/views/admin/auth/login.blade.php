@extends('admin.layouts.login', ['title' => $page_title])

@section('content')
	<div class="login-sec">
		<div class="card login-form">
			<div class="card-body">
				<h3 class="card-title text-center">Log in</h3>
				<div class="card-text">
					{!! Form::open(array('name'=>'adminLoginForm1','route' =>  ['admin.'.\App::getLocale().'.login'], 'id' => 'adminLoginForm1')) !!}
						<div class="form-group">
							<label>{{ __('admin.label_email') }}<small class="required">*</small></label>
							{{ Form::text('email', null, array('required','class' => 'form-control','id' => 'email')) }}
						</div>
						<div class="form-group">
							<label>{{ __('admin.label_password') }}<small class="required">*</small></label>
							{{ Form::password('password', array('required','class' => 'form-control','id' => 'password')) }}
						</div>
						<button type="submit" class="btn btn-primary d-block me-auto ms-auto">
							<i class="fa-solid fa-right-to-bracket"></i> {{ __('admin.btn_login') }}
						</button>
						
						<div class="form-group">
							<a href="{{ \URL::route('admin.'.\App::getLocale().'.forgot-password') }}" style="float:right;font-size:14px;">{{ __('admin.label_forgot_password') }}</a>
						</div>
						
					{!! Form::close() !!}
				</div>
			</div>
		</div>
	</div>

@endsection