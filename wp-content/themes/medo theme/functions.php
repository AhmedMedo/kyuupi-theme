<?php

	/*Custom */
	require get_theme_file_path('/inc/search-route.php');
	/*
		Page Banner function
	*/

		function PageBanner($args=NULL){
			if (!$args['title']) {
				$args['title'] =get_the_title();
			}
			if(!$args['subtitle'])
			{
				$args['subtitle'] = get_field('page_banner_subtitle');
			}
			if(!$args['photo']){
				if(get_field('page_banner_background_image'))
				{
					$args['photo']=get_field('page_banner_background_image')['sizes']['PageBanner'];
				}else{

					$args['photo'] =get_theme_file_uri('/images/library-hero.jpg');
				}
			}


			?>

		 <div class="page-banner">
		    <div class="page-banner__bg-image" style="background-image: url(<?php  echo $args['photo'];?>);"></div>
		    <div class="page-banner__content container container--narrow">
		      <h1 class="page-banner__title"><?php echo $args['title']; ?></h1>
		      <div class="page-banner__intro">
		        <p><?php echo $args['subtitle'] ;?></p>
		      </div>
		    </div>  
		  </div>



	<?php	}

	/*


		related to all Css and js files 

	*/
	function medo_files(){
		wp_enqueue_script('googlemap', '//maps.googleapis.com/maps/api/js?key=AIzaSyCOQrWF_dBK1lUiH9ERAVznbHrgE1UuqIo',NULL, '1.0',true);
		wp_enqueue_script('medo-javascript', get_theme_file_uri('/js/scripts-bundled.js'),NULL, '3.0',true);
		wp_enqueue_style('google-custom-font','//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
		wp_enqueue_style('font-awsome','//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
		wp_enqueue_style('medo_main_styles',get_stylesheet_uri());
		wp_localize_script('medo-javascript', 'medoData', array(
		    'root_url' => get_site_url()
		  ));

	}

	// use WP event to hook the medo_files function to call all css and js files related to the theme
	add_action('wp_enqueue_scripts','medo_files');

	/*

	*/

	function medo_features(){
		register_nav_menu('HeaderMenuLocation','Header Menu Location');
		register_nav_menu('FooterLocationOne','Footer Location One');
		register_nav_menu('FooterLocationTwo','Footer Location Two');
		add_theme_support('title-tag');
		add_theme_support( 'post-thumbnails' );
		add_image_size('professorImage',400,260,true);
		add_image_size('professorPortrait',480,650,true);
		add_image_size('PageBanner',1500,350,true);

	}

	// use WP event to hook features to the theme
	add_action('after_setup_theme','medo_features');
	/*
		Display Contnet or exceprt

	*/
	function post_type_content(){

		if(has_excerpt()){
                echo get_the_excerpt();
         }else{
                echo wp_trim_words(get_the_content(),18);
            }
	}

	/*
		Display event date from custom field
	*/
		function EventDate(){

			$event_date= new DateTime(get_field('event_date'));
			return $event_date;

		}

		/*
			Custom queries function to all archive type

		*/
		function medo_adjust_qureies($query){

			//query for  archive program type
			if(!is_admin() AND is_post_type_archive('campus') AND $query->is_main_query()){

					$query->set('posts_per_page',-1);
					

			}

			//query for  archive program type
			if(!is_admin() AND is_post_type_archive('program') AND $query->is_main_query()){

					$query->set('orderby','title');
					$query->set('order','DEC');
					$query->set('posts_per_page',-1);

			}



			//query for  archive event type
			if(!is_admin() AND is_post_type_archive('event') AND $query->is_main_query()){
				    $today=date('Ymd');
					$query->set('meta_key','event_date');
					$query->set('orderby','meta_value_num');
					$query->set('order','ASC');
					$query->set('meta_query',[
						              [
						                'key' =>'event_date',
						                'compare' => '>=',
						                'value' =>$today
						              ]
						            ]);
				}
		}
		add_action('pre_get_posts', 'medo_adjust_qureies' );


		// Register Google Map Api Key for Campus
		function MedoMapKey($api){

			$api['key'] = 'AIzaSyA1gwaqYQGzMOzFpaWqJgH3rclaH8tPE-o'; 
			return $api;

		}

		add_filter('acf/fields/google_map/api','MedoMapKey');




		/*Rest API actions*/

		function medo_custom_rest(){
			register_rest_field('post','authorName',[
				'get_callback'=> function (){
					return get_the_author();
				}
			]);
			register_rest_field('post','TiT',[
				'get_callback'=> function (){
					return get_the_title();
				}
			]);

		}

		add_action('rest_api_init','medo_custom_rest');



		// Redirect Subscribers to home page

		function redirect_subscribers(){
			$current_user = wp_get_current_user();
			if(count($current_user->roles) AND $current_user->roles[0] == 'subscriber' ){
				wp_redirect(site_url('/'));
				exit;

			}
		}




		add_action('admin_init','redirect_subscribers');

		function no_admin_bar(){
			$current_user = wp_get_current_user();
			if(count($current_user->roles) AND $current_user->roles[0] == 'subscriber' ){
				show_admin_bar(false);

			}
		}




		add_action('wp_loaded','no_admin_bar');



		// custmoize login

		function header_url(){
			return esc_url(site_url('/'));
		}


		add_action('login_headerurl','header_url');


		function login_css()
		{
			wp_enqueue_style('medo_main_styles',get_stylesheet_uri());
			wp_enqueue_style('google-custom-font','//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');


		}

	    add_action('login_enqueue_scripts','login_css');


	    function login_title(){
	    	return get_bloginfo('name');
	    }

	    add_filter('login_headertitle','login_title');

  ?>