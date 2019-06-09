[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign box="list"}]
[{assign var="where" value=$oView->getListFilter()}]

[{if $readonly}]
    [{assign var="readonly" value="readonly disabled"}]
    [{else}]
    [{assign var="readonly" value=""}]
    [{/if}]
<style>
    .text-danger{
        color: #a94442;
    }

    .text-success{
        color: #3c763d;
    }
</style>

<script type="text/javascript">
	<!--
	window.onload = function () {
		top.reloadEditFrame();
		[{if $updatelist == 1}]
		top.oxid.admin.updateList('[{$oxid}]');
		[{/if}]
	}
	//-->
</script>

<div id="liste">
    <form name="search" id="search" action="[{$oViewConf->getSelfLink()}]" method="post">
        [{include file="_formparams.tpl" cl="appweb_first_list" lstrt=$lstrt actedit=$actedit oxid=$oxid fnc="" language=$actlang editlanguage=$actlang}]
        <table cellspacing="0" cellpadding="0" border="0" width="100%">
            <colgroup>
                [{block name="admin_order_list_colgroup"}]
            <col width="5%">
            <col width="25%">
            <col width="10%">
            <col width="10%">
            <col width="24%">
            <col width="24%">
            <col width="2%">
                [{/block}]
            </colgroup>
            <tr class="listitem">
                [{block name="admin_order_list_filter"}]

                <td valign="top" class="listfilter" height="20">
                    <div class="r1"><div class="b1">
                            <input class="listedit" type="text" size="7" maxlength="128" name="where[appweb_firstbasemodel][listno]" value="[{$where.appweb_firstbasemodel.listno}]">
                        </div></div>
                </td>
                <td valign="top" class="listfilter" height="20">
                    <div class="r1"><div class="b1">
                            <input class="listedit" type="text" size="7" maxlength="128" name="where[oxuser][oxusername]" value="[{$where.oxuser.oxusername}]">
                        </div></div>
                </td>
                [{/block}]
            </tr>
            <tr>
                [{block name="appweb_base_admin_list_sorting"}]
                <td class="listheader first" height="15">
                    <a href="Javascript:top.oxid.admin.setSorting( document.search, 'appweb_firstbasemodel', 'listno', 'asc');document.search.submit();"
                       class="listheader">No.</a>
                </td>
                <td class="listheader first" height="15">
                    <a href="Javascript:top.oxid.admin.setSorting( document.search, 'oxuser', 'oxusername', 'asc');document.search.submit();"
                       class="listheader">User</a>
                </td>
                [{/block}]
            </tr>

            [{assign var="blWhite" value=""}]
            [{assign var="_cnt" value=0}]
            [{foreach from=$mylist item=listitem}]
            [{assign var="_cnt" value=$_cnt+1}]
            <tr id="row.[{$_cnt}]">
                [{block name="admin_order_list_item"}]
                [{if $listitem->oxorder__oxstorno->value == 1}]
                [{assign var="listclass" value=listitem3}]
                [{else}]
                [{if $listitem->blacklist == 1}]
                [{assign var="listclass" value=listitem3}]
                [{else}]
                [{assign var="listclass" value=listitem$blWhite}]
                [{/if}]
                [{/if}]
                [{if $listitem->getId() == $oxid}]
                [{assign var="listclass" value=listitem4}]
                [{/if}]
                <td valign="top" class="[{$listclass}]" height="15">
                    <div class="listitemfloating">&nbsp;<a
                                href="Javascript:top.oxid.admin.editThis('[{$listitem->getId()}]');"
                                class="[{$listclass}]">[{$listitem->getBaseModelNo()}]</a></div>
                </td>
                <td valign="top" class="[{$listclass}]" height="15">
                    <div class="listitemfloating">&nbsp;<a
                                href="Javascript:top.oxid.admin.editThis('[{$listitem->getId()}]');"
                                class="[{$listclass}]">[{$listitem->getUserName()}]</a></div>
                </td>
                [{/block}]
            </tr>
            [{if $blWhite == "2"}]
            [{assign var="blWhite" value=""}]
            [{else}]
            [{assign var="blWhite" value="2"}]
            [{/if}]
            [{/foreach}]
            [{include file="pagenavisnippet.tpl" colspan="6"}]
        </table>
    </form>
</div>

[{include file="pagetabsnippet.tpl"}]

</body>
</html>

