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


<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/lib/Hui-iconfont/1.0.7/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/lib/icheck/icheck.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${ctx}/resource/static/h-ui/css/style.css" />
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

<!-- private Integer id;
	private String username;
	private String password;
	private String code;
	private String sex;
	private Integer bjId;??????id -->
	
	<div style="width: 400px;">
 <form class="form form-horizontal" id="form-admin-add" action="" method="post">
 
       <input type="hidden" id="yuan" value="${obj.password}">
       
       
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>????????????</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" id="jiu"  placeholder="???????????????" >
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>????????????</label>
			<div class="formControls col-xs-8 col-sm-9">
				<input type="text" class="input-text" id="xin"  placeholder="???????????????" >
			</div>
		</div>
	
		<div class="row cl">
				<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>???????????????</label>
				<div class="formControls col-xs-8 col-sm-9">
					<input type="text" class="input-text" id="que"  placeholder="??????????????????" >
				</div>
		</div>
	
	
		
		
		
	<div class="row cl">
		<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
			<input class="btn btn-primary radius con" id="dd" type="button" value="&nbsp;&nbsp;??????&nbsp;&nbsp;">
		</div>
	</div>
	</form>
	</div>
</article>

<!--_footer ??????????????????????????????--> 
<script type="text/javascript" src="${ctx}/resource/lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/jquery.validation/1.14.0/jquery.validate.min.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="${ctx}/resource/lib/jquery.validation/1.14.0/messages_zh.min.js"></script> 
<script type="text/javascript" src="${ctx}/resource/static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="${ctx}/resource/static/h-ui.admin/js/H-ui.admin.js"></script> 
<!--/_footer /??????????????????????????????--> 

<!--?????????????????????????????????????????????--> 
<script type="text/javascript">
		$(function(){
			
			$(".con").click(function(){
				var yuan = $("#yuan").val();
				var jiu = $("#jiu").val();
				var xin = $("#xin").val();
				var que = $("#que").val();
				if (jiu == null || jiu == ''){
					alert("?????????????????????");
					return false;
				}
				if (xin == null || xin == ''){
					alert("?????????????????????");
					return false;
				}
				if (que == null || que == ''){
					alert("????????????????????????");
					return false;
				}
				if(xin != que){
					alert("???????????????????????????????????????");
					return false;
				}
				if(yuan != jiu){
					alert("????????????????????????");
					return false;
				}
				if(yuan == xin){
					alert("?????????????????????????????????");
					return false;
				}
				
				 $.ajax({  
	                    type : "POST",  //????????????  
	                    url : "${ctx}/teacher/upass.do",//??????  
	                    data : {  
	                        "password" : xin  
	                    },//???????????????????????????Json??????????????????  
	                    success : function(result) {//?????????????????????????????????????????????  
	                    	var re = result;
	                    	if (re.res == 0){
	                    		alert("?????????");
	                    		top.location.href = "${ctx}/login/uLogin";
	                    	}else{
	                    		alert("??????????????????????????????");
	                    		top.location.href = "${ctx}/login/uLogin";
	                    	}
	                    }  
	                });  
			});
			
		});
	</script>

<!--/?????????????????????????????????????????????-->
</body>
</html>
