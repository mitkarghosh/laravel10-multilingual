<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- onpage -->
	<meta name="description" content="">
    <meta name="keywords" content="">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

	<title>Administrator - SM Icecream</title>

	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<link rel="icon" href="favicon.ico" type="image/x-icon">

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	
	<!-- Styles -->
    <link href="{{ asset('css/admin/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/admin/select2.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/admin/fontawesome6.all.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/admin/select2.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/admin/dataTables.bootstrap5.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/admin/fixedColumns.dataTables.min.css') }}" rel="stylesheet">
    <link href="{{ asset('css/admin/plugins.css') }}" rel="stylesheet">
    <link href="{{ asset('css/admin/style-core.css') }}" rel="stylesheet">
    <link href="{{ asset('css/admin/style.css') }}" rel="stylesheet">

    <script src="{{ asset('js/admin/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('js/admin/jquery.validate.min.js') }}"></script>
</head>
<body>
    @include('admin.includes.notification')

    @include('admin.includes.header')
    
	<main class="site-main">
        @yield('content')
	</main>

    <button class="go-to-top"><i class="fa-solid fa-chevron-up"></i></button>	

    <!-- scripts -->
    <script src="{{ asset('js/admin/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('js/admin/development_admin_'.\App::getLocale().'.js') }}"></script>

</body>
</html>