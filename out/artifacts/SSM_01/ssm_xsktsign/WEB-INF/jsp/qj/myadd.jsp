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

<script type="text/javascript" src="${ctx}/resource/layui/layui.js"></script> 



<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui.admin/css/style.css" />


<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui/css/style.css" />

<link rel="stylesheet" href="${ctx}/resource/layui/css/layui.css" media="all">

<script src="/static/build/layui.js"></script>


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
<title></title>
</head>
<body>
<article class="page-container">

<!-- 	private Integer id;
	private Integer bjId;
	private Integer studentId;
	private Student student;
	private Bj bj;
	private Integer fdyId;
	private Fdy fdy;
	private String startTime;
	private String endTime;
	private Integer status;是否通过 0 待审核 1 通过 2 不通过 -->
	
	<div style="width: 400px;">
	 <form class="form form-horizontal" id="form-admin-add" action="${ctx}/qj/exAdd" method="post">
	 
	  <input type="hidden" name="id" value="${obj.id}">
	  
	  
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-4"><span class="c-red">*</span>请假开始时间：</label>
		<div class="formControls col-xs-8 col-sm-8">
			<input type="text" class="input-text" value="${obj.startTime}" placeholder="" id="calendar" name="startTime">
		</div>
	</div>
	<div class="row cl">
		<label class="form-label col-xs-4 col-sm-4"><span class="c-red">*</span>请假结束时间：</label>
		<div class="formControls col-xs-8 col-sm-8">
			<input type="text" class="input-text" value="${obj.endTime}" placeholder="" id="calendar1" name="endTime">
		</div>
	</div>
	
	
	<div class="row cl">
			<label class="form-label col-xs-4 col-sm-4">请假原因：</label>
			<div class="formControls col-xs-8 col-sm-8" style="width: 800px">
				<textarea name="reason" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="textarealength(this,200)">
				${obj.reason}
				</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
		</div>
		
		<!-- <div class="row cl">
			<label class="form-label col-xs-4 col-sm-4">审批备注：</label>
			<div class="formControls col-xs-8 " style="width: 800px">
				<textarea name="content" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="textarealength(this,200)"></textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
		</div> -->
		<!-- <div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>是否通过：</label>
				<div class="formControls col-xs-8 col-sm-9"> <span class="select-box">
					<select name="status" class="select">
						<option value="1">通过</option>
						<option value="2" >不通过</option>
					</select>
					</span> 
				</div>
		</div> -->
		
		
	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
			<input class="btn btn-primary radius" id="dd" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
		</div>
	</div>
	</form>
	</div>
</article>

<!--_footer 作为公共模版分离出去--> 
<script type="text/javascript" src="${ctx}/resource/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/jquery.validation/1.14.0/messages_zh.min.js"></script> 
<script type="text/javascript" src="${ctx}/resource/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${ctx}/resource/static/h-ui.admin/js/H-ui.admin.js"></script> 
<script>
layui.use('laydate', function(){
var laydate = layui.laydate;
//执行一个laydate实例
laydate.render({
elem: '#calendar' ,//指定元素
type: 'datetime'
});

laydate.render({
	elem: '#calendar1' ,//指定元素
	type: 'datetime'
	});
	
	
});
</script>
</body>
</html>
