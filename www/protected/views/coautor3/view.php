<?php
/* @var $this Coautor3Controller */
/* @var $model Coautor3 */

$this->breadcrumbs=array(
	'Coautor3s'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Coautor3', 'url'=>array('index')),
	array('label'=>'Create Coautor3', 'url'=>array('create')),
	array('label'=>'Update Coautor3', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Coautor3', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Coautor3', 'url'=>array('admin')),
);
?>

<h1>View Coautor3 #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'count_author_id',
	),
)); ?>
