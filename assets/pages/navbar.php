<?php global $user;?>
<nav class="navbar navbar-expand-lg navbar-light bg-white border">
        <div class="container col-9 d-flex justify-content-between">
            <div class="d-flex justify-content-between col-8">
                <a class="navbar-brand" href="?">
                    <img src="./assets/images/logo.png" alt="" height="50" width="200">

                </a>

                <form class="d-flex">
                    <input class="form-control me-4" type="search" placeholder="looking for someone.."
                        aria-label="Search">

                </form>

            </div>


            <ul class="navbar-nav  mb-2 mb-lg-0">

                <li class="nav-item">
                    <a class="nav-link text-dark" href="?"><i class="bi bi-house-door-fill"></i></a>
                </li>
                <li class="nav-item">

                    <a class="nav-link text-dark" data-bs-toggle="modal" data-bs-target="#addpost" href="#"><i class="bi bi-plus-square-fill"></i></a>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="./assets/images/profile/<?=$user['profile_pic']?>" alt="" height="30" class="rounded-circle border">
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="?editprofile">Edit profile</a></li>
                        <li><a class="dropdown-item" href="#">Account Settings</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="assets/php/actions.php?logout">Logout</a></li>
                    </ul>
                </li>

            </ul>


        </div>
    </nav>