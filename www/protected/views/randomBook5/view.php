<?php
/* @var $this RandomBook5Controller */
/* @var $model RandomBook5 */

$this->breadcrumbs=array(
	'Random Book5s'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List RandomBook5', 'url'=>array('index')),
	array('label'=>'Create RandomBook5', 'url'=>array('create')),
	array('label'=>'Update RandomBook5', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete RandomBook5', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage RandomBook5', 'url'=>array('admin')),
);
?>

<h1>View RandomBook5 #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'fun1',
	),
)); ?>
