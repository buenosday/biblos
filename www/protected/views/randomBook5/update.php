<?php
/* @var $this RandomBook5Controller */
/* @var $model RandomBook5 */

$this->breadcrumbs=array(
	'Random Book5s'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List RandomBook5', 'url'=>array('index')),
	array('label'=>'Create RandomBook5', 'url'=>array('create')),
	array('label'=>'View RandomBook5', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage RandomBook5', 'url'=>array('admin')),
);
?>

<h1>Update RandomBook5 <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>