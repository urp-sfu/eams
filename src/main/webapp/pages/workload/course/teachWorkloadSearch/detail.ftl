<table cellpadding="0" cellspacing="0" align="center" width="100%" border="0">
  <form name="teachWorkloadForm" method="post" action="" onsubmit="return false;">
	<tr>
	 <td>
		<table width="100%" align="center" class="listTable">
			<tr class="darkColumn" align="center">
				<td colspan="7">
					<B><@msg.message key="workload.taskWorkload"/><@msg.message key="postfix.detailInfo"/></B>
				</td>
			</tr>
			<tr>
			    <td rowspan="2" class="grayStyle" align="center">
					<@msg.message key="workload.teacherInfo"/>
				</td>
				<td class="grayStyle" align="center">
					<@msg.message key="workload.teacherName"/>:
				</td>
				<td class="brightStyle" align="left">
					${teachWorkload.teacherInfo.teacherName?if_exists}
				</td>
				<td class="grayStyle" align="center">
					<@msg.message key="workload.gender"/>:
				</td>
				<td class="brightStyle" align="left">
					${teachWorkload.teacherInfo.gender?if_exists.name?if_exists}
				</td>
				<td class="grayStyle" align="center">
					<@msg.message key="workload.teacherTitle"/>
				</td>
				<td class="brightStyle" align="left">
					${teachWorkload.teacherInfo.teacherTitle?if_exists.name?if_exists}
				</td>
			</tr>
			<tr>
				<td class="grayStyle" align="center">
					<@msg.message key="workload.teacherAge"/>:
				</td>
				<td class="brightStyle" align="left">
					${teachWorkload.teacherInfo.teacherAge?if_exists}
				</td>
				<td class="grayStyle" align="center">
					<@msg.message key="workload.edudegree"/>:
				</td>
				<td class="brightStyle" align="left">
					${teachWorkload.teacherInfo.eduDegree?if_exists.name?if_exists}
				</td>
				<td class="grayStyle" align="center">
					<@msg.message key="workload.teacherType"/>
				</td>
				<td class="brightStyle" align="left">
					${teachWorkload.teacherInfo.teacherType?if_exists.name?if_exists}
				</td>
			</tr>
			<tr>
				<td class="grayStyle" algin="center" rowspan="2">
					<@msg.message key="workload.another"/>
				</td>
				<td class="grayStyle" align="center">
					<@msg.message key="workload.college"/>
				</td>
				<td class="brightStyle" align="left">
					${teachWorkload.college.name}
				</td>
				<td class="grayStyle" align="center">
					<@msg.message key="workload.teacherCollege"/>
				</td>
				<td class="brightStyle" align="left">
					${teachWorkload.teacherInfo.teachDepart?if_exists.name?if_exists}
				</td>
				<td class="grayStyle" align="center">
					<@msg.message key="workload.courseName"/>
				</td>
				<td class="brightStyle" align="left">
					${teachWorkload.courseName}
				</td>
			</tr>
			<tr>
				<td class="grayStyle" align="center">
					<@msg.message key="workload.academic"/>
				</td>
				<td class="brightStyle" align="left">
					${teachWorkload.teachCalendar.year}
				</td>
				<td class="grayStyle" align="center">
					<@msg.message key="workload.term"/>
				</td>
				<td class="brightStyle" align="left">
					${teachWorkload.teachCalendar.term}
				</td>
		 		<td class="grayStyle" align="center">
		 			数据进入方式：
				</td>
				<td class="brightStyle" align="left">
					<#if true==teachWorkload.isHandInput?exists>手工录入<#else>系统统计</#if>
				</td>
			</tr>
		</table>
	 </td>
	</tr>
	<tr>
	&nbsp;
	</tr>
	<tr>
		<td>
			<table width="100%" align="center" class="listTable">
				<tr>
					<td rowspan="3" class="grayStyle"align="center">
						<@msg.message key="workload.taskWorkload"/><@msg.message key="postfix.basInfo"/>
					</td>
					<td class="grayStyle"align="center">
						<@msg.message key="workload.studentNumberInClass"/>
					</td>
					<td class="brightStyle"align="left">
						${teachWorkload.studentNumber}
					</td>
					<td class="grayStyle"align="center">
						<@msg.message key="entity.studentType"/>
					</td>
					<td class="brightStyle"align="left">
						${teachWorkload.studentType.name}
					</td>
					<td class="grayStyle"align="center">
						<@msg.message key="entity.courseCategory"/>
					</td>
					<td class="brightStyle"align="left">
						${teachWorkload.courseCategory?if_exists.name?if_exists}
					</td>
					<td class="grayStyle"align="center">
						<@msg.message key="workload.workloadModulus"/>
					</td>
					<td class="brightStyle"align="left">
						<#if teachWorkload.teachModulus?exists>${teachWorkload.teachModulus.modulusValue?string("##0.0")}<#else>无对应系数</#if>
					</td>
				</tr>
				<tr>
					<td class="grayStyle"align="center">
						<@msg.message key="workload.weeks"/>
					</td>
					<td class="brightStyle"align="left">
						${teachWorkload.weeks}
					</td>
					<td class="grayStyle"align="center">
						<@msg.message key="workload.totleCourse"/>
					</td>
					<td class="brightStyle"align="left">
						${teachWorkload.totleCourses?if_exists}
					</td>
					<td class="grayStyle"align="center">
						<@msg.message key="workload.weekCourse"/>
					</td>
					<td class="brightStyle"align="left">
						${teachWorkload.classNumberOfWeek?string("##0.0")}
					</td>
					<td class="grayStyle"align="center">
						<@msg.message key="workload.taskWorkload"/>
					</td>
					<td class="brightStyle"align="left">
						${teachWorkload.totleWorkload?string("##0.0")}
					</td>
				</tr>
				<tr>
					<td class="grayStyle"align="center">
						<@msg.message key="workload.payBill"/>
					</td>
					<td class="brightStyle"align="left">
						<#if teachWorkload.payReward==true><@msg.message key="workload.pay1"/>
						<#else><@msg.message key="workload.pay0"/>
						</#if>
					</td>
					<td class="grayStyle"align="center">
						<@msg.message key="workload.calcWorkload"/>
					</td>
					<td class="brightStyle"align="left">
						<#if teachWorkload.calcWorkload==true><@msg.message key="workload.calcWorkload"/>
						<#else><@msg.message key="workload.calcWorkload0"/>
						</#if>
					</td>
					<td class="grayStyle"align="center">
						<@msg.message key="workload.teacherAffirm"/>
					</td>
					<td class="brightStyle"align="left">
						<#if teachWorkload.teacherAffirm==true><@msg.message key="workload.affirm1"/>
						<#else><@msg.message key="workload.affirm0"/>
						</#if>
					</td>
					<td class="grayStyle"align="center">
						<@msg.message key="workload.collegeAffirm"/>
					</td>
					<td class="brightStyle"align="left">
						<#if teachWorkload.collegeAffirm==true><@msg.message key="workload.affirm1"/>
						<#else><@msg.message key="workload.affirm0"/>
						</#if>
					</td>
				</tr>
				<tr class="darkColumn" align="center">
					<td colspan="9" height="25px;">
						<input type="hidden" name="teachWorkloadIds" value="${teachWorkload.id}">
					</td>
				</tr>
			</table>
		</td>
	</tr>
	</form>
 <table>