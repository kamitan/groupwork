<?php

App::uses('AppController', 'Controller');

class PagesController extends AppController {

	public $uses = array('Category','Comment','Topic','User');



	public function index() {
		/*$userdata[]=array(
			'id'=>0,
			'user_name'=>'subaru',
			'title'=>'title0',
			'content'=>'content0',
			);
		$userdata[]=array(
			'id'=>1,
			'user_name'=>'subaru',
			'title'=>'title1',
			'content'=>'content1',
			);
		$userdata[]=array(
			'id'=>2,
			'user_name'=>'subaru',
			'title'=>'title2',
			'content'=>'content2',
			);
		$userdata[]=array(
			'id'=>3,
			'user_name'=>'subaru',
			'title'=>'title3',
			'content'=>'content3',
			);*/
			
		$topics = $this->Topic->find('all');
		$this->set('topics',$topics);
		//debug($topics); //Cakephpの中で定義されている関数
	}

	public function detail() {
	}

}