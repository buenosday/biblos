<?php
/* @var $this Reader4Controller */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Reader4s',
);

$this->menu=array(
	array('label'=>'Create Reader4', 'url'=>array('create')),
	array('label'=>'Manage Reader4', 'url'=>array('admin')),
);
?>

<h1>Reader4s</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
