<div class="row">
	<div class="col-sm-offset-1 col-sm-7 col-xs-offset-1 col-xs-10">
		<?php if ($this->Session->check('Message.flash')) : ?>
			<article class="row">
				<div class="alert alert-success">
					<?php echo $this->Session->flash(); ?>
				</div>
			</article>
		<?php endif; ?>
		<a href="http://www.yahoo.co.jp/">
				     <INPUT type="Button" type='image' src="http://www.oyawaza.com/gif/study3gaiyou.png" alt="送信する" align="middle" value="過去問を投稿する" name="botan3" style="color:#0000FF; font-size:1.5em; font-weight:bold; WIDTH: 300px; HEIGHT: 200px"</a>
	    <a href="https://www.google.co.jp/?gws_rd=ssl">
				     <INPUT type="Button" value="過去問を探す" name="botan3" style="color:#0000FF; font-size:1.5em; font-weight:bold; WIDTH: 300px; HEIGHT: 200px"></a>
				</div>
			</article>
	</div>
	<?php echo $this->element('aside'); ?>
</div>