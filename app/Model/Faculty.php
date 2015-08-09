<?php
App::uses('AppModel','Model');

class Faculty extends AppModel {

	public $hasMany = array(
		'Facrelation' => array(
			'classname' => 'Facrelation',
			'foreignKey' => 'faculty_id',
			//dependent == 従属性 
			//true=>従属してる=>BがA(this)に従属してる時、Aを消そうとしても従属してきているBが邪魔して消せない。
			//false=>A,Bは独立=>Aを削除するとAに紐づいていたBも消える
			'dependent' => false

			)
		);

	
}