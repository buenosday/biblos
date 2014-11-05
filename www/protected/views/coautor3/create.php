<?php
/* @var $this Coautor3Controller */
/* @var $model Coautor3 */

$this->breadcrumbs=array(
	'Coautor3s'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Coautor3', 'url'=>array('index')),
	array('label'=>'Manage Coautor3', 'url'=>array('admin')),
);
?>

<h1>Create Coautor3</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>