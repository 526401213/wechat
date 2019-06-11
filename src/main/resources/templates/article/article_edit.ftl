<!DOCTYPE>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>添加文章</title>
	<meta name="keywords" content="">
	<meta name="description" content="">

	<link rel="shortcut icon" href="favicon.ico">
	<link href="/static/front/backstyle/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
	<link href="/static/front/backstyle/css/font-awesome.css?v=4.4.0" rel="stylesheet">

	<!-- Data Tables -->
	<link href="/static/front/backstyle/css/plugins/dataTables/dataTables.bootstrap.css"rel="stylesheet">
	<link href="/static/front/backstyle/css/animate.css" rel="stylesheet">
	<link href="/static/front/backstyle/css/style.css?v=4.1.0" rel="stylesheet">
	<link href="/static/front/backstyle/md/css/style.css" rel="stylesheet"/>

</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<!-- <div class="col-sm-12"> -->
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>编辑文章</h5>
					</div>
					<div class="ibox-content" id="inputForms">
						<form method="post" class="form-horizontal" id="forms" action="">
						<input type="hidden" id="articleId" name="articleId" value="${article.id?default(0)}"> 
						<input type="hidden" id="edit_cateId" value="${article.categoryid?default(0)}"> 
						<input type="hidden" id="cateId" name="categoryid"> 
						<input type="hidden" id="type" name="type"> 
						<input type="hidden" id="viewnum" name="viewnum" value="${article.viewnum?default(0)}" > 
						<input type="hidden" id="contentHtml" name="content"> 
							<div class="col-sm-12">
		                            <div class="form-group">
		                                <label class="col-sm-1 control-label ">文章标题</label>
		                                <div class="col-sm-4 forms">
		                                    <input type="text" class="form-control input_Keys" name="title" value="${article.title?if_exists}">                                                                          
		                                </div > 
		                              
	                                    <label class="col-sm-1 control-label">所属分类:</label>
	                                    <div class="col-sm-4">
		                                    <select class="form-control" name="startNum" id="num">
		                               			<option value="">请选择</option>
	                  							<#if categorys??>
													<#list categorys as category>
														<option value=${category.id?default(0)}>${category.categoryname?if_exists}</option>
													</#list>
												</#if>
											</select>
	                                    </div>
		                            </div>
	                         </div>
	                         
	                        <div class="col-sm-12">
                            <div class="form-group">
                            		<label class="col-sm-1 control-label text-left">文章引言</label>
	                                <div class="col-sm-9 forms">
	                                    <input type="text" class="form-control input_Keys" name="slavetitle" value="${article.slavetitle?if_exists}">                                                                          
	                                </div> 
                            </div>
                            </div>
                          
                         
                         
                         <div class="col-sm-12">
                          <div class="form-group forms">
                          <label class="col-sm-1 control-label text-left"></label>
                                <textarea style="height: 450px"  autocomplete="off" id="text" name="content1" class="markdown-textarea input_Keys">${article.content?if_exists}</textarea>
                            </div>
                           </div>
                         
                        
							 
						
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<div class="col-sm-4 col-sm-offset-8">
									
									<button class="btn btn-primary" type="button" onclick="sub(3)">私&nbsp;&nbsp;密</button>&nbsp;&nbsp;&nbsp;&nbsp;
									<button class="btn btn-warning waves-effect waves-light" type="button" onclick="sub(0)">草&nbsp;&nbsp;稿</button>&nbsp;&nbsp;&nbsp;&nbsp;
									<button class="btn btn-success" type="button" onclick="sub(4)">提&nbsp;&nbsp;交</button>&nbsp;&nbsp;&nbsp;&nbsp;
									<button class="btn btn-white" type="reset" onclick="javascript:history.back(-1)">取&nbsp;&nbsp;消</button>
								</div>
							</div> 
						</form>
					</div>
				</div>
			<!-- </div> -->
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
	
	<!-- 表单验证 -->
	<script src="/static/front/backstyle/js/plugins/validate/jquery.validate.min.js"></script>
	<script src="/static/front/backstyle/js/plugins/validate/messages_zh.min.js"></script>
	
	<!-- layer javascript -->
    <script src="/static/front/backstyle/js/plugins/layer/layer.min.js"></script>
    
    <!-- md -->
    <script src="/static/front/backstyle/md/js/jquery.scrollto.js"></script>
	<script src="/static/front/backstyle/md/js/pagedown.js"></script>
	<script src="/static/front/backstyle/md/js/pagedown-extra.js"></script>
	<script src="/static/front/backstyle/md/js/diff.js"></script>
	<script src="/static/front/backstyle/md/js/md.js"></script>
	<script src="/static/front/backstyle/md/showdown.min.js"></script>
	<script>
	$(function(){
	var edit_cateId=$("#edit_cateId").val();
	$("#num").find("option[value='"+edit_cateId+"']").attr("selected",true);
	})
	
	/*markdown*/ 
	var textarea = $('#text'),
    toolbar = $('<div class="markdown-editor" id="md-button-bar" />').insertBefore(textarea.parent())
	preview = $('<div id="md-preview" class="md-hidetab" />').insertAfter('.markdown-editor');

	markdown(textarea, toolbar, preview);

	/*修改文章*/
	function sub(type){
	var converter = new showdown.Converter();
	var text=$("#text").val();
	var html = converter.makeHtml(text); 

    $("#contentHtml").val(html);
    
	var cateVal=$("#num").val();
	if(!cateVal){
	parent.layer.alert("请选择分类");
	return false;
	}
	$("#cateId").val(cateVal);
	$("#type").val(type);
	$.post("/user/article/edit",$("#forms").serialize(),function(rs){
	if(rs.code<0){
	parent.layer.alert(rs.message);
	}else{
	//alert("成功")
		layer.confirm('修改成功!', {
								title:"提示",
								btn: ['确认'] //按钮
							}, function() {
								window.location.href="/user/article/list";
							});
	//
	}
	})
	
	
	}
	
	</script>
	<#include "../kuxuan/input.js">
</body>
</html>
