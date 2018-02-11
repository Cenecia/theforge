<div class="col-12 col-md-6">
	<div class="card col-12 text-white bg-dark" style="min-height:160px; margin-top:5px;">
	  <div class="card-body">
		<h4 class="card-title"><?=$item['item']->name?></h4>
		<p class="card-text"><?=$item['item']->description?></p>
		<?php 
			if($item['item']->imageurl){
		?>
		<p><img style="max-width:300px;max-height:100px;" src="<?=ROOT_DIR?>/public/img/<?=$item['item']->imageurl?>" /></p>
		<?php
			}
		?>
		<ul class="list-group">
		<?php
			$craftable = true;
			foreach($item['materials'] as $material){
				$listItemClass = "list-group-item-danger";
				if($material->selectedQty > 0){
					$listItemClass = $material->selectedQty >= $material->quantity ? "list-group-item-success" : "list-group-item-warning";
				}
		?>
			<li class="list-group-item <?=$listItemClass?> <?=$material->tier_name?> font-weight-bold">
				<span class="badge badge-dark"><?=$material->selectedQty?> / <?=$material->quantity?>x</span> <span class="test" data-toggle="tooltip" data-placement="right" title="<?=$material->description?>"><?=$material->name?></span>
			</li>
		<?php
			}
		?>
		</ul>
	  </div>
	</div>
</div>