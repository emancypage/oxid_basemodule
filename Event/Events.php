<?php
namespace AppWeb\BaseModule\Event;

use OxidEsales\Eshop\Core\DatabaseProvider;
use OxidEsales\Eshop\Core\DbMetaDataHandler;
use OxidEsales\Eshop\Core\Exception\DatabaseConnectionException;
use OxidEsales\Eshop\Core\Exception\DatabaseErrorException;
use OxidEsales\Eshop\Core\Registry;

class Events
{
    public static function onActivate()
    {
        self::createDbTable();
        self::addMocksToTable();
    }

    public static function onDeactivate()
    {
    }

    private static function createDbTable()
    {
        $sQuery = "CREATE TABLE `appweb_firstbasemodel` (
            `OXID` CHAR(32) NOT NULL DEFAULT '',
            `LISTNO` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'List number',
            `OXUSER` CHAR(32) CHARACTER SET 'latin1' COLLATE 'latin1_general_ci' NOT NULL DEFAULT '' COMMENT 'Shop user oxid',
            `SHOPID` INT(11) NOT NULL DEFAULT 1 COMMENT 'Shop id',
            `TIMESTAMP` TIMESTAMP NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'File creation timestamp',
            PRIMARY KEY (`OXID`),
            KEY `LISTNO` (`LISTNO`)
        );
        ";

        $oDbMetadataHandler = oxNew(DbMetaDataHandler::class);

        if (!$oDbMetadataHandler->tableExists('appweb_firstbasemodel')) {
            try {
                $oDb = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);
                $oDb->execute($sQuery);
                return true;
            } catch (DatabaseErrorException $ex) {
                Registry::getLogger()->alert($ex->getMessage(), [$ex]);
                return false;
            } catch (DatabaseConnectionException $ex) {
                Registry::getLogger()->alert($ex->getMessage(), [$ex]);
                return false;
            }
        }

        return false;
    }

    private static function addMocksToTable()
    {
        $sQueryInsert = "INSERT INTO `appweb_firstbasemodel` (OXID, OXUSER, SHOPID, TIMESTAMP) VALUES 
            ('9ar468c5c4f7fg821e9ad140fd3742c3', '34r468c5c4f7fghg2e9ad140fd3742c3', 1, '2019-06-07 12:34:53'),
            ('02l4ldk5c4f7fg34pe9ad1gl3d0j5fke', '08ki3dk6s4f7fg34pe9ad1gl3kwi2fke', 1, '2019-06-08 13:34:53'),
            ('los968c5c4kfjn821e9ad140fd37847j', 'shp969fk34kfjn821e9sds00fd37847j', 1, '2019-06-09 14:34:53');
        ";

        $oDbMetadataHandler = oxNew(DbMetaDataHandler::class);

        if ($oDbMetadataHandler->tableExists('appweb_firstbasemodel')) {
            try {
                $oDb = DatabaseProvider::getDb(DatabaseProvider::FETCH_MODE_ASSOC);
                $oDb->execute($sQueryInsert);
                return true;
            } catch (DatabaseErrorException $ex) {
                Registry::getLogger()->alert($ex->getMessage(), [$ex]);
                return false;
            } catch (DatabaseConnectionException $ex) {
                Registry::getLogger()->alert($ex->getMessage(), [$ex]);
                return false;
            }
        }

        return false;
    }
}