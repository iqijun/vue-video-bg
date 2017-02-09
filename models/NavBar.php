<?php
namespace app\models;
use yii\db\ActiveRecord;

class  NavBar extends ActiveRecord
{
    static function tableName()
    {
        return "navbar";
    }
}