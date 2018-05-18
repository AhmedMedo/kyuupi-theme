<?php get_header();
PageBanner([
    'title'    => 'Our Blog' ,
    'subtitle' => 'This is our Blogs'

  ]);?>

  
  <div class="container container--narrow page-section">
  	<?php while(have_posts()){
  		the_post();?>

  		<div class="post-item">
  			<h2 class="headline headline--medium headline--post-title"><a href="<?php the_permalink();?>"><?php the_title();?></a></h2>
  			<div class="metabox">
  				<p>Posted by <?php the_author_posts_link();?> on <?php the_time('j.n.y'); ?> in <?php echo get_the_category_list(', ') ?>
  				<?php  echo get_the_tag_list('tags ',', '); ?></p>
  			</div>
  			<div class="generic-content">
  				<p><?php the_excerpt(); ?></p>
  				<p><a href="<?php the_permalink();?>" class="btn btn--blue">Continue reading&raquo;</a></p>
  			</div>
  		</div>

  	<?php }
  		echo paginate_links();
  	?>	
  </div>


<?php get_footer();?>
