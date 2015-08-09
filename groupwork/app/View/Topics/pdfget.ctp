<div class="row">
	<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2">
		<h2 class="form text-center">get KAKOMON</h2>
		<div class="form-group">
			<?php echo $this->Form->create('Topic'); ?>
		</div>				
		<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'select','class' => 'form-control','label'=>'大学名')); ?>
		</div>
		<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'select','class' => 'form-control','label'=>'学部')); ?>
		</div>
		<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'select','class' => 'form-control','label'=>'学科')); ?>
		</div>
		<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'select','class' => 'form-control','label'=>'講義名')); ?>
		</div>
		<div class="form-group">
			<?php echo $this->Form->input('content',
			array('type' => 'password','class' => 'form-control','label'=>'パスワード')); ?>
		</div>
		<div class="form-group">
			<?php echo $this->Form->submit('search',array('class' => 'form-control')); ?>
		</div>
		<div>
			<?php echo $this->Form->end(); ?>
		</div>
	</div>
</div>
