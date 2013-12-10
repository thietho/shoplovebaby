<?php
class ControllerPageHome extends Controller
{
	function __construct() 
	{
		//$this->iscache = true;
	 	$arr=array();
		foreach($_GET as $key => $val)
			$arr[] = $key."=".$val;
	 	$this->name ="PageHome".implode("_",$arr);
   	}
	public function index()
	{
		if($this->cachehtml->iscacht($this->name) == false)
		{
			$arr = array('menu-chinh');
			$this->data['mainmenu'] = $this->loadModule('common/header','showMenu',$arr);
			//Banner home
			$template = array(
						  'template' => "home/bannerhome.tpl",
						  'width' => 767,
						  'height' =>767
						  );
		
			$arr = array("bannerhome",0,"",$template);
			$this->data['bannerhome'] = $this->loadModule('module/block','getList',$arr);
			
			$data_sitemap = array();
			$data_sitemap = $this->model_core_sitemap->getListByParent("san-pham", $this->member->getSiteId());
			$template = array(
						  'template' => "module/product_list.tpl",
						  'width' => 170,
						  'height' =>170,
						  'widthpreview' => 450,
						  'heightpreview' =>450,
						  'paging' => false,
						  'sorting' =>false
						  );
			foreach($data_sitemap as $sitemap)
			{
				
				//$sitemap = $this->model_core_sitemap->getItem("mypham",$this->member->getSiteId());
				//$medias = $this->getProduct($sitemap['sitemapid'],"");
				$arr = array($sitemap['sitemapid'],1000,$sitemap['sitemapname'],$template,$medias);
				$this->data['producthome'][$sitemap['sitemapid']]['title'] = $sitemap['sitemapname'];
				$this->data['producthome'][$sitemap['sitemapid']]['data'] = $this->loadModule('module/productlist','index',$arr);
				
			}
			
			$this->loadSiteBar();
			$this->document->title = $this->document->setup['Title'] ." - ". $this->document->setup['Slogan'];
			//print_r($this->data['leftsitebar']);
		}
		
		$this->id="content";
		$this->template="page/home.tpl";
		$this->layout="layout/home";
		$this->render();
	}
	
	private function loadSiteBar()
	{
		//Left sitebar
		$this->data['leftsitebar']['search'] = $this->loadModule('sitebar/searchproduct');
		$arr = array('san-pham');
		$this->data['leftsitebar']['produtcategory'] = $this->loadModule('sitebar/catalogue','index',$arr);
		
		//$this->data['leftsitebar']['dknhantinh'] = $this->loadModule('sitebar/dangkynhantin');
		
		//$this->data['leftsitebar']['exchange'] = $this->loadModule('sitebar/exchange');
		
		$this->data['leftsitebar']['hitcounter'] = $this->loadModule('sitebar/hitcounter');
		
		//Rigth sitebar
		$this->data['rightsitebar']['cart'] = $this->loadModule('sitebar/cart');
		$this->data['rightsitebar']['login'] = $this->loadModule('sitebar/login');
		$this->data['rightsitebar']['supportonline'] = $this->loadModule('sitebar/supportonline');
		
		$template = array(
						  'template' => "sitebar/news.tpl",
						  'width' => 50,
						  'height' =>50
						  
						  );
		$arr = array('tin-tuc-san-pham',10,'',$template);
		$this->data['rightsitebar']['newsproduct'] = $this->loadModule('sitebar/news','index',$arr);
		$this->data['rightsitebar']['weblink'] = $this->loadModule('sitebar/weblink');
		//$this->data['rightsitebar']['search'] = $this->loadModule('sitebar/search');
		
		//$this->data['rightsitebar']['banner'] = $this->loadModule('sitebar/banner');
		//$this->data['rightsitebar']['question'] = $this->loadModule('sitebar/question');
	}
	
	function getHomeMedias($mediatype)
	{
		
		$this->load->model('core/media');
		//$siteid = $this->member->getSiteId();
		//$sitemaps = $this->model_core_sitemap->getListByModule("module/product", $siteid);
		//$arrsitemapid = $this->string->matrixToArray($sitemaps,"sitemapid");
		$queryoptions = array();
		$queryoptions['mediaparent'] = '';
		$queryoptions['mediatype'] = $mediatype;
		$queryoptions['refersitemap'] = '%';
		$data = $this->model_core_media->getPaginationList($queryoptions,$step=0,$to=0);
		
		return $data;
	}
	
	function getProduct($status)
	{
		$this->load->model('core/media');
		//$siteid = $this->member->getSiteId();
		//$sitemaps = $this->model_core_sitemap->getListByModule("module/product", $siteid);
		//$arrsitemapid = $this->string->matrixToArray($sitemaps,"sitemapid");
		$queryoptions = array();
		$queryoptions['mediaparent'] = '';
		$queryoptions['mediatype'] = 'module/product';
		$queryoptions['refersitemap'] = '%';
		$queryoptions['groupkeys'] = $status;
		$data = $this->model_core_media->getPaginationList($queryoptions, $step=0, $to=0);
		
		return $data;
	}
}
?>