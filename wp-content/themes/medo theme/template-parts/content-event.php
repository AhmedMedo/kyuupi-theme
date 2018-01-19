        <div class="event-summary">
              <a class="event-summary__date t-center" href="<?php the_permalink();?>">
                <span class="event-summary__month"><?php echo  EventDate()->format('M');
                ?></span>
                <span class="event-summary__day"><?php echo EventDate()->format('d');?></span>  
              </a>
              <div class="event-summary__content">
                <h5 class="event-summary__title headline headline--tiny"><a href="<?php the_permalink();?>"><?php the_title();?></a></h5>
                <p><?php post_type_content();?> <a href="<?php the_permalink();?>" class="nu gray">Learn more</a></p>
              </div>
          </div>