<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\ItemSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Items';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="item-index">

    <div class="mt-5 row">
        <?php foreach ($items as $item) { ?>
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
               <div class="sport_product">
                  <figure><img src="<?= Yii::$app->request->baseUrl ?>./../../uploads/<?= $item->image ?>" alt="img" /></figure>
                  <h3> Rp <strong class="price_text"><?= $item->price ?></strong></h3>
                  <h4><?= $item->name ?></h4>
                  <p>
                        <?php if(Yii::$app->user->id == null) { ?>

                        <?php } else {?>
                            <?= Html::a('Order Item', ["customer/order?id=" . $item->id], ['class' => 'btn btn-primary']) ?>
                        <?php } ?>
                    </p>
               </div>
            </div>
        <?php } ?>

    </div>


</div>
