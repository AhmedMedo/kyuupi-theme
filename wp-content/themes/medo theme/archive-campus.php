<?php get_header();PageBanner([
	'title' => 'Our Campuses',
	'subtitle' => 'We have many campuses'

	])?>

 
  <div class="container container--narrow page-section">
  	<div class="acf-map">
  	<?php while(have_posts()){
  		the_post();?>
  		<div class="marker" data-lat="<?php echo get_field('map_location')['lat'] ;?>" data-lng="<?php echo get_field('map_location')['lng'] ;?>">
      <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>  
      <p> <?php echo get_field('map_location')['address']; ?> </p>
      </div>
  	<?php }
  		
  	?>	
  </div>
    
  </div>


<?php get_footer();?>
