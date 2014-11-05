<?php
/* @var $this RandomBook5Controller */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Random Book5s',
);

$this->menu=array(
	array('label'=>'Create RandomBook5', 'url'=>array('create')),
	array('label'=>'Manage RandomBook5', 'url'=>array('admin')),
);
?>

<h1>Random Book5s</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
