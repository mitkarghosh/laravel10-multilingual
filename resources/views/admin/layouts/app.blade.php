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
  <script src="{{ asset('js/admin/jquery.validate.min.js') }}"></script>
</head>

<body class="horizontal-menu">
  @include('admin.includes.notification')

  <div class="container-scroller">
    @include('admin.includes.header')
    
    @yield('content')
  </div>
  <!-- container-scroller -->
  
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="{{ asset('js/admin/vendors/off-canvas.js') }}"></script>
  <script src="{{ asset('js/admin/vendors/hoverable-collapse.js') }}"></script>
  <script src="{{ asset('js/admin/vendors/misc.js') }}"></script>
  <script src="{{ asset('js/admin/vendors/settings.js') }}"></script>
  <script src="{{ asset('js/admin/vendors/todolist.js') }}"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="{{ asset('js/admin/vendors/dashboard.js') }}"></script>
  <!-- End custom js for this page-->

  <script src="{{ asset('js/admin/development_admin_'.\App::getLocale().'.js') }}"></script>
</body>
</html>