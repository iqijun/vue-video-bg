<?php
namespace app\controllers;


use app\models\NavBar;
use yii\data\Pagination;

class NavbarController extends BaseController
{
    public $modelClass = 'app\models\NavBar';

    public function  actionFind(){
        $query = NavBar::find();
        $pagination = new Pagination([
            'defaultPageSize' => 1,
            'totalCount' => $query->count(),
        ]);

        $navBars = $query->offset($pagination->offset)
            ->limit($pagination->limit)
            ->all();
        return $navBars;
    }
}