<?php
function university_files()
{
    wp_enqueue_style("google-fonts", "//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i");
    wp_enqueue_style("font-awesome", "//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");
    wp_enqueue_style("university_main_styles", get_stylesheet_uri());
    wp_enqueue_style("slick-carosel", '//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css');
    wp_enqueue_script('main', get_template_directory_uri() . '/js/main.js', array('jquery'), microtime(), true);
    wp_enqueue_script('slick', '//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js', array(), microtime(), true);
    wp_enqueue_script('search', get_template_directory_uri() . '/js/search.js', array(), microtime(), true);
    wp_enqueue_script('notes', get_template_directory_uri() . '/js/notes.js', array(), microtime(), true);
    wp_enqueue_script('like', get_template_directory_uri() . '/js/like.js', array(), microtime(), true);
    wp_localize_script('search', 'university', array(
        'root_url' => get_site_url(),
        'nonce' => wp_create_nonce('wp_rest'),
    ));
}

add_action("wp_enqueue_scripts", "university_files");

function university_features()
{

    /*
    =================================
    Enabling theme supports
    =================================
     */

    add_theme_support("title-tag");
    add_theme_support("post-thumbnails");
    /*
    =================================
    Required activation plugin
    =================================
     */
    require get_template_directory() . '/include/TGM_plugin/example.php';
    include_once get_theme_file_path('/include/class-kirki-installer-section.php');
    /*
    =================================
    Including Custom Post Type
    =================================
     */
    require get_template_directory() . '/include/Custom/Custom-post-type/event.php';
    require get_template_directory() . '/include/Custom/Custom-post-type/program.php';
    require get_template_directory() . '/include/Custom/Custom-post-type/campus.php';
    require get_template_directory() . '/include/Custom/Custom-post-type/professor.php';
    require get_template_directory() . '/include/Custom/Custom-post-type/notes.php';
    require get_template_directory() . '/include/Custom/Custom-post-type/like.php';
    /*
    =================================
    Including Custom rest api
    ================================
     */
    require get_template_directory() . '/include/Custom/Custom-api/search-api.php';
    require get_template_directory() . '/include/Custom/Custom-api/like.php';
    /*
    =================================
    Registering Custom function
    =================================
     */
    require get_template_directory() . '/include/Custom/Custom-functions/pageBanner.php';

    /*
    =================================
    Registering Navigation menus
    =================================
     */

    register_nav_menus(array(
        'primary_menu' => __('Primary Menu', 'university'),
        'footer_menu' => __('Footer Menu', 'university'),
    ));
/*
=================================
Forcing note post to be published created by user
=================================
 */
    add_filter('wp_insert_post_data', "make_note_private", 10, 2);
    function make_note_private($data, $postarr)
    {
        if ($data["post_type"] == 'note' && $data["post_status"] != 'trash') {
            $data['post_status'] = "private";
            // make user to create only 5 post
            if (count_user_posts(get_current_user_id(), 'note') == 5 && !$postarr["ID"]) {
                die("You have reached your limit");
            }
        }
        return $data;
    }
}
add_action("after_setup_theme", "university_features");
/*
=================================
if user is subscriber then redirect user to homepage from admin panal
=================================
 */

add_action('admin_init', 'redirectSub');
function redirectSub()
{
    $currentUser = wp_get_current_user();
    if (count($currentUser->roles) != 0 && $currentUser->roles[0] == 'subscriber') {
        wp_redirect(site_url('/'));
        exit;
    }
};
add_action('wp_loaded', 'hidetopbar');
function hidetopbar()
{
    $currentUser = wp_get_current_user();
    if (count($currentUser->roles) != 0 && $currentUser->roles[0] == 'subscriber') {
        wp_redirect(site_url('/'));
        show_admin_bar(false);
    }
}
/*
=================================
Custom Login page functionality
=================================
 */

function logout_user_to_custom_page()
{
    wp_redirect(site_url('/log-in'));
    exit;
}

add_action('wp_logout', 'logout_user_to_custom_page');
// logout from wp-admin
add_action('init', 'url_redirect');
function url_redirect()
{
    global $pagenow;
    if ($pagenow === "wp-login.php") {
        wp_redirect(site_url('/log-in'));
        wp_logout();
        exit;
    }
};
add_action('wp_ajax_custom_login', 'handle_custom_login');
add_action('wp_ajax_nopriv_custom_login', 'handle_custom_login');
function handle_custom_login()
{
    if ($_POST['param'] === 'login_test') {
        $messege = "";
        $credentials = array();
        $credentials["user_login"] = $_POST["email"];
        $credentials["user_password"] = $_POST["psw"];
        $credentials["remember"] = true;
        $exist_user = wp_signon($credentials, false);
        if (is_wp_error($exist_user)) {

            if ($exist_user->errors['incorrect_password'][0]) {
                echo 'Incorrect Password';
            }
            if ($exist_user->errors['invalid_username'][0]) {
                echo 'Invalid username';
            }
            if ($exist_user->errors['invalid_email'][0]) {
                echo 'Invalid email';
            }

        } else {
            if ($_POST["checkbox"] === "on") {
                setcookie("username", $_POST["email"], "", "/");
                setcookie("psw", $_POST["psw"], "", "/");
                setcookie("checkbox", $_POST["checkbox"], "", "/");
            } else {
                setcookie("username", "", '', '/');
                setcookie("psw", "", '', '/');
                setcookie("checkbox", "", '', '/');
            }

            echo $messege;
        }
    } else {
        $messege = "Please fill up the credentials";
        echo $messege;
    }
    wp_die();
}
/*
=================================
Setting up user registration functionality
=================================
 */
add_action('wp_ajax_custom_reg', 'handle_custom_reg');
add_action('wp_ajax_nopriv_custom_reg', 'handle_custom_reg');
function handle_custom_reg()
{
    if (isset($_REQUEST['action'])
        && $_REQUEST['action'] === 'custom_reg'
        && $_REQUEST['param'] === 'reg_test') {
        $first_name = $_REQUEST['f_name'];
        $last_name = $_REQUEST['l_name'];
        $username = $_REQUEST['username'];
        $user_email = $_REQUEST['user_email'];
        $user_psw = $_REQUEST['user_psw'];
        if (!empty($first_name) && !empty($last_name) && !empty($username)) {
            if (strpos($username, " ") == false) {

                if (strpos($user_psw, " ") == false) {
                    $create_user = wp_insert_user(array(
                        'first_name' => $first_name,
                        'last_name' => $last_name,
                        'user_email' => $user_email,
                        'user_pass' => $user_psw,
                        'user_login' => $username,
                        'display_name' => $first_name . " " . $last_name,
                        'user_registered' => date('Y-m-d h:i:s'),
                        'show_admin_bar_front' => false,
                        'role' => 'subscriber',
                    ));
                    if (is_int($create_user)) {
                        echo 1;
                    } else {
                        if ($create_user->errors['existing_user_email'][0]) {
                            echo 'Email already exists';
                        }
                        if ($create_user->errors['existing_user_login'][0]) {
                            echo 'Username already exists';
                        }
                    }
                } else {
                    echo "Password can not contain space";
                }
            } else {
                echo 'Username can not contain space';
            }
        } else {
            echo 'Empty field';
        }
    }
}
