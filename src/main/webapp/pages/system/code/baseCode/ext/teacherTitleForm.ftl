<#include "/templates/head.ftl"/>
<#assign extraTR>
    <tr >	   
      <td  id="f_examType" class="title">职称等级:</td>
      <td colspan="3">
          <@htm.i18nSelect datas=titleLevels selected=(baseCode.level.id)?default("")?string name="baseCode.level.id">
            <option value="">无</option>
          </@>
      </td>
    </tr>  
</#assign>
<#include "commonForm.ftl"/>