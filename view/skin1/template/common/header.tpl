<div id="ben-header">
	<div id="ben-top-line"></div>
    <div id="ben-top">
    	
        <div class="ben-left" id="ben-logo">
            <a href="<?php echo HTTP_SERVER?>"><img src="<?php echo HTTP_SERVER.DIR_IMAGE?>logo.png" height="110px" alt="Logo" title="logo"/></a>
        </div>
    	
        
    	<div id="ben-top-support">
        	<div id="ben-top-hotline"><strong>Hotline: 0909.267.886‏ </strong></div>
            <table>
            	<tr>
                	<td>Hổ trợ trực tuyến:</td>
                    <td>
                    	
                        <a href="ymsgr:sendIM?haytinem_206"><img border="0" src="http://opi.yahoo.com/online?u=haytinem_206&=g&t=1"></a>
                    </td>
                    <td>
                    	
                        <a href="skype:hotrang1987?chat" onclick="return skypeCheck();"><img border="0" src="<?php echo HTTP_SERVER.DIR_IMAGE?>skype.png"> </a>
                    </td>
                </tr>
            </table>
        </div>
        <div id="ben-top-cart">
        	<table>
            	<tr>
                	<td><a href="<?php echo $this->document->createLink('cart')?>"><img src="<?php echo HTTP_SERVER.DIR_IMAGE?>icon-cart.png" alt="Giỏ hàng" title="Giỏ hàng"/></a></td>
                   	<td>Giỏ hàng</td>
                    <td><strong><span id="cartcout">0</span></strong> sản phẩm</td>
                </tr>
            </table>
        </div>
        <div id="ben-top-login">
        	<?php if($this->member->getId()==""){?>
        	<table>
            	<tr>
                	<td><a href="<?php echo $this->document->createLink('login')?>">Đăng nhập</a></td>
                   	<td>|</td>
                    <td><a href="<?php echo $this->document->createLink('register')?>">Đăng ký</a></td>
                </tr>
            </table>
            <?php } else { ?>
            <table>
            	<tr>
                	<td><a href="<?php echo $this->document->createLink('member')?>"><?php echo $this->member->getId()?></a></td>
                   	<td>|</td>
                    <td><a href="#" onclick="logout()">Đăng xuất</a></td>
                </tr>
            </table>
            <?php } ?>
        </div>
        <div id="ben-top-menu">
        	<div class="ben-navigation ">
        
                <ul id="ben-main-nav">
                    <?php echo $mainmenu?>
                </ul>
        
                <div class="clearer">&nbsp;</div>
        
            </div>
        	
        </div>
        <div class="clearer">&nbsp;</div>
        <div id="ben-top-bottom"></div>
        <div id="ben-top-bottom-bar"></div>
        
    </div>
</div>

<script src="<?php echo HTTP_SERVER.DIR_JS?>menu.js" language="javascript"></script>