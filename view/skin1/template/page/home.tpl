<div class="ben-three-columns">
	<div class="ben-sidebar ben-left">
    	<?php foreach($leftsitebar as $item){ ?>
        <?php echo $item?>
        <?php } ?>
    </div>
    
	<div class="ben-left" id="ben-maincontent">
    	<div class="ben-section">
        	<?php echo $bannerhome?>
        	
            
            <div class=" ben-section-content">
            	
                <?php foreach($producthome as $item){ ?>
                <?php if($item['data']){ ?>
                <h3><?php echo $item['title']?></h3>
            	<?php echo $item['data']?>
                <?php } ?>
                <?php } ?>
            </div>
            
            <!--<div class="ben-section-breadcrumb">Sản phẩm nổi bật</div>
            <div class=" ben-section-content">
            	<?php echo $producthot?>
            </div>-->
            
        	
        </div>
    </div>
    
    
    
    <div class="clearer">&nbsp;</div>

</div>