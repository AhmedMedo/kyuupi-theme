<?php get_header();PageBanner([
    'title' => 'All Events' ,
    'subtitle' => 'see our Events'

  ]);?>

  
  <div class="container container--narrow page-section">
  	<?php while(have_posts()){
  		the_post();
      get_template_part('template-parts/content',get_post_type());        

  	 }
  		echo paginate_links();
  	?>	
    <hr>
    <p>Looking for our old events <a href="<?php echo site_url('past-events')?>">see them from this link</a></p>
  </div>


<?php get_footer();?>
