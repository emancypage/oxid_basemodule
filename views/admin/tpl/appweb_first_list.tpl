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
                            <input class="listedit" type="text" size="7" maxlength="128" name="where[kiracomplaints][kiranr]" value="[{$where.kiracomplaints.kiranr}]">
                        </div></div>
                </td>
                <td valign="top" class="listfilter" height="20">
                    <div class="r1"><div class="b1">
                            <input class="listedit" type="text" size="50" maxlength="128" name="where[oxuser][oxusername]" value="[{$where.oxuser.oxusername}]">
                        </div></div>
                </td>
                <td valign="top" class="listfilter" height="20">
                    <div class="r1"><div class="b1">
                            <input class="listedit" type="text" size="50" maxlength="128" name="where[oxorder][oxordernr]" value="[{$where.oxorder.oxordernr}]">
                        </div></div>
                </td>
                <td valign="top" class="listfilter first" height="20">
                    <div class="r1"><div class="b1">
                            <select name="status" class="statusselect" onChange="document.search.submit();">
                                <option value="-1" [{if $status == -1}]SELECTED[{/if}]style="color: #000000;">[{oxmultilang ident="ORDER_LIST_FOLDER_ALL"}]</option>
                                <option value="0" [{if $status == 0}]SELECTED[{/if}] style="color: [{$color}];">new</option>
                                <option value="1" [{if $status == 1}]SELECTED[{/if}] style="color: [{$color}];">accepted</option>
                                <option value="2" [{if $status == 2}]SELECTED[{/if}] style="color: [{$color}];">rejected</option>
                            </select>
                        </div></div>
                </td>
                <td valign="top" class="listfilter" height="20">
                    <div class="r1"><div class="b1">
                            <input class="listedit" type="text" size="40" maxlength="128" name="where[kiracomplaints][kiracreatedat]" value="[{$where.kiracomplaints.kiracreatedat}]">
                        </div></div>
                </td>
                <td valign="top" class="listfilter" height="20" colspan="2" nowrap>
                    <div class="r1"><div class="b1">
                            <div class="find"><input class="listedit" type="submit" name="submitit" value="[{oxmultilang ident="GENERAL_SEARCH"}]"></div>
                            <input class="listedit" type="text" size="40" maxlength="128" name="where[kiracomplaints][kiraupdatedat]" value="[{$where.kiracomplaints.kiraupdatedat}]">
                        </div></div>
                </td>
                [{/block}]
            </tr>
            <tr>
                [{block name="appweb_base_admin_list_sorting"}]
                <td class="listheader first" height="15">
                    <a href="Javascript:top.oxid.admin.setSorting( document.search, 'kiracomplaints', 'kiranr', '[{$oView->getSortingDirection("kiranr")}]');document.search.submit();"
                       class="listheader">No.</a>
                </td>
                <td class="listheader" height="15">
                    <a href="Javascript:top.oxid.admin.setSorting( document.search, 'oxuser', 'oxusername', '[{$oView->getSortingDirection("oxusername")}]');document.search.submit();"
                       class="listheader">Username</a>
                </td>
                <td class="listheader" height="15">
                    <a href="Javascript:top.oxid.admin.setSorting( document.search, 'oxorder', 'oxordernr', '[{$oView->getSortingDirection("oxordernr")}]');document.search.submit();"
                       class="listheader">Order no.</a>
                </td>
                <td class="listheader" height="15">
                    <a href="Javascript:top.oxid.admin.setSorting( document.search, 'kiracomplaints', 'kirastatus', '[{$oView->getSortingDirection("kirastatus")}]');document.search.submit();"
                       class="listheader">Status</a>
                </td>
                <td class="listheader" height="15">
                    <a href="Javascript:top.oxid.admin.setSorting( document.search, 'kiracomplaints', 'kiracreatedat', '[{$oView->getSortingDirection("kiracreatedat")}]');document.search.submit();"
                       class="listheader">Created at</a>
                </td>
                <td class="listheader" height="15">
                    <a href="Javascript:top.oxid.admin.setSorting( document.search, 'kiracomplaints', 'kiraupdatedat', '[{$oView->getSortingDirection("kiraupdatedat")}]');document.search.submit();"
                       class="listheader">Updated at</a>
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
                                class="[{$listclass}]">[{$listitem->getComplaintNr()}]</a></div>
                </td>
                <td valign="top" class="[{$listclass}]" height="15">
                    <div class="listitemfloating">&nbsp;<a
                                href="Javascript:top.oxid.admin.editThis('[{$listitem->getId()}]');"
                                class="[{$listclass}]">[{$listitem->getUserName()}]</a></div>
                </td>
                <td valign="top" class="[{$listclass}]" height="15">
                    <div class="listitemfloating">&nbsp;<a
                                href="Javascript:top.oxid.admin.editThis('[{$listitem->getId()}]');"
                                class="[{$listclass}]">[{$listitem->getOrderNr()}]</a></div>
                </td>
                <td valign="top" class="[{$listclass}]" height="15">
                    <div class="listitemfloating">&nbsp;<a
                                href="Javascript:top.oxid.admin.editThis('[{$listitem->getId()}]');"
                                class="[{$listclass}] [{if $listitem->getStatus()== 1}]text-success[{elseif $listitem->getStatus()== 2 }]text-danger[{else}][{/if}]">[{$listitem->getStatusName()}]</a>
                    </div>
                </td>
                <td valign="top" class="[{$listclass}]" height="15">
                    <div class="listitemfloating">&nbsp;<a
                                href="Javascript:top.oxid.admin.editThis('[{$listitem->getId()}]');"
                                class="[{$listclass}]">[{$listitem->getCreationDate()}]</a>
                    </div>
                </td>
                <td valign="top" class="[{$listclass}]" height="15">
                    <div class="listitemfloating">&nbsp;<a
                                href="Javascript:top.oxid.admin.editThis('[{$listitem->getId()}]');"
                                class="[{$listclass}]">[{$listitem->getModificationDate()}]</a>
                    </div>
                </td>
                <td valign="top" class="[{$listclass}]" height="15">
                    [{if !$readonly}]
                    <a href="Javascript:top.oxid.admin.deleteThis('[{$listitem->getId()}]');"
                       class="delete" id="del.[{$_cnt}]" [{include file="help.tpl" helpid=item_delete}]></a>
                    [{/if}]
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

