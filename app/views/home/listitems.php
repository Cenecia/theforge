<?php
	include 'header.php';

?>
  
<div class="container-fluid">
	<br/>
		<div class="row sticky-top">
			<div class="col-12">
				<a class="btn btn-primary" href="<?=ROOT_DIR?>/home"><i class="fa fa-home"></i> HOME</a>
			</div>
		</div>
		<div class="row">
		<?php
			foreach($data['items'] as $item){
		?>
		
			<div class="col-12 col-md-6">
				<div class="card col-12 text-white bg-dark" style="min-height:160px; margin-top:5px;">
				  <div class="card-body">
					<h4 class="card-title"><?=$item['item']->name?></h4>
					<p class="card-text"><?=$item['item']->description?></p>
					<p><img style="max-width:300px;max-height:100px;" src="<?=ROOT_DIR?>/public/img/<?=$item['item']->imageurl?>" /></p>
					<ul class="list-group">
					<?php
						foreach($item['materials'] as $material){
					?>
						<li class="list-group-item list-group-item-secondary <?=$material->tier_name?> font-weight-bold">
							<span class="badge badge-dark"><?=$material->quantity?>x</span> <span class="test" data-toggle="tooltip" data-placement="right" title="<?=$material->description?>"><?=$material->name?></span>
						</li>
					<?php
						}
					?>
					</ul>
				  </div>
				</div>
			</div>
		<?php
			}
		?>
		</div>
</div>
 
<?php
	include 'footer.php';
?>

<script type="text/javascript">
	$(document).ready(function () {
		$('.test').tooltip();
	});
 </script>