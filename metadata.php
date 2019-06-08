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
    'controllers' => array(),
    'templates' => array(),
    'blocks' => array(),
    'events' => array(
        'onActivate' => '\AppWeb\BaseModule\Event\Events::onActivate',
        'onDeactivate' => '\AppWeb\BaseModule\Event\Events::onDeactivate',
    ),
    'settings' => array(),
);
