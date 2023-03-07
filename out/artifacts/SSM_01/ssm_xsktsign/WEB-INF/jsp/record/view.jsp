<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <link href="${ctx}/resource/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/resource/static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/resource/static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/resource/lib/Hui-iconfont/1.0.7/iconfont.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/resource/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${ctx}/resource/static/h-ui/js/H-ui.js"></script> 
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui.admin/css/style.css" />
<script type="text/javascript">
$(document).ready(function(){
	
});
</script>
<head>
<style>
#doc-topbar-collapse-3 a{
font-weight: bold;
font-size: 14px;
}
.headers{
height: 30px;width: 200px;
z-index:999;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员列表</title>
</head>
<body>
<div class="page-container">
  <%--  <form action="${ctx}/record/findBySql" method="post">
   	<input type="hidden" name="bjId" value="${bjId}">
   <div class="text-c"> 
		<input type="text" class="input-text" style="width:250px" placeholder="名称" id="" name="username">
		<button type="submit" class="btn btn-success" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
	</div>
   </form> --%>
	<form action="">
	<!-- private Sign sign;
	private Student student;
	private Integer studentId;
	private String ip;
	private java.util.Date createTime;
	private Integer status; 0 未签到 1 已签到 2 请假-->
	
	<table class="table table-border table-bordered table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="9">列表</th>
			</tr>
			<tr class="text-c">
				<th width="90">编号</th>
				<th width="150">姓名</th>
				<th width="150">班级</th>
				<th width="150">教师</th>
				<th width="150">ip</th>
				<th width="150">签到时间</th>
				<th width="150">签到名称</th>
				<th width="150">状态</th>
			</tr>
		</thead>
		<tbody>
		 <tr class="text-c">
				<td>${obj.id}</td>
				<td>${obj.student.username}</td>
				<th width="">${obj.sign.bj.name}</th>
				<th width="">${obj.sign.teacher.username}</th>
				<td>${obj.ip}</td>
				<td><fmt:formatDate value="${obj.createTime }"  type="both" /></td>
				<td>${obj.sign.name}</td>
				<td>
				<c:if test="${obj.status == 0 }">缺勤</c:if>
				<c:if test="${obj.status == 1 }">已签到</c:if>
				<c:if test="${obj.status == 2 }">已请假</c:if>
				</td>
				
			</tr>
		</tbody>
		
	</table>
	</form>
</div>
<script type="text/javascript" src="${ctx}/resource/lib/jquery/1.9.1/jquery.min.js"></script>  
<script type="text/javascript" src="${ctx}/resource/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/laypage/1.2/laypage.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/My97DatePicker/WdatePicker.js"></script> 
<script type="text/javascript" src="${ctx}/resource/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${ctx}/resource/static/h-ui.admin/js/H-ui.admin.js"></script> 
<script type="text/javascript">
function admin_add(title,url,w,h){
	window.location.href=url;
}
/*管理员-删除*/
function admin_del(id){
	layer.confirm('确认要删除吗？',function(index){
		window.location.href=ctx+"/record/delete?id="+id;
	});
}
</script>
</body>
</html>
