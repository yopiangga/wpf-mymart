<?php

namespace frontend\controllers;

use frontend\models\Item;
use frontend\models\ItemSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use Yii;
use yii\filters\AccessControl;
use frontend\models\ItemCategory;
use frontend\models\Item as ItemModel;
use yii\data\Pagination;

/**
 * ItemController implements the CRUD actions for Item model.
 */
class ItemController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all Item models.
     * @return mixed
     */
    public function actionIndex()
    {
        $query = ItemModel::find()->all();

        return $this->render('index', [
            'items' => $query,
        ]);
    }

    // public function actionIndex()
    // {
    //     $categorys = ItemCategory::find()->all();

    //     $id = Yii::$app->getRequest()->getQueryParam('category');

    //     if ($id == 0 || $id == null) {
    //         $duration = 10;
    //         $query = ItemModel::getDb()->cache(function ($db) {
    //             return ItemModel::find();
    //         }, $duration);
    //         // $query = ItemModel::find();
    //     } else {
    //         $query = ItemModel::find()->where(['category_id' => $id]);
    //     }


    //     $pages = new Pagination([
    //         'totalCount' => $query->count(),
    //         'pageSize' => 9
    //     ]);

    //     $items = $query->offset($pages->offset)->limit($pages->limit)->all();

    //     Yii::$app->MyComponent->trigger(Yii::$app->MyComponent::EVENT_STATISTIC);

    //     return $this->render('index', [
    //         'items' => $items,
    //         'pages' => $pages,
    //         'categorys' => $categorys
    //     ]);
    // }

    /**
     * Displays a single Item model.
     * @param int $id ID
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }



    /**
     * Creates a new Item model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Item();

        if ($this->request->isPost) {
            if ($model->load($this->request->post()) && $model->save()) {
                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Item model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($this->request->isPost && $model->load($this->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Item model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Item model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return Item the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Item::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
