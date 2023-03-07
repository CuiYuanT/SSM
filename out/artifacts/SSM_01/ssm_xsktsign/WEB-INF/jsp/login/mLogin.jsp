<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="${ctx}/resource/static/h-ui/css/H-ui.min.css"
	rel="stylesheet" type="text/css" />
<link href="${ctx}/resource/static/h-ui.admin/css/H-ui.login.css"
	rel="stylesheet" type="text/css" />
<link href="${ctx}/resource/static/h-ui.admin/css/style.css"
	rel="stylesheet" type="text/css" />
<link href="${ctx}/resource/lib/Hui-iconfont/1.0.7/iconfont.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${ctx}/resource/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${ctx}/resource/static/h-ui/js/H-ui.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

	});
</script>
<head>
<style>
#doc-topbar-collapse-3 a {
	font-weight: bold;
	font-size: 14px;
}

.headers {
	height: 30px;
	width: 200px;
	z-index: 999;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台登陆</title>
</head>

<body>
	<input type="hidden" id="TenantId" name="TenantId" value="" />
	<div class="headers">考勤管理系统</div>
	<div>考勤管理系统</div>
	<div class="loginWraper">
		<div id="loginform" class="loginBox">
			<form class="form form-horizontal" action="${ctx}/login/toMlogin"
				method="post">
				<div class="row cl">
					<label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
					<div class="formControls col-xs-8">
						<input id="" name="username" type="text" placeholder="账户"
							value="admin" class="input-text size-L">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
					<div class="formControls col-xs-8">
						<input id="" name="password" type="password" placeholder="密码"
							value="admin" class="input-text size-L">
					</div>
				</div>
				<div class="row cl">
					<div class="formControls col-xs-8 col-xs-offset-3">
						<input name="" type="submit" class="btn btn-success radius size-L"
							value="&nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;"> <input
							name="" type="reset" class="btn btn-default radius size-L"
							value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;"> <a
							 type="button" class="btn btn-default radius size-L" target="_blank"
							  href="/ssm_xsktsign/login/uLogin">其他角色登录</a>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function go(){
			
		}
	</script>
	<div class="footer">考勤管理系统</div>
</body>
</html>
