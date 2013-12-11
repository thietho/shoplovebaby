<?php
class ControllerSitebarBrand extends Controller
{
	public function index($sitemapid = "",$status = "" )
	{
		$this->load->model("core/category");
		$this->data['brands'] = $this->model_core_category->getChild("nhanhieu");
		
		$this->id="content";
		$this->template="sitebar/brand.tpl";
		$this->render();
	}
	
	
}
?>