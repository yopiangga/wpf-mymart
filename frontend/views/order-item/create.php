<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\OrderItem */

$this->title = 'Create Order Item';
$this->params['breadcrumbs'][] = ['label' => 'Order Items', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="order-item-create">

    <h1><?= Html::encode($this->title) ?></h1>
    <h4>Owner : Alfian Prisma Yopiangga</h4>
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
