<?php


namespace AppWeb\BaseModule\Model;

use OxidEsales\Eshop\Application\Model\User;
use OxidEsales\Eshop\Core\Model\BaseModel;

class FirstBaseModel extends BaseModel
{
    protected $_sCoreTable = 'appweb_firstbasemodel';

    protected $_sClassName = \AppWeb\BaseModule\Model\FirstBaseModel::class;

    public function getBaseModelNo()
    {
        return $this->appweb_firstbasemodel__listno->value;
    }

    public function getUserName()
    {
        $oUser = oxNew(User::class);
        if ($oUser->load($this->appweb_firstbasemodel__oxuser->value)) {
            return $oUser->oxuser__oxusername->value;
        }

        return false;
    }

}