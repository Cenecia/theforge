<?php

class Item extends Model
{
	public $id;
	public $name;
	public $description;
	public $partialCraftable = false;
	public $numEnoughMats = 0;
	public $craftable = false;
	
	public function getAllItems()
	{
		$pdo = getPdo();
		$items = array();
		$results = $pdo->query("SELECT * FROM item")->fetchAll(PDO::FETCH_OBJ);
		foreach($results as $item){
			$items[$item->id]['item'] = $item;
		}
		return $items;
	}
	
	public function getMaterials()
	{
		$pdo = getPdo();
		$item_materials = $pdo->query("SELECT m.id, itemID, m.name, quantity, description, t.name as tier_name
									   FROM item_material im 
									   JOIN material m ON im.materialID = m.id
									   JOIN tier t ON m.tierID = t.id;")->fetchAll(PDO::FETCH_OBJ);
		return $item_materials;
	}
}