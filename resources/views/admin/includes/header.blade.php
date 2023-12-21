<nav class="navbar horizontal-layout-navbar fixed-top navbar-expand-lg">
  <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-start">
    <a class="navbar-brand brand-logo" href="../../index-2.html"><img src="../../images/logo.svg" alt="logo"/></a>
    <a class="navbar-brand brand-logo-mini" href="../../index-2.html"><img src="../../images/logo-mini.svg" alt="logo"/></a>                    
  </div>
  <div class="navbar-menu-wrapper d-flex flex-grow">
    <ul class="navbar-nav navbar-nav-left collapse navbar-collapse" id="horizontal-top-example">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle active" href="#" id="projects-dropdown" data-toggle="dropdown" aria-expanded="false">
          Projects
        </a>
        <div class="dropdown-menu navbar-dropdown" aria-labelledby="projects-dropdown">
          <a class="dropdown-item" href="#">
            <i class="mdi mdi-laptop-mac mr-2 text-primary"></i>
            Automation
          </a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">
            <i class="mdi mdi-database mr-2 text-primary"></i>
            Big data
          </a>
          <div class="dropdown-divider"></div>                
          <a class="dropdown-item" href="#">
            <i class="mdi mdi-cellphone-android mr-2 text-primary"></i>
            Mobile App
          </a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="employees-dropdown" data-toggle="dropdown" aria-expanded="false">
          Employees
        </a>
        <div class="dropdown-menu navbar-dropdown" aria-labelledby="employees-dropdown">
          <a class="dropdown-item" href="#">
            <i class="mdi mdi-monitor-multiple mr-2 text-primary"></i>
            Developers
          </a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">
            <i class="mdi mdi-scale-balance mr-2 text-primary"></i>
            Testers
          </a>
          <div class="dropdown-divider"></div>                
          <a class="dropdown-item" href="#">
            <i class="fa fa-user mr-2 text-primary"></i>
            Managers
          </a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="actions-dropdown" data-toggle="dropdown" aria-expanded="false">
          Events
        </a>
        <div class="dropdown-menu navbar-dropdown" aria-labelledby="actions-dropdown">
          <a class="dropdown-item" href="#">
            <i class="mdi mdi-launch mr-2 text-primary"></i>
            App Launch
          </a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">
            <i class="fa fa-user-multiple-outline mr-2 text-primary"></i>
            Board Meeting
          </a>
        </div>
      </li>
    </ul>
    <ul class="navbar-nav navbar-nav-right">
      <li class="nav-item nav-profile">
        <a class="nav-link">
          <div class="nav-profile-text">
            Jane Robert
          </div>
          <div class="nav-profile-img">
            <img src="../../images/faces/face5.jpg" alt="image" class="img-xs rounded-circle ml-3">
            <span class="availability-status online"></span>             
          </div>
        </a>
      </li>
      <li class="nav-item nav-search">
        <div class="nav-link">
          <div class="search-field d-none d-md-block">
            <form class="d-flex align-items-stretch h-100" action="#">
              <div class="input-group">
                <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="fas fa-search"></i>                                          
                    </span>
                </div>
                <input type="text" class="form-control" placeholder="Search your projects ...">
              </div>
            </form>
          </div>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link">
          <a href="{{ route('admin.'.\App::getLocale().'.logout') }}" class="btn btn-default btn-flat">
            <i class="fas fa-power-off font-weight-bold icon-sm"></i>
          </a>
        </a>
      </li>
    </ul>
    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center ml-auto" type="button" data-toggle="collapse" data-target="#horizontal-top-example">
      <span class="fa fa-bars"></span>
    </button>
  </div>
</nav>