<?php get_header();PageBanner([
      'title'    => 'Past Events' ,
      'subtitle' =>'See all past events'

  ]);?>


  <div class="container container--narrow page-section">
  	<?php 
  		  $today=date('Ymd');
          $PastEvents = new WP_Query([
          	'paged' => get_query_var('paged',1),
            'post_type' =>'event',
            'meta_key' => 'event_date',
            'orderby' => 'meta_value_num',
            'order' => 'ASC',
            'meta_query' =>[
              [
                'key' =>'event_date',
                'compare' => '<=',
                'value' =>$today,
                'type' => 'numeric'
              ]
            ]
          ]);
  	while($PastEvents->have_posts()){
  		$PastEvents->the_post();
      get_template_part('template-parts/content',get_post_type());        

  	 }
  		echo paginate_links([
  			'total' =>$PastEvents->max_num_pages,
  		]);
  	?>	
  </div>


<?php get_footer();?>
