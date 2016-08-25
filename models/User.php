<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "evrnt_user".
 *
 * @property integer $id
 * @property string $username
 * @property string $name
 * @property string $surname
 * @property string $password
 * @property string $salt
 * @property string $access_token
 * @property string $create_date
 */
class User extends \yii\db\ActiveRecord
{
    const USERNAME_MAX_LENGTH = 128,
        NAME_SURNAME_MAX_LENGTH = 45,
        PASSWORD_SALT_ACCESSTOKEN_MAX_LENGTH = 255;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'evrnt_user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'name', 'surname', 'password', 'salt'], 'required'],
            [['create_date'], 'safe'],
            [['username'], 'string', 'max' => self::USERNAME_MAX_LENGTH],
            [['name', 'surname'], 'string', 'max' => self::NAME_SURNAME_MAX_LENGTH],
            [['password', 'salt', 'access_token'], 'string', 'max' => self::PASSWORD_SALT_ACCESSTOKEN_MAX_LENGTH],
            [['username'], 'unique'],
            [['access_token'], 'unique'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'username' => Yii::t('app', 'Username'),
            'name' => Yii::t('app', 'Имя'),
            'surname' => Yii::t('app', 'Фамилия'),
            'password' => Yii::t('app', 'Пароль'),
            'salt' => Yii::t('app', 'Соль'),
            'access_token' => Yii::t('app', 'Access Token'),
            'create_date' => Yii::t('app', 'Дата создания'),
        ];
    }

    /**
     * @inheritdoc
     * @return \app\models\query\UserQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \app\models\query\UserQuery(get_called_class());
    }
}
