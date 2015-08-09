<?php
App::uses('AppModel','Model');

// 学科
class Department extends AppModel {

	//学科：学科構成テーブル(Deprelation)＝１：多
	public $hasMany = array(
		'Deprelation' => array(
			'classname' => 'Deprelation',
			'foreignKey' => 'department_id',
			//dependent == 従属性 
			//true=>従属してる=>BがAに従属してる時、Aを消そうとしても従属してきているBが邪魔して消せない。
			//false=>A,Bは独立=>Aを削除するとAに紐づいていたBも消える
			'dependent' => false

			)
		);

}