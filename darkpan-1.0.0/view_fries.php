<?php
require_once("conn.php");
$update=false; 
if(isset($_GET['delete'])){ 
      $id=$_GET['delete'];
      $delQuery="DELETE FROM  fries_menu WHERE id=$id";
      $delResult= mysqli_query($conn,$delQuery);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>CleverMind - Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-secondary navbar-dark">
                <a href="index.html" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>CleverMind</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">Jhon Doe</h6>
                        <span>Admin</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">

                <div class="nav-item dropdown">
                    <a href="index.html" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="fa fa-tachometer-alt me-2"></i>Header</a>      
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="header.php" class="dropdown-item">Header info</a>
                        </div>
                </div>

                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>SLIDER SECTION</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="add_new_slider.php" class="dropdown-item">Add New</a>
                        <a href="view_all_slider.php" class="dropdown-item">View All</a>
                    </div>
                </div>

                <div class="nav-item dropdown">
                    <a href="widget.html" class="nav-link dropdown-toggle " data-bs-toggle="dropdown"><i class="fa fa-th me-2"></i>OFFERS SECTION</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="add_new_offer.php" class="dropdown-item">Add New</a>
                        <a href="view_all_offer.php" class="dropdown-item">View All</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="widget.html" class="nav-link dropdown-toggle " data-bs-toggle="dropdown"><i class="fa fa-user me-2"></i>Users</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="add_new_user.php" class="dropdown-item">Add New</a>
                        <a href="view_all_user.php" class="dropdown-item">View All</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="widget.html" class="nav-link dropdown-toggle " data-bs-toggle="dropdown"><i class="fa fa-circle me-2"></i>Orders</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="add_new_order.php" class="dropdown-item">Add New</a>
                        <a href="view_all_order.php" class="dropdown-item">View All</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="form.html" class="nav-link dropdown-toggle " data-bs-toggle="dropdown"><i class="fa fa-keyboard me-2"></i>MENU CART</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="add_gurger.php" class="dropdown-item">New Burger</a>
                        <a href="view_gurger.php" class="dropdown-item">All Burger</a>

                        <a href="add_pizza.php" class="dropdown-item">New Pizza</a>
                        <a href="view_pizza.php" class="dropdown-item">All pizza</a>

                        <a href="add_pasta.php" class="dropdown-item">New Pasta</a>
                        <a href="view_pasta.php" class="dropdown-item">All Pasta</a>

                        <a href="add_fries.php" class="dropdown-item">New Fries</a>
                        <a href="view_fries.php" class="dropdown-item">All Fries</a>
                    </div>
                </div>

                <div class="nav-item dropdown">
                    <a href="table.html" class="nav-link dropdown-toggle " data-bs-toggle="dropdown"><i class="fa fa-table me-2"></i>ABOUT SECTION</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="add_new_about.php" class="dropdown-item">Add new</a>
                        <a href="view_all_about.php" class="dropdown-item">View all</a>
                    </div>
                </div>

                <div class="nav-item dropdown">
                    <a href="chart.html" class="nav-link dropdown-toggle " data-bs-toggle="dropdown"><i class="fa fa-chart-bar me-2"></i>BOOK A TABLE</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="user_messages.php" class="dropdown-item">Book a table</a>
                    </div>
                </div>

                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>OUR CUSTOMERS</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="add_new_cusSay.php" class="dropdown-item">Add new</a>
                        <a href="view_all_cusSay.php" class="dropdown-item">View All</a>
                    </div>
                </div>

                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="far fa-file-alt me-2"></i>FOOTER</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="contact_view_info.php" class="dropdown-item">Footer Information</a>
                        <a href="view_item_footer.php" class="dropdown-item">View Social Madia</a>
                        <a href="contact_gps.php" class="dropdown-item">GPS Location</a>
                    </div>
                </div>
                
            </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <form class="d-none d-md-flex ms-4">
                    <input class="form-control bg-dark border-0" type="search" placeholder="Search">
                </form>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-envelope me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Message</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all message</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-bell me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Notificatin</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Profile updated</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">New user added</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Password changed</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all notifications</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex">John Doe</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">My Profile</a>
                            <a href="#" class="dropdown-item">Settings</a>
                            <a href="#" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->


            <!-- Table Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-12">
                        <div class="bg-secondary rounded h-100 p-4">
                            <h6 class="mb-4">Responsive Table</h6>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                       <tr>
                                          <th>#</th>
                                          <th>Image</th>
                                          <th>Title</th>
                                          <th>Description</th>
                                          <th>Price</th>
                                          <th>Action</th>
                                       </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                       $sql = "SELECT * FROM   fries_menu";
                                       $result = mysqli_query($conn, $sql);
                                       $countRow = mysqli_num_rows($result);
                                       if ($countRow > 0) {
                                          $i = 1;
                                          while ($row = mysqli_fetch_assoc($result)) {
                                             echo "
                                             <tr>
                                             <td>{$i}</td>
                                             <td>{$row['image']}</td>
                                             <td>{$row['title']}</td>
                                             <td>{$row['description']}</td>
                                             <td>{$row['price']}</td>
                                             <td>
                                             <a href='add_fries.php?edit={$row['id']}'>
                                             <button data-toggle='tooltip' title='Edit' class='btn btn-primary mr-2'>
                                             Edit
                                             </button>
                                             </a>
                                             <a href='view_fries.php?delete={$row['id']}'>
                                             <button data-toggle='tooltip' title='Trash' class='btn btn-primary mr-2'>
                                             Delete
                                             </button>
                                             </a>
                                             </td>
                                             </tr>
                                             ";
                                             $i++;
                                          }
                                       }
                                       ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Table End -->


            <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-secondary rounded-top p-4">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="#">Clever Mind POB</a>, All Right Reserved. 
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>