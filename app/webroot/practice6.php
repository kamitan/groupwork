<?php
$userdata[]=array(
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
	);

foreach ($userdata as $key => $value) {
	# code...
	echo "id".$value['id']." : ";
	echo $value['title']."<br>";
}
?>