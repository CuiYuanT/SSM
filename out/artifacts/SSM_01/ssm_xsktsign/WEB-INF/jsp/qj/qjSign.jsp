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
   <form action="" method="post">
 <!--   <div class="text-c"> 
		<input type="text" class="input-text" style="width:250px" placeholder="名称" id="" name="username">
		<button type="submit" class="btn btn-success" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
	</div> -->
   </form>
	<form action="">
	<div class="cl pd-5 bg-1 bk-gray mt-20"> 
	    <span class="l">  
	                     <%--  <a href="javascript:;" onclick="admin_add('添加','${ctx}/qj/add','600','300')" class="btn btn-primary radius">
	                      <i class="Hui-iconfont">&#xe600;</i>  添加</a></span> --%>
	                     <span class="r">
	                     <div class="panel-foot text-center">
      <pg:pager  url="${ctx}/qj/findBySqlSign" maxIndexPages="5" items="${pagers.total}"  maxPageItems="15" export="curPage=pageNumber" >
      <pg:param name="bjId" value="${bjId}"/>
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
	
	<table class="table table-border table-bordered table-bg">
		<thead>
			<tr>
				<th scope="col" colspan="9">列表</th>
			</tr>
			<tr class="text-c">
				<th width="90">编号</th>
				<th width="150">班级</th>
				<th width="150">姓名</th>
				<th width="150">开始时间</th>
				<th width="150">结束时间</th>
				<th width="150">状态</th>
			</tr>
		</thead>
		<tbody>
		 <c:forEach items="${pagers.datas}" var="data" varStatus="l">
		 <tr class="text-c">
				<td>${data.id}</td>
				<td>${data.bj.name}</td>
				<td>${data.student.username}</td>
				<td>${data.startTime}</td>
				<td>${data.endTime}</td>
				<td>
				<c:if test="${data.status == 0 }">待审核</c:if>
				<c:if test="${data.status == 1 }">通过</c:if>
				<c:if test="${data.status == 2 }">不通过</c:if>
				</td>
				
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
		window.location.href=ctx+"/qj/delete?id="+id;
	});
}
</script>
</body>
</html>
