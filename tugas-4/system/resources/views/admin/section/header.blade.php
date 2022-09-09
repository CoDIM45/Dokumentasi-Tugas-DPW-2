 <nav class="main-header navbar navbar-expand navbar-white navbar-light">
     <!-- Left navbar links -->
     <ul class="navbar-nav">
         <li class="nav-item">
             <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
         </li>
         <li class="nav-item d-none d-sm-inline-block">
             <a href="index3.html" class="nav-link">Home</a>
         </li>
     </ul>

     <!-- Right navbar links -->
     <ul class="navbar-nav ml-auto">
         <!-- Navbar Search -->

         <!-- Messages Dropdown Menu -->
         <li class="nav-item dropdown">
             <a class="nav-link" data-toggle="dropdown" href="#">
                 Dimas Arli Pratama
                 <img src="{{ url('public') }}/assets-admin/dist/img/user1-128x128.jpg"
                     alt="User Avatar"style="height:100%" class="img-circle mr-3">
             </a>
             <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                 <a href="#" class="dropdown-item">
                     <i class="fa fa-user"></i> Profile
                 </a>
                 <a href="#" class="dropdown-item">
                     <i class="fa fa-cog"></i> Setting
                 </a>
                 <a href="{{ url('login') }}" class="dropdown-item">
                     <i class="fas fa-sign-out-alt"></i> Logout
                 </a>
                 <div class="dropdown-divider"></div>
             </div>
         </li>
     </ul>
 </nav>
