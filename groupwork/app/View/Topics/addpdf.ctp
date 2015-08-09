<div class="row">
	<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2">
		<h2 class="form text-center">submit KAKOMON</h2>
		<div class="form-group">
			<?php echo $this->Form->create('Topic'); ?>
		</div>

		<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'select','class' => 'form-control','label'=>'大学名')); ?>
		</div>
				<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'select','class' => 'form-control','label'=>'学部名')); ?>
		</div>
						<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'select','class' => 'form-control','label'=>'学科名')); ?>
		</div>
						<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'select','class' => 'form-control','label'=>'講義名')); ?>
		</div>
			<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'file','class' => 'form-control','label'=>'テストファイル')); ?>
		</div>
		<div class="form-group">
			<?php echo $this->Form->input('category_id', array('type' => 'select','class' => 'form-control')); ?>
		</div>
		<div class="form-group">
			<?php echo $this->Form->submit('登録',array('class' => 'form-control')); ?>
		</div>
		<div>
			<?php echo $this->Form->end(); ?>
		</div>
	</div>
</div>
