<?php
/* @var $this Reader4Controller */
/* @var $model Reader4 */

$this->breadcrumbs=array(
	'Reader4s'=>array('index'),
	$model->name,
);

$this->menu=array(
	array('label'=>'List Reader4', 'url'=>array('index')),
	array('label'=>'Create Reader4', 'url'=>array('create')),
	array('label'=>'Update Reader4', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete Reader4', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Reader4', 'url'=>array('admin')),
);
?>

<h1>View Reader4 #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'name',
		'count_reader_id',
	),
)); ?>
