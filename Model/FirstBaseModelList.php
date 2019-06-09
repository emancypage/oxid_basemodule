<?php

namespace AppWeb\BaseModule\Model;


use OxidEsales\Eshop\Core\Model\ListModel;

class FirstBaseModelList extends ListModel
{
    protected $_sCoreTable = 'appweb_firstbasemodel';

    protected $_sObjectsInListName = \AppWeb\BaseModule\Model\FistBaseModel::class;

}