<?php
class ControllerCommonFooter extends Controller
{
	public function index()
	{
		
		$arr=array("thong-tin-footer");
		$this->data['footer'] = $this->loadModule('module/information','index',$arr);
		
		$this->load->model("core/category");
		$this->load->model("core/media");
		$this->data['brands'] = $this->model_core_category->getChild("nhanhieu");
		foreach($this->data['brands'] as $key => $item)
		{
			$mediaid = $this->member->getSiteId()."cat".$item['categoryid'];
			$media = $this->model_core_media->getItem($mediaid);
			
			@$imagethumbnail = HelperImage::resizePNG($media['imagepath'], 0, 60);
			$this->data['brands'][$key]['imagethumbnail'] = $imagethumbnail;
		}
		
		$this->id="footer";
		$this->template="common/footer.tpl";
		$this->render();
	}
}
?>