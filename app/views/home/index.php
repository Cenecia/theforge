<?php
	include 'header.php';
?>
  
<div class="container-fluid">
<?php
	if(isset($data['craftable'])){
?>
	
<?php
		if(sizeof($data['craftable']) > 0){
?>
		<hr/>
		<h3>You can create</h3>
		<div class = "row">
<?php
		foreach($data['craftable'] as $item){
			include '_itemRow.php';
		}
?>
		</div>
<?php
		}
		else{
?>
		<div class="col-12">
			<br/>
			<div class="alert alert-primary col-12 text-center font-weight-bold">You cannot create any items with the materials you selected</div>
		</div>
<?php
		}
?>
	
	<hr/>
<?php
		if(sizeof($data['partial']) > 0){
?>
	<h3>You can almost create</h3>
	<div class = "row">
<?php
		foreach($data['partial'] as $item){
			include '_itemRow.php';
		}
?>
	</div>
<?php
		}
?>
		<br/>
		<div class="row">
			<div class="col-12">
				<a class="btn btn-primary btn-block" href="<?=ROOT_DIR?>/home"><i class="fa fa-home"></i> HOME</a>
			</div>
		</div>
<?php
	}
	else{
?>
	<br/>
	<div class="row sticky-top">
		<div class="col-12">
			<button id="reset" class="btn btn-primary"><i class="fa fa-refresh"></i> RESET</button>
		</div>
	</div>
	<form method="POST">
		<div class="row">
			<?php
				foreach($data['materials'] as $material){
			?>
			<div class="col-12 col-md-6">
				<div class="card col-12" style="min-height:160px; margin-top:5px;">
				  <div class="card-body">
					<div class="btn-group-vertical float-right" style="width:60px;">
					  <button type="button" class="btn btn-secondary change-qty add" data-target="<?=$material->id?>"><i class="fa fa-plus" aria-hidden="true"></i></button>
					  <button id="qty<?=$material->id?>" type="button" class="btn btn-default font-weight-bold">0</button>
					  <button type="button" class="btn btn-secondary change-qty minus" data-target="<?=$material->id?>"><i class="fa fa-minus" aria-hidden="true"></i></button>
					</div>			  
					<h4 class="card-title <?=$material->tier_name?>"><?=$material->name?></h4>
					<p class="card-text"><?=$material->description?></p>
					<img style="max-width:300px;max-height:100px;" src="<?=ROOT_DIR?>/public/img/<?=$material->imageurl?>" />
					<input type="hidden" name="<?=$material->id?>" id="<?=$material->id?>" value="0" />
				  </div>
				</div>
			</div>
			<?php
				}
			?>
		</div>
		<br/>
		<button type="submit" class="btn btn-primary btn-block"><i class="fa fa-gavel" aria-hidden="true"></i> CRAFT <i class="fa fa-gavel" aria-hidden="true"></i></button>
		</form>
</div>
 
<?php
	}
	include 'footer.php';
?>

<script type="text/javascript">
	$(document).ready(function () {
		$(".change-qty").on("click", function(){
			targetid = $(this).attr("data-target");
			value = $("#"+targetid).val();
			if($(this).hasClass("add")){
				value++;
			}
			else if($(this).hasClass("minus")){
				value--;
			}
			if(value < 0){
				value = 0;
			}
			else if(value > 99){
				value = 99;
			}
			$("#"+targetid).val(value);
			$("#qty"+targetid).text(value);
		});
		$("#reset").on("click", function(){
			$(".change-qty").each(function(){
				targetid = $(this).attr("data-target");
				$("#"+targetid).val(0);
				$("#qty"+targetid).text(0);
			});
		});
		$('.test').tooltip();
	});
 </script>