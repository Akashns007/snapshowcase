<?php
require_once 'assets/php/functions.php';


$pagecount = count($_GET);



if(isset($_SESSION['Auth'])){
    $user = getUser($_SESSION['userdata']['id']);
    $posts = filterPosts();
    $follow_suggestions=filterFollowSuggestions();
}







//manage pages
if(isset($_SESSION['Auth']) && !$pagecount){
    
    showPage('header',['page_title'=>'Home']);
    showPage('navbar');
    showPage('wall');

}elseif(isset($_SESSION['Auth']) && isset($_GET['editprofile'])){
    showPage('header',['page_title'=>'Edit Profile']);
    showPage('navbar');
    showPage('edit_profile');
}elseif(isset($_SESSION['Auth']) && isset($_GET['u'])){
    $profile=getUserByUsername($_GET['u']);
    if(!$profile){
        showPage('header',['page_title'=>'user not found']);
        showPage('navbar');
        showpage("user_not_found");

    }else{
        $profile_post=getPostById($profile['id']);
        $profile['followers']=getFollowers($profile['id']);
        $profile['following']=getFollowing($profile['id']);
       

       
       
        showPage('header',['page_title'=>$profile['first_name'].' '.$profile['last_name']]);
        showPage('navbar');
        showPage('profile');

    }




   
}elseif(isset($_GET['signup'])){
    showPage('header',['page_title'=>'snapshowcase - signup']);
    showPage('signup');
}elseif(isset($_GET['login'])){
    showPage('header',['page_title'=>'snapshowcase - login']);
    showPage('login');   
}else{
    if(isset($_SESSION['Auth'])){
        showPage('header',['page_title'=>'Home']);
        showPage('navbar');
        showPage('wall');
    }else{
        showPage('header',['page_title'=>'snapshowcase - Login']);
        showPage('login');
    }

}


showPage('footer'); 
unset($_SESSION['error']);
unset($_SESSION['formdata']);


