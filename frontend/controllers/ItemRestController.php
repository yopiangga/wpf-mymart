<?php

namespace frontend\controllers;
use yii\rest\ActiveController;
/**
 * ItemController implements the CRUD actions for Item model.
 */
class ItemRestController extends ActiveController
{
    public $modelClass = 'frontend\models\Item';   
}
   