<?php
require_once 'config.php';

class Home extends Controller 
{
	public function index()
	{
		if($_POST){
			$materials = array();
			foreach($_POST as $id => $qty){
				if($qty > 0){
					$materials[filter_var($id, FILTER_VALIDATE_INT)] = filter_var($qty, FILTER_VALIDATE_INT);
				}
			}
			$item = $this->model('Item');
			$items = $item->getAllItems();
			$mats = $item->getMaterials();
			$craftable = array();
			$partial = array();
			foreach($mats as $mat){
				if(!isset($items[$mat->itemID]['item']->numEnoughMats)){
					$items[$mat->itemID]['item']->numEnoughMats = 0;
				}
				$mat->selectedQty = 0;
				$items[$mat->itemID]['materials'][$mat->id] = $mat;
				foreach($materials as $id => $qty){	
					if($mat->id == $id){
						$mat->selectedQty = $qty;
						$items[$mat->itemID]['materials'][$mat->id] = $mat;
						$items[$mat->itemID]['item']->partialCraftable = true;
						if($mat->selectedQty != 0 && $mat->selectedQty >= $mat->quantity){
							$items[$mat->itemID]['item']->numEnoughMats++;
						}
					}
				}
			}
			foreach($items as $item){
				if(!isset($item['item']->craftable)){
					$item['item']->craftable = false;
				}
				if(!isset($item['item']->partialCraftable)){
					$item['item']->partialCraftable = false;
				}
				if(!isset($item['item']->numEnoughMats)){
					$item['item']->numEnoughMats = 0;
				}
				if($item['item']->numEnoughMats == sizeof($item['materials'])){
					$item['item']->craftable = true;
					$craftable[] = $item;
				}
				elseif($item['item']->partialCraftable){
					$partial[] = $item;
				}
			}
			$data['craftable'] = $craftable;
			$data['partial'] = $partial;
		}
		$material = $this->model('Material');
		$data['materials'] = $material->getAllMaterials();
		$this->view('home/index', $data);
	}
	
	public function listItems()
	{
		$item = $this->model('Item');
		$items = $item->getAllItems();
		$mats = $item->getMaterials();
		foreach($mats as $mat){
			$items[$mat->itemID]['materials'][$mat->id] = $mat;
		}
		$data['items'] = $items;
		$this->view('home/listitems', $data);
	}
}