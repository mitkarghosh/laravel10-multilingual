<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>Admin</title>
  <!-- plugins:css -->
  <link href="{{ asset('css/admin/vendors/iconfonts/font-awesome/css/all.min.css') }}" rel="stylesheet">
  <link href="{{ asset('css/admin/vendors/css/vendor.bundle.base.css') }}" rel="stylesheet">
  <link href="{{ asset('css/admin/vendors/css/vendor.bundle.addons.css') }}" rel="stylesheet">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link href="{{ asset('css/admin/style.css') }}" rel="stylesheet">
  <!-- endinject -->
  <link rel="shortcut icon" href="{{ asset('images/admin/favicon.png') }}" />

  <!-- plugins:js -->
  <script src="{{ asset('js/admin/vendors/vendor.bundle.base.js') }}"></script>
  <script src="{{ asset('js/admin/vendors/vendor.bundle.addons.js') }}"></script>

  {{-- <script src="{{ asset('js/admin/jquery.min.js') }}"></script> --}}
  <script src="{{ asset('js/admin/jquery.validate.min.js') }}"></script>
</head>

<body>
  @include('admin.includes.notification')

  @yield('content')

  <!-- container-scroller -->
  
  <!-- endinject -->
  <!-- inject:js -->
  {{-- <script src="../../js/off-canvas.js"></script>
  <script src="../../js/hoverable-collapse.js"></script>
  <script src="../../js/misc.js"></script>
  <script src="../../js/settings.js"></script>
  <script src="../../js/todolist.js"></script> --}}
  <!-- endinject -->

  <script src="{{ asset('js/admin/development_admin_'.\App::getLocale().'.js') }}"></script>
</body>
</html>
