
<?php get_header();


  while (have_posts()) {
    the_post();PAgeBanner();?>
    
       <div class="container container--narrow page-section">
        <div class="metabox metabox--position-up metabox--with-home-link">
        <p><a class="metabox__blog-home-link" href="<?php echo get_post_type_archive_link('campus');?>"><i class="fa fa-home" aria-hidden="true"></i> All Campuses </a> <span class="metabox__main"><?php the_title();?></span></p>
      </div>
        <div class="generic-content"><?php the_content();?></div>
          <div class="acf-map">
              <div class="marker" data-lat="<?php echo get_field('map_location')['lat'] ;?>" data-lng="<?php echo get_field('map_location')['lng'] ;?>">
              <h3><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3>  
              <p> <?php echo get_field('map_location')['address']; ?> </p>
              </div>
             
          </div>
             <?php 

               $relatedProgrames = new WP_Query([
                'post_type' =>'program',
                'posts_per_page' =>-1,
                'orderby' => 'title',
                'order' => 'ASC',
                'meta_query' =>[
                                  [
                    'key'     =>'related_campus',
                    'compare' =>'LIKE',
                    'value'   =>'"'.get_the_ID().'"'

                  ]
                ]
              ]);
           
              if($relatedProgrames->have_posts()){
              echo '<hr class"section-break">';
              echo '<h2 class="headline headline--medium">Prgrames availble at this campus</h2>';
              echo '<ul class="min-list link-list">';
              while ($relatedProgrames->have_posts() ) {
                $relatedProgrames->the_post();?>
                  <li>
                    <a  href="<?php  the_permalink();?>"><?php  the_title();?>    
                    </a>
                  </li>

            <?php
              }

              echo '</ul>';

              }else{

                echo '<h2> No programes Available</h2>';
              }



              wp_reset_postdata();//reset global post data to use it in another query


              

            ?>
       </div>

  <?php }; 
get_footer();

 ?>