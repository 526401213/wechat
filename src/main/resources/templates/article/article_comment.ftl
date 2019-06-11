<html>
<head>
    <title>Black &amp; White</title>

    <!-- meta -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- css -->
    <link rel="stylesheet" href="/static/front/html/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/front/html/css/ionicons.min.css">
    <link rel="stylesheet" href="/static/front/html/css/pace.css">
    <link rel="stylesheet" href="/static/front/html/css/custom.css">

    <!-- js -->
    <!--<script src="/front/html/js/jquery-2.1.3.min.js"></script>-->
    <script src="/static/front/html/js/bootstrap.min.js"></script>
    <script src="/static/front/html/js/pace.min.js"></script>
    <script src="/static/front/html/js/modernizr.custom.js"></script>
    <script src="/static/socketjs/sockjs.min.js"></script>
    <script src="/static/socketjs/stomp.js"></script>
    <script src="/static/socketjs/jquery-3.1.1.js"></script>
    	 <style>
    	.depth-1 .comment-body{
    		position: relative;
    	}
    	.depth-1 .comment-body .del{
    		position: absolute;
    		right: 0px;
    		top: 5px;
    		display: inline-block;
    		
    		top: 45px;
    		padding: 10px;
    	}
    	.depth-1 .comment-body .del:hover{
    		cursor: pointer;
    	}
    </style>
</head>

<body id="single">

<div class="content-body">
    <div class="container">
        <div class="row">

        </div>
    </div>
    <div class="container">
        <div class="row">
            <div id="comments" class="responsesWrapper">
                <meta content="UserComments:2" itemprop="interactionCount">
                <h3 class="comments-title">共有 <span class="commentCount">${comments?size}</span> 条评论</h3>
                <ol class="commentlist">
                 <#if comments??>
				<#list comments as comments>
                    <li id="comment-30" class="comment even thread-even depth-1">
                        <article id="div-comment-30" class="comment-body">
                            <footer class="comment-meta">
                                <div class="comment-author vcard">
                                    <img alt="" src="${comments.img?if_exists}"  class="avatar avatar-48 photo avatar-default" height="48" width="48">
                                    <b class="fn"><ahref="" rel="external nofollow"class="url">${comments.creater?if_exists}</a></b><span class="says">说道：</span></div>
                                <div class="comment-metadata">
                                    <a href="">
                                        <time>
                                            ${comments.createtime?if_exists}
                                        </time>
                                    </a>
                                </div>
                            </footer>
							
                            <div class="comment-content">
                                ${comments.info?if_exists}
                            </div>
                             <span class="del" style="color:#FF9900" onclick="deleteComment(${comments.id?if_exists})">删除</span>
                        </article>
                    </li>
                  </#list>
                </#if> 
                </ol>
                <nav class="navigation comment-navigation u-textAlignCenter" data-fuck="119">
                </nav>
                
            </div>
        </div>
    </div>
</div>

<script src="/front/html/js/script.js"></script>
<script src="/front/backstyle/js/plugins/layer/layer.min.js"></script>

<script type="text/javascript">
	function deleteComment(id){
	
	$.post("/user/article/deleteComment",{id:id},function(rs){
	window.location.reload();
	});
	}
</script>

</body>
</html>
