
<?php get_header();


	while (have_posts()) {
		the_post();PAgeBanner();?>
		
       <div class="container container--narrow page-section">
       	<div class="metabox metabox--position-up metabox--with-home-link">
	      <p><a class="metabox__blog-home-link" href="<?php echo get_post_type_archive_link('program');?>"><i class="fa fa-home" aria-hidden="true"></i> All Programs </a> <span class="metabox__main"><?php the_title();?></span></p>
	    </div>
       	<div class="generic-content"><?php the_field('main_body_content');?></div>
       	   <?php 
		          $today=date('Ymd');

		           $ProgrameProfessors = new WP_Query([
		            'post_type' =>'professor',
		            'posts_per_page' =>-1,
		            'orderby' => 'title',
		            'order' => 'ASC',
		            'meta_query' =>[
		             		              [
		              	'key'     =>'related_programs',
		              	'compare' =>'LIKE',
		              	'value'   =>'"'.get_the_ID().'"'

		              ]
		            ]
		          ]);
		       
		          if($ProgrameProfessors->have_posts()){
		          echo '<hr class"section-break">';
		          echo '<h2 class="headline headline--medium"> Professors</h2>';
		          echo '<ul class="professor-cards">';
		          while ($ProgrameProfessors->have_posts() ) {
		            $ProgrameProfessors->the_post();?>
		            	<li class="professor-card__list-item">
		            		<a class="professor-card" href="<?php  the_permalink();?>">
		            			<img class="professor-card__image" src="<?php the_post_thumbnail_url('professorImage');?>">
		            			<span class="professor-card__name">
		            			<?php the_title();?>
		            			</span>
		            		</a>
		            	</li>

		        <?php
		          }

		          echo '</ul>';

		          }else{

		          	echo '<h2> No Events Available</h2>';
		          }



		          wp_reset_postdata();//reset global post data to use it in another query


		          $ProgrameEvents = new WP_Query([
		            'post_type' =>'event',
		            'posts_per_page' =>2,
		            'meta_key' => 'event_date',
		            'orderby' => 'meta_value_num',
		            'order' => 'DESC',
		            'meta_query' =>[
		              [
		                'key'     =>'event_date',
		                'compare' => '>=',
		                'value'   =>$today
		              ],
		              [
		              	'key'     =>'related_programs',
		              	'compare' =>'LIKE',
		              	'value'   =>'"'.get_the_ID().'"'

		              ]
		            ]
		          ]);
		       
		          if($ProgrameEvents->have_posts()){
		          echo '<hr class"section-break">';
		          echo '<h2 class="headline headline--medium">Upcoming '.get_the_title().' Events</h2>';
		          while ($ProgrameEvents->have_posts() ) {
		            $ProgrameEvents->the_post();
		            get_template_part('template-parts/event');        
		          }
		          }else{
		          	echo '<h2> No Events Available</h2>';
		          }

		          wp_reset_postdata();
		          $relatedCampuses=get_field('related_campus');
		          if($relatedCampuses){
		          	echo '<h2 class="headline headline--medium">'.get_the_title().' is Available at this Campuses: </h2>';
		          	echo '<ul class="min-list link-list">';
		          	foreach($relatedCampuses as $campus)
		          	{?>
		          	<li><a href="<?php echo get_the_permalink($campus);?>"><?php echo get_the_title($campus);?></a></li>
		          		
		          	<?php
		            }
		            echo '</ul>';
		          
		          }
		          
		        ?>
       </div>

	<?php }
get_footer();

 ?>