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
	<div class="cl pd-5 bg-1 bk-gray mt-20"> 
	  <%--   <span class="l">  
	                      <a href="javascript:;" onclick="admin_add('添加','${ctx}/record/add?bjId=${bjId}','600','300')" class="btn btn-primary radius">
	                      <i class="Hui-iconfont">&#xe600;</i>  添加</a></span> --%>
	                     <span class="r">
	                     <div class="panel-foot text-center">
      <pg:pager  url="${ctx}/record/mysign" maxIndexPages="5" items="${pagers.total}"  maxPageItems="15" export="curPage=pageNumber" >
		<pg:last>  
			共${pagers.total}记录,共${pageNumber}页,  
		</pg:last>  
			当前第${curPage}页 
  
        <pg:first>  
    		<a href="${pageUrl}">首页</a>  
		</pg:first>  
		<pg:prev>  
    		<a href="${pageUrl}">上一页</a>  
		</pg:prev>  
      
       	<pg:pages>  
        	<c:choose>  
            	<c:when test="${curPage eq pageNumber}">  
                	<font color="red">[${pageNumber }]</font>  
            	</c:when>  
            	<c:otherwise>  
               		<a href="${pageUrl}">${pageNumber}</a>  
            	</c:otherwise>  
        	</c:choose>  
    	</pg:pages>
             
        <pg:next>  
    		<a href="${pageUrl}">下一页</a>  
		</pg:next>  
		<pg:last>  
			<c:choose>  
            	<c:when test="${curPage eq pageNumber}">  
                	<font color="red">尾页</font>  
            	</c:when>  
            	<c:otherwise>  
               		<a href="${pageUrl}">尾页</a>  
            	</c:otherwise>  
        	</c:choose> 
    		  
		</pg:last>
	</pg:pager>
    </div>
	                     </span> </div>
	                     
	                     
		
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
				<th width="150">签到名称</th>
				<th width="150">状态</th>
				<th width="100">操作</th>
			</tr>
		</thead>
		<tbody>
		 <c:forEach items="${pagers.datas}" var="data" varStatus="l">
		 <tr class="text-c">
				<td>${data.id}</td>
				<td>${data.student.username}</td>
				<td>${data.sign.name}</td>
				<td>
				<c:if test="${data.status == 0 }">缺勤</c:if>
				<c:if test="${data.status == 1 }">已签到</c:if>
				<c:if test="${data.status == 2 }">已请假</c:if>
				</td>
				<td class="td-manage">
				<c:if test="${data.status == 0 }">
					 <a title="签到" href="javascript:void(0);" class="ml-5" onclick="sign('${data.id}')" style="text-decoration:none">
					  签到</a>
				</c:if>
				<a title="查看签到明细" href="${ctx}/record/view.do?id=${data.id}" class="ml-5" style="text-decoration:none">查看签到明细</a>
				
			</tr>
		 </c:forEach>
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

function sign(id){
	 $.ajax({  
         type : "POST",  //提交方式  
         url : "${ctx}/record/exAdd.do",//路径  
         data : {  
             "id" : id  
         },//数据，这里使用的是Json格式进行传输  
         success : function(result) {//返回数据根据结果进行相应的处理  
        	 var re = JSON.parse(result)
         	if (re.res == 0){
         		alert("ip冲突");
         		window.location.href = "${ctx}/record/mysign";
         	}else if(re.res == 1){
         		alert("签到成功");
         		window.location.href = "${ctx}/record/mysign";
         	}else if(re.res == 2){
         		alert("已请假不能签到");
         		window.location.href = "${ctx}/record/mysign";
         	}else if(re.res == 3){
         		alert("签到以结束请勿重复签到");
         		window.location.href = "${ctx}/record/mysign";
         	}
         }  
     });  
}
</script>
</body>
</html>
