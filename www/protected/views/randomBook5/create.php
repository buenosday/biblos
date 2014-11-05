<?php
/* @var $this RandomBook5Controller */
/* @var $model RandomBook5 */

$this->breadcrumbs=array(
	'Random Book5s'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List RandomBook5', 'url'=>array('index')),
	array('label'=>'Manage RandomBook5', 'url'=>array('admin')),
);
?>

<h1>Create RandomBook5</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>