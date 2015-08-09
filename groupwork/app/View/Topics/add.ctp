<div class="row">
	<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2">
		<h2 class="form text-center">welcome to guest</h2>
		<div class="form-group">
			<?php echo $this->Form->create('Topic'); ?>
		</div><br>
		<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'text','class' => 'form-control','label'=>'名前')); ?>
		</div>
		<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'text','class' => 'form-control','label'=>'ユーザー名(英数字8~16文字)')); ?>
		</div>
		<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'text','class' => 'form-control','label'=>'メールアドレス(大学側提供address)')); ?>
		</div>
<div class="form-group">
			<?php echo $this->Form->input('content',
			array('type' => 'password','class' => 'form-control','label'=>'パスワード')); ?>
		</div>
		<div class="form-group">
			<?php echo $this->Form->input('content',
			array('type' => 'password','class' => 'form-control','label'=>'もう一度パスワードを入力してください。(確認用)')); ?>
		</div>				
		<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'select','class' => 'form-control','label'=>'所属大学')); ?>
		</div>
				<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'select','class' => 'form-control','label'=>'所属学部')); ?>
		</div>
						<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'select','class' => 'form-control','label'=>'所属学科')); ?>
		</div>
								<div class="form-group">
			<?php echo $this->Form->input('title',
			array('type' => 'file','class' => 'form-control','label'=>'アイコン')); ?>
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
