[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]

[{if $readonly}]
    [{assign var="readonly" value="readonly disabled"}]
    [{else}]
    [{assign var="readonly" value=""}]
    [{/if}]

<form name="transfer" id="transfer" action="[{$oViewConf->getSelfLink()}]" method="post">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="cl" value="news_main">
    <input type="hidden" name="editlanguage" value="[{$editlanguage}]">
</form>

<div class="container">
    <div class="row">
        <div class="col-xs-12 col-md-6">
            <p>Overview text etc.</p>
        </div>
    </div>
</div>

[{include file="bottomnaviitem.tpl"}]

[{include file="bottomitem.tpl"}]