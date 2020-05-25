<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="gui" uri="http://framework.genesisdo.com/gui"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/admin/ace_head.jsp"%>
<title>管理后台</title>
</head>
<body class="no-skin">
	<%@ include file="/common/admin/nav.jsp"%>
	<div class="main-container" id="main-container">
		<jsp:include page="/admin/getMenu.do" flush="true">
			<jsp:param name="menuName" value="user-manager" />
		</jsp:include>
		<div class="main-content">
			<div class="breadcrumbs" id="breadcrumbs">
				<ul class="breadcrumb">
					<li><a href="/admin/index.do">首页</a></li>
					<li><a href="#">用户管理</a></li>
					<li class="active">管理员列表</li>
				</ul>
			</div>
			<div class="page-content">
				<div class="page-header">
					<h1>
						管理员列表<small> <i class="ace-icon fa fa-angle-double-right"></i>
							查询所有管理员
						</small>
					</h1>
				</div>
				<div class="col-sm-12 gui-datagrid">
					<div id="tb" class="gui-toolbar">
						<form data-role="filter">
							<div class="row">
								<div class="col-lg-2 col-md-2">
<!-- 									<input type="text" class="easyui-textbox" prompt="关键字查询" style="width:100%" name="keywordFuzzy"> -->
								</div>
<!-- 								<div class="col-lg-2 col-md-2"> -->
<!-- 									<input type="text" class="easyui-textbox" prompt="权威来源" style="width:100%" name="sourceFromFuzzy"> -->
<!-- 								</div> -->
								<div class="col-lg-2 gui-button-group pull-right">
<!-- 									<button type="button" data-role="search" class="btn btn-xs btn-primary">搜索</button> -->
									<c:if test="${sessionScope.loginAdmin.isSuper=='1' }">
									<a href="/admin/user/addManager.do" class="btn btn-xs btn-success">新增</a>
									<button type="button"  data-role="edit"  class="btn btn-xs btn-default">重置密码</button>
									<button type="button"  data-role="delete"  class="btn btn-xs btn-danger">删除</button></c:if>
								</div>
							</div>
						</form>
					</div>
					<table class="gui-gridtable" data-statement="admin.queryAllAdmin">
						<thead>
					        <tr>
					          <gui:th checkbox="true" type="com.genesisdo.chinalxr.admin.pojo.AdminVO"/>
<!-- 					          <th data-options="field:'_detail',formatter:function(value,row){return $.gui_datagrid_formatter(row.titleEn,'详情','btn btn-xs btn-default','toDetail');}"></th> -->
					        </tr>
					    </thead>
					</table>
				
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/common/admin/script.jsp"%>
	<script type="text/javascript">
	$('.gui-datagrid').gui_datagrid({
		onDelete:function(row){
			var idArray='';
			if(row instanceof Array){
				var ids=[];
				for(var i=0;i<row.length;i++){
					ids.push(row[i].adminId);
				}
				idArray=ids.join(',');
			}else if(row instanceof Object){
				idArray=row.adminId;
			}
			if(idArray!=''){
				$.post(baseUrl+'/admin/user/deleteAdmin.do',{ids:idArray},function(res){
					alert(res.msg);
					if(res.success){
						$('.gui-datagrid').gui_datagrid('reload');
					}
				},'json');
			}else{
				alert('请选择要删除的数据!');
			}
			
		},onEdit:function(row){
			if(row){
				if(confirm('确定将管理员['+row.username+']的密码重置为初始密码?')){
					$.post(baseUrl+'/admin/user/resetAdminPassword.do',{adminId:row.adminId},function(res){
						alert(res.msg);
						if(res.success){
							$('.gui-datagrid').gui_datagrid('reload');
						}
					},'json');
				}
			}
		}
	});
	</script>
</body>
</html>