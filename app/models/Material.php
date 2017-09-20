<?php

class Material extends Model
{
	public $id;
	public $name;
	public $tier;
	public $description;
	public $selectedQty = 0;
	
	public function getAllMaterials()
	{
		$pdo = getPdo();
		$materials = $pdo->query("SELECT m.*,t.name as tier_name FROM material m JOIN tier t ON m.tierID = t.id")->fetchAll(PDO::FETCH_OBJ);
		return $materials;
	}
}