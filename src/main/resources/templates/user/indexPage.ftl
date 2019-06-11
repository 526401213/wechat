<!DOCTYPE>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>查看个人信息</title>
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

</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>个人信息</h5>
					</div>
					<div class="ibox-content">
						<form method="post" class="form-horizontal" id="commentForm" action="">
							
							<div class="form-group">
								<label class="col-sm-3 control-label">登录名</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" value="${user.loginname?if_exists}" readonly="true" name="link" minlength="2" required>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label">Email</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" value="${user.email?if_exists}" name="desc" readonly="true">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label">昵称</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" value="${user.nickname?if_exists}" name="desc" readonly="true">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label">企鹅号</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" value="${user.qq?if_exists}" name="desc" readonly="true">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-sm-3 control-label">性别</label>
								<div class="col-sm-7">
									<input type="text" class="form-control" value="${user.gender?if_exists}" name="desc" readonly="true">
								</div>
							</div>
							
							<div class="hr-line-dashed"></div>
							<div class="form-group">
								<div class="col-sm-4 col-sm-offset-8">
									<button class="btn btn-success" type="button" onclick="javascript:returnRest()">确&nbsp;&nbsp;定</button>&nbsp;&nbsp;&nbsp;&nbsp;
									<button class="btn btn-white" type="reset" onclick="javascript:returnRest()">取&nbsp;&nbsp;消</button>
								</div>
							</div>
						</form>
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
	
	<!-- 表单验证 -->
	<script src="/static/front/backstyle/js/plugins/validate/jquery.validate.min.js"></script>
	<script src="/static/front/backstyle/js/plugins/validate/messages_zh.min.js"></script>
	
	<!-- layer javascript -->
    <script src="/static/front/backstyle/js/plugins/layer/layer.min.js"></script>
	<script>
	function returnRest(){
		window.location.href="/user/welcome";
	}
	
	</script>
</body>
</html>
