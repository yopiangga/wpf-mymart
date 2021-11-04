<?php

use yii\bootstrap4\LinkPager;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $searchModel frontend\models\ItemSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Items';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="item-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <h4>Owner : Alfian Prisma Yopiangga</h4>

    <form action="index">
        <select name="category">
            <option value="0">Semua</option>
            <?php 
                foreach($categorys as $category){
            ?>
                <option value="<?=$category->id?>"><?=$category->name?></option>

             <?php   } ?>
        </select>
        
        <button type="submit">Search</button>
    </form>

    <div class="mt-5 row">
        <?php foreach ($items as $item) { ?>
            <div class="card mx-2 mb-3" style="width: 18rem;">
                <img src="<?= Yii::$app->request->baseUrl ?>./../../uploads/<?= $item->image ?>" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title"><?= $item->name ?></h5>
                    <p class="card-text"><?= $item->price ?></p>
                    <p>
                        <?php if(Yii::$app->user->id == null) { ?>

                        <?php } else {?>
                            <?= Html::a('Order Item', ["customer/order?id=" . $item->id], ['class' => 'btn btn-success']) ?>
                        <?php } ?>
                    </p>
                </div>
            </div>
        <?php } ?>

    </div>
        
    <?php 
        echo LinkPager::widget([
            'pagination' => $pages
        ])
    ?>

</div>