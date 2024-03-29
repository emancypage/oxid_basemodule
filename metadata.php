<?php

/* More info about all sections: https://docs.oxid-esales.com/developer/en/6.1/modules/skeleton/metadataphp/version21.html */
/**
 * Metadata version.
 */
$sMetadataVersion = '2.1';

$aModule = array(
    'id' => 'appweboxidbasemodule',
    'title' => 'AppWeb Base Module',
    'description' => array(
        'de' => 'Standard-Modulbeschreibung',
        'en' => 'Default module description',
    ),
    'thumbnail' => 'logo.png',
    'version' => '1.0.0',
    'author' => 'AppWeb',
    'url' => 'https://app-web.pl',
    'email' => 'kontakt@app-web.pl',
    'extend' => array(),
    'controllers' => array(
        'appweb_first_submenu_cl' => \AppWeb\BaseModule\Controller\Admin\FirstSubmenuController::class,
        'appweb_first_list' => \AppWeb\BaseModule\Controller\Admin\FirstListController::class,
        'appweb_first_tab_main' => \AppWeb\BaseModule\Controller\Admin\FirstMainTabController::class,
    ),
    'templates' => array(
        'app-web/oxid_basemodule/views/admin/tpl/first_list.tpl' => 'app-web/oxid_basemodule/views/admin/tpl/first_list.tpl',
        'app-web/oxid_basemodule/views/admin/tpl/first_submenu.tpl' => 'app-web/oxid_basemodule/views/admin/tpl/first_submenu.tpl',
        'app-web/oxid_basemodule/views/admin/tpl/first_list_main.tpl' => 'app-web/oxid_basemodule/views/admin/tpl/first_list_main.tpl',
        'app-web/oxid_basemodule/views/admin/tpl/first_list_overview.tpl' => 'app-web/oxid_basemodule/views/admin/tpl/first_list_overview.tpl',
    ),
    'blocks' => array(),
    'events' => array(
        'onActivate' => '\AppWeb\BaseModule\Event\Events::onActivate',
        'onDeactivate' => '\AppWeb\BaseModule\Event\Events::onDeactivate',
    ),
    'settings' => array(),
);
