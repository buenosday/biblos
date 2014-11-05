<?php
/* @var $this RandomBook5Controller */
/* @var $data RandomBook5 */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id), array('view', 'id'=>$data->id)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('fun1')); ?>:</b>
	<?php echo CHtml::encode($data->fun1); ?>
	<br />


</div>