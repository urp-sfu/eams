<#include "/templates/head.ftl"/>
<BODY LEFTMARGIN="0" TOPMARGIN="0">
    <@getMessage/>
	<@table.table width="100%" sortable="true" id="listTable">
       <@table.thead>
         <@table.selectAllTd id="baseCodeId"/>
         <@table.sortTd name="attr.code" id="baseCode.code"/>
         <@table.sortTd  name="attr.infoname" id="baseCode.name" />
         <@table.sortTd  name="attr.engName" id="baseCode.engName"/>
	     <@table.sortTd text="简名" id="baseCode.shortName"/>
	     <@table.sortTd text="简名(英)" id="baseCode.shortEngName"/>
	     <@table.sortTd text="简码" id="baseCode.shortCode"/>
	     <@table.sortTd  name="attr.modifyAt" id="baseCode.modifyAt"/>
	     <@table.sortTd  name="attr.state" id="baseCode.state"/>
	   </@>
	   <@table.tbody datas=baseCodes;baseCode>
         <@table.selectTd id="baseCodeId" value=baseCode.id/>
	    <td>&nbsp;${baseCode.code?if_exists}</td>
	    <td>&nbsp;${baseCode.name?if_exists}</td>
	    <td>&nbsp;${baseCode.engName?if_exists}</td>
	    <td>&nbsp;${baseCode.shortName?if_exists}</td>
	    <td>&nbsp;${baseCode.shortEngName?if_exists}</td>
	    <td>&nbsp;${baseCode.shortCode?if_exists}</td>
	    <td>${(baseCode.modifyAt?string("yyyy-MM-dd"))?if_exists}</td>
	    <td>
	       <#if baseCode.state?if_exists == true><@bean.message key="common.yes"/><#else><@bean.message key="common.no"/></#if>
	    </td>

	   </@>
	  </@>
  </body>
<#include "/templates/foot.ftl"/>