<?php
/* @var $this Coautor3Controller */
/* @var $model Coautor3 */

$this->breadcrumbs=array(
	'Coautor3s'=>array('index'),
	$model->name=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Coautor3', 'url'=>array('index')),
	array('label'=>'Create Coautor3', 'url'=>array('create')),
	array('label'=>'View Coautor3', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Coautor3', 'url'=>array('admin')),
);
?>

<h1>Update Coautor3 <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>