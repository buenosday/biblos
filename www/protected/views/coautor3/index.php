<?php
/* @var $this Coautor3Controller */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Coautor3s',
);

$this->menu=array(
	array('label'=>'Create Coautor3', 'url'=>array('create')),
	array('label'=>'Manage Coautor3', 'url'=>array('admin')),
);
?>

<h1>Coautor3s</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
