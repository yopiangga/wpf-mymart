<?php

namespace backend\models;

use yii\base\Model;
use yii\web\UploadedFile;

class ItemImage extends Model{

    public $file1;

    public function rules(){
        return[
            [['file1'], 'file', 'extensions' => 'gif, jpg']
        ];
    }
}