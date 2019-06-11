<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>文章列表</title>
	<meta name="keywords" content="">
	<meta name="description" content="">

	<link rel="shortcut icon" href="favicon.ico">
	<link href="/static/front/backstyle/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
	<link href="/static/front/backstyle/css/font-awesome.css?v=4.4.0" rel="stylesheet">

	<!-- Data Tables -->
	<link href="/static/front/backstyle/css/plugins/dataTables/dataTables.bootstrap.css"
		rel="stylesheet">
	<link href="/static/front/backstyle/css/animate.css" rel="stylesheet">
	<link href="/static/front/backstyle/css/style.css?v=4.1.0" rel="stylesheet">
	
	<link rel="stylesheet" type="text/css" href="/front/backstyle/dist/sweetalert.css">
</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>文章列表</h5>
					</div>
					<div class="col-sm-12">
					<div class="form-group">
					<form method="post" action="/user/article/list" id="forms">
		                                <div class="col-sm-2">
		                                    <input type="text" class="form-control" placeholder="输入文章标题搜索" name="title" id="title" value="${(title)?if_exists}">                                                                          
		                                </div> 
		                                <div class="col-sm-2">
		                                 <button class="btn btn-sm btn-success"  type="submit"><i class="fa fa-fw fa-search"></i>搜索</button>
		                            	</div>
		             </form>               	
		             </div>
					</div>
					<div class="ibox-content">
						
						<table class="table table-striped table-bordered table-hover dataTables-example">
							<thead>
								<tr>
									<th>文章标题</th>
									<th>状态</th>
									<th>类型</th>
									<th>创建时间</th>
									<th>操作</th>									
								</tr>
							</thead>
							<tbody>
						<#if articles??>
						<#list articles.list as article>
							<tr class="gradeA">
								<td>${article.title?if_exists}</td>
								<#if article.state ==0>
								<td>草稿</td>
								<#elseif article.state == 1>  
								<td style="color:#FF9900">审核中</td>
								<#else>  
								<td style="color:#008d4c">通过</td>
								</#if>
								<#if article.type ==0>
								<td>草稿</td>
								<#elseif article.type == 3>  
								<td>私密文章</td>
								<#else>  
								<td>正常发布</td>
								</#if>
								<td>${article.createtime?string("yyyy-MM-dd HH:mm:ss")}</td>
								<td>
								<a onclick="queryComment(${article.id?default(0)})" class="btn btn-sm btn-success">查看评论</a>&nbsp;&nbsp;
								<a href="/user/article/preview/${article.id?default(0)}" class="btn btn-info" target="_blank">预览</a>&nbsp;&nbsp;
								<a href="/user/article/toEdit/${article.id?default(0)}" class="btn btn-primary">修改</a>&nbsp;&nbsp;
								<a onclick="deletes(${article.id?default(0)})" class="btn btn-danger delete">删除</a>
								</td>
							</tr>
							</#list>
                          </#if>
							</tbody>
						</table>
						
						<div>
						<span style="float: left; padding: 5px">
							当前&nbsp;<span style="color: red;">${articles.pageNum} </span>&nbsp;/&nbsp;<b>${articles.pages}</b>&nbsp;页&nbsp;&nbsp;
							总共&nbsp;<b>${articles.total}</b>&nbsp;条</span>
						<nav aria-label="Page navigation" style="margin: 0 auto; width: 240px">
							<ul class="pagination" style="margin: 0;">
							
								<li> 
									<a href="#" onclick="dataPage(${articles.pageNum-1})"
										aria-label="Previous"> <span aria-hidden="true">前一页</span>
									</a>
								</li>
							
								
						
								<li> 
								<a href="#" onclick="dataPage(${articles.pageNum+1})"
									aria-label="Next"> <span aria-hidden="true">后一页</span>
								</a>
								</li>
							
							</ul>
						</nav>
					</div>
						<!--分页结束 -->
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 全局js -->
	<script src="/static/front/backstyle/js/jquery.min.js?v=2.1.4"></script>
	<script src="/static/front/backstyle/js/bootstrap.min.js?v=3.3.6"></script>
	<script src="/static/front/backstyle/js/plugins/jeditable/jquery.jeditable.js"></script>

	<!-- Data Tables -->
	<script src="/static/front/backstyle/js/plugins/dataTables/jquery.dataTables.js"></script>
	<script src="/static/front/backstyle/js/plugins/dataTables/dataTables.bootstrap.js"></script>

	<!-- 自定义js -->
	<script src="/static/front/backstyle/js/content.js?v=1.0.0"></script>

 	<!-- layer javascript -->
    <script src="/static/front/backstyle/js/plugins/layer/layer.min.js"></script>
    
	<script type="text/javascript">
	
		function deletes(id){
	
	parent.layer.confirm('确认删除？', {
		    btn: ['确认','取消'], //按钮
		    shade: false //不显示遮罩
		}, function(){
		  $.post("/user/article/delete",{id:id},function(rs){
		  if(rs.code>0){
		  window.location.reload();
		  parent.layer.msg(rs.message, {icon: 1});
		  }else{
		  parent.layer.msg(rs.message, {icon: 1});
		  }
		  })
		});
	}
	
	/*分页查询*/
	function dataPage(pageIndex){
	var title=$("#title").val();
	window.location.href="/user/article/list?pageIndex="+pageIndex+"&title="+title;
	}
	

	/*查看评论*/
	function queryComment(id){
	$.post("/user/article/queryComment",{id:id},function(rs){
	if(rs.code<0){
	parent.layer.msg(rs.message, {icon: 1});
	}else{
	window.location.href="/user/article/getComment?id="+id;
	}
	})
	}
	
	
	</script>
</body>
</html>
