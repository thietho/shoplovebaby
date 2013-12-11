<div id="ben-footer">
	<div id="ben-footer-brand">
    	<style>
#ben-sileshowproduct img
{
	margin-right:10px;	
}
</style>
<script type='text/javascript' language='javascript' src='<?php echo HTTP_SERVER.DIR_VIEW?>js/crawler.js'></script>
<div class="marquee" id="mycrawler">

    <table>
    	<tr>
        	<?php foreach($brands as $item){?>
        	<td>
            	<a href="<?php echo $this->document->createLink('brand',$item['categoryid'])?>">
                    <img src="<?php echo $item['imagethumbnail']?>" />
                </a>
            </td>
            <?php } ?>
            <?php foreach($brands as $item){?>
        	<td>
            	<a href="<?php echo $this->document->createLink('brand',$item['categoryid'])?>">
                    <img src="<?php echo $item['imagethumbnail']?>" />
                </a>
            </td>
            <?php } ?>
            
        </tr>
    </table>
    
	
    
</div>

<script type="text/javascript">
$(document).ready(function(e) {
	
    setTimeout('runbanner()',1000);

});
function runbanner()
{
	marqueeInit({
		uniqueid: 'mycrawler',
		style: {
			'padding': '2px',
			
			'height': '87px',
			'width': '100%',
			
		},
		inc: 5, //speed - pixel increment for each iteration of this marquee's movement
		mouse: 'cursor driven', //mouseover behavior ('pause' 'cursor driven' or false)
		moveatleast: 2,
		neutral: 150,
		savedirection: true,
		random: true
	})
}
</script>
    </div>
	
    
    <div class="ben-left" id="ben-footer-left">
    	<div id="shopname">SHOP BABY LOVE</div>
        
        <p>
            Địa chỉ: 296 Huỳnh Văn Bánh, phường 11, quận Phú Nhuận, Tp.HCM<br />
            Điện thoại: 083 9914771 - Fax: 083 9914770<br />
            Email: shop_lovebaby@yahoo.com - shoplovebaby@gmail.com<br />
            Fan page: www.facebook.com/shoplovebaby123
        </p>
    </div>
    <div id="ben-footer-right" class="ben-right">
    	<ul>
        	<li><a href="<?php echo HTTP_SERVER?>">Trang chủ</a></li>
            <li>|</li>
            <li><a href="<?php echo $this->document->createLink('gioi-thieu')?>">Giới thiệu</a></li>
            <li>|</li>
            <li><a href="<?php echo $this->document->createLink('tin-tuc')?>">Tin tức</a></li>
            <li>|</li>
            <li><a href="<?php echo $this->document->createLink('khuyen-mai')?>">Khuyến mãi</a></li>
            <li>|</li>
            <li><a href="<?php echo $this->document->createLink('tu-van')?>">Tư vấn</a></li>
            <li>|</li>
            <li><a href="<?php echo $this->document->createLink('lien-he')?>">Liên hệ</a></li>
        </ul>
        <div id="ben-footer-powerby">
        	
        	Website Power by <a href="http://holansolutions.com/">Ho Lan Solutions</a>
            
        </div>
    </div>
    <div class="clearer">&nbsp;</div>
	
</div>