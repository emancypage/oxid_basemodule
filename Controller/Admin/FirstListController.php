<?php


namespace AppWeb\BaseModule\Controller\Admin;


use OxidEsales\Eshop\Application\Controller\Admin\AdminListController;

class FirstListController extends AdminListController
{
    protected $_sListClass = \AppWeb\BaseModule\Model\FirstBaseModel::class;

    protected $_sListType = \AppWeb\BaseModule\Model\FirstBaseModelList::class;

    protected $_sThisTemplate = 'app-web/oxid_basemodule/views/admin/tpl/appweb_first_list.tpl';

    public function getSortingDirection(string $sortingField)
    {
        return 'asc';
    }
}