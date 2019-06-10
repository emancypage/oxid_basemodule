<?php


namespace AppWeb\BaseModule\Controller\Admin;

use OxidEsales\Eshop\Application\Controller\Admin\AdminDetailsController;

class FirstMainTabController extends AdminDetailsController
{
    protected $_sThisTemplate = 'app-web/oxid_basemodule/views/admin/tpl/first_list_overview.tpl';
    public function render()
    {
        $sEditObjectId = $this->getEditObjectId();

        if (-1 != $sEditObjectId) {
            $this->_sThisTemplate = 'app-web/oxid_basemodule/views/admin/tpl/first_list_main.tpl';
        }

        return parent::render();
    }


}