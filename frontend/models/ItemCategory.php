<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "item_category".
 *
 * @property int $id
 * @property string $name
 * @property int $parent_category
 */
class ItemCategory extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'item_category';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'parent_category'], 'required'],
            [['parent_category'], 'integer'],
            [['name'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'parent_category' => 'Parent Category',
        ];
    }
}
