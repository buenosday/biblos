<?php
/* @var $this Reader4Controller */
/* @var $model Reader4 */

$this->breadcrumbs=array(
	'Reader4s'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Reader4', 'url'=>array('index')),
	array('label'=>'Manage Reader4', 'url'=>array('admin')),
);
?>

<h1>Create Reader4</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>