<?php

	// Custom post types
	function medo_post_type(){
		//Event Post Type
		$events_labels=[

				'name' => __('Events'),
				'add_new_item' =>'Add New Event',
				'edit_item' =>'Edit Event',
				'all_items' =>'All Events',
				'singular_name' =>'Event',
				'name_admin_bar'     => _x( 'Event', 'add new on admin bar', 'your-plugin-textdomain' ),
				'search_items'       => __( 'Search Events'),
				'parent_item_colon'  => __( 'Parent Events:'),
				'not_found'          => __( 'No Events found.'),
				'not_found_in_trash' => __( 'No Events found in Trash.')
				];
		$events_args = array(
			'labels'             => $events_labels,
			'show_in_rest'=>'true',
	        'description'        => __( 'keep on with our new events.' ),
			'public'             => true,
			'menu_icon'			 =>'dashicons-calendar',
			'publicly_queryable' => true,
			'show_ui'            => true,
			'show_in_menu'       => true,
			'query_var'          => true,
			'rewrite'            => array( 'slug' => 'events' ),
			'capability_type'    => 'post',
			'has_archive'        => true,
			'hierarchical'       => false,
			'menu_position'      => null,
			'supports'           => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments' )
	);


		register_post_type('event',$events_args);


		//Program Post Type
		$programs_labels=[
				'name' => __('Programs'),
				'add_new_item' =>'Add New Program',
				'edit_item' =>'Edit Program',
				'all_items' =>'All Programs',
				'singular_name' =>'Program',
				'name_admin_bar'     => _x( 'Program', 'add new on admin bar', 'your-plugin-textdomain' ),
				'search_items'       => __( 'Search Programs'),
				'parent_item_colon'  => __( 'Parent Programs:'),
				'not_found'          => __( 'No Programs found.'),
				'not_found_in_trash' => __( 'No Programs found in Trash.')
				];
		$programs_args = array(
			'labels'             => $programs_labels,
	        'description'        => __( 'list all programs available.' ),
			'public'             => true,
			'show_in_rest'=>'true',
			'menu_icon'			 =>'dashicons-awards',
			'publicly_queryable' => true,
			'show_ui'            => true,
			'show_in_menu'       => true,
			'query_var'          => true,
			'rewrite'            => array( 'slug' => 'programs' ),
			'capability_type'    => 'post',
			'has_archive'        => true,
			'hierarchical'       => false,
			'menu_position'      => null,
			'supports'           => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments' )
	);

		register_post_type('program',$programs_args);

		//Professor Post Type
		$professors_labels=[
				'name' => __('Professors'),
				'add_new_item' =>'Add New Professor',
				'edit_item' =>'Edit Professor',
				'all_items' =>'All Professors',
				'singular_name' =>'Professor',
				'name_admin_bar'     => _x( 'professor', 'add new on admin bar' ),
				'search_items'       => __( 'Search professors'),
				'parent_item_colon'  => __( 'Parent Professors:'),
				'not_found'          => __( 'No Professors found.'),
				'not_found_in_trash' => __( 'No Professors found in Trash.')
				];
		$professors_args = array(
			'labels'             => $professors_labels,
	        'description'        => __( 'list all professors available.' ),
			'public'             => true,
			'show_in_rest'=>'true',
			'menu_icon'			 =>'dashicons-welcome-learn-more',
			'publicly_queryable' => true,
			'show_ui'            => true,
			'show_in_menu'       => true,
			'query_var'          => true,
			'capability_type'    => 'post',
			'hierarchical'       => false,
			'menu_position'      => null,
			'supports'           => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments' )
	);

		register_post_type('professor',$professors_args);
		//Campus Post Type
		$campus_labels=[
				'name' => __('Campus'),
				'add_new_item' =>'Add New Campus',
				'edit_item' =>'Edit Campus',
				'all_items' =>'All Campuses',
				'singular_name' =>'campus',
				'name_admin_bar'     => _x( 'campus', 'add new on admin bar' ),
				'search_items'       => __( 'Search campus'),
				'parent_item_colon'  => __( 'Parent campus:'),
				'not_found'          => __( 'No Campuses found.'),
				'not_found_in_trash' => __( 'No Campuses found in Trash.')
				];
		$campus_args = array(
			'labels'             => $campus_labels,
	        'description'        => __( 'list all campuses available.' ),
			'public'             => true,
			'show_in_rest'=>'true',
			'menu_icon'			 =>'dashicons-location',
			'publicly_queryable' => true,
			'show_ui'            => true,
			'show_in_menu'       => true,
			'query_var'          => true,
			'rewrite'            => array( 'slug' => 'campuses' ),
			'has_archive'        => true,
			'capability_type'    => 'post',
			'hierarchical'       => false,
			'menu_position'      => null,
			'supports'           => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments' )
	);



		register_post_type('campus',$campus_args);


	}





	add_action('init','medo_post_type');



?>