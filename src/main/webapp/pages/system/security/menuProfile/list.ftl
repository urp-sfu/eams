<#include "/templates/head.ftl"/>
<BODY LEFTMARGIN="0" TOPMARGIN="0">

<table id="menuBar"></table>
<@table.table width="100%" id="listTable" sortable="true">
   <@table.thead>
     <@table.selectAllTd id="menuProfileId"/>
     <@table.td text="名称" />
     <@table.td text="使用的用户类别" />
   </@>
   <@table.tbody datas=menuProfiles;menuProfile>
     <@table.selectTd id="menuProfileId" value="${menuProfile.id}"/>
     <td><A href="user.do?method=info&user.id=${menuProfile.id}" >&nbsp;${menuProfile.name} </a></td>
	 <td><#if menuProfile.category?exists>${menuProfile.category.name}</#if></td>
   </@>
 </@>
  <@htm.actionForm name="menuProfileForm" entity="menuProfile" action="menuProfile.do"/>
 
  <script>
   var bar = new ToolBar('menuBar','系统菜单配置管理',null,true,true);
   bar.setMessage('<@getMessage/>');
   bar.addItem("<@msg.message "action.new"/>",'add()','new.gif');
   bar.addItem("<@msg.message "action.edit"/>","edit();",'update.gif');
   bar.addItem("<@msg.message "action.delete"/>","multiAction('remove','删除时，会级联删除配置对应的所有菜单,确定删除?')",'delete.gif');
   bar.addHelp();
  </script>
  
 </body>
<#include "/templates/foot.ftl"/>