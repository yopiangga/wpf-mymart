<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\OrderItem */

$this->title = 'Update Order Item: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Order Items', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="order-item-update">

    <h1><?= Html::encode($this->title) ?></h1>
    <h4>Owner : Alfian Prisma Yopiangga</h4>
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
