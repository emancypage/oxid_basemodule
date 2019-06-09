<?php


namespace AppWeb\BaseModule\Controller\Admin;


use OxidEsales\Eshop\Application\Controller\Admin\AdminListController;

class FirstListController extends AdminListController
{
    protected $_sThisTemplate = 'app-web/oxid_basemodule/views/admin/tpl/appweb_first_list.tpl';

    public function render()
    {
        return parent::render();
    }

    public function getSortingDirection(string $sortingField)
    {
        return 'asc';
    }
}