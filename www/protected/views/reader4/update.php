<?php
/* @var $this Reader4Controller */
/* @var $model Reader4 */

$this->breadcrumbs=array(
	'Reader4s'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Reader4', 'url'=>array('index')),
	array('label'=>'Create Reader4', 'url'=>array('create')),
	array('label'=>'View Reader4', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Reader4', 'url'=>array('admin')),
);
?>

<h1>Update Reader4 <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>