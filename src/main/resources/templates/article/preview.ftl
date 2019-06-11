
<!DOCTYPE html>
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
    <script src="/static/front/html/js/jquery-2.1.3.min.js"></script>
    <script src="/static/front/html/js/bootstrap.min.js"></script>
    <script src="/static/front/html/js/pace.min.js"></script>
    <script src="/static/front/html/js/modernizr.custom.js"></script>
</head>

<body id="single">
<div class="container">
    <header id="site-header">
        <div class="row">
            <div class="col-md-4 col-sm-5 col-xs-8">
                <div class="logo">
                    <h1><a href="#"><b>丶Salvation</b></a></h1>
                </div>
            </div><!-- col-md-4 -->
            <div class="col-md-8 col-sm-7 col-xs-4">
                <nav class="main-nav" role="navigation">
                    <div class="navbar-header">
                        <button type="button" id="trigger-overlay" class="navbar-toggle">
                            <span class="ion-navicon"></span>
                        </button>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="cl-effect-11"><a href="#" data-hover="Home">Home</a></li>
                            <li class="cl-effect-11"><a href="#" data-hover="Blog">Blog</a></li>
                            <li class="cl-effect-11"><a href="#" data-hover="About">About</a></li>
                            <li class="cl-effect-11"><a href="#" data-hover="Contact">Contact</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </nav>
                <div id="header-search-box">
                    <a id="search-menu" href="#"><span id="search-icon" class="ion-ios-search-strong"></span></a>
                    <div id="search-form" class="search-form">
                        <form role="search" method="get" id="searchform" action="#">
                            <input type="search" placeholder="Search" required>
                            <button type="submit"><span class="ion-ios-search-strong"></span></button>
                        </form>
                    </div>
                </div>
            </div><!-- col-md-8 -->
        </div>
    </header>
</div>

<div class="content-body">
    <div class="container">
        <div class="row">
            <main class="col-md-8">
                <article class="post post-1">
                    <header class="entry-header">
                        <h1 class="entry-title">${article.title?if_exists}</h1>
                        <div class="entry-meta">
                            <span class="post-category"><a href="#">Web Blog</a></span>

                            <span class="post-date"><a href="#"><time class="entry-date">${article.createtime?string("yyyy-MM-dd HH:mm:ss")}</time></a></span>

                            <span class="post-author"><a href="#">${article.creater?if_exists}</a></span>

                            <span class="comments-link"><a href="#">${article.viewnum?default(0)} views</a></span>
                        </div>
                    </header>
                    <div class="entry-content clearfix">
                        ${article.content?if_exists}
                    </div>
                </article>
            </main>
            
            <aside class="col-md-4">
                <div class="widget widget-recent-posts">
                    <h3 class="widget-title">Recent Posts</h3>
                    <ul>
                        <li>
                            <a href="#">Adaptive Vs. Responsive Layouts And Optimal Text Readability</a>
                        </li>
                        <li>
                            <a href="#">Web Design is 95% Typography</a>
                        </li>
                        <li>
                            <a href="#">Paper by FiftyThree</a>
                        </li>
                    </ul>
                </div>
                <div class="widget widget-archives">
                    <h3 class="widget-title">Archives</h3>
                    <ul>
                        <li>
                            <a href="#">November 2014</a>
                        </li>
                        <li>
                            <a href="#">September 2014</a>
                        </li>
                        <li>
                            <a href="#">January 2013</a>
                        </li>
                    </ul>
                </div>

                <div class="widget widget-category">
                    <h3 class="widget-title">Category</h3>
                    <ul>
                        <li>
                            <a href="#">Web Design</a>
                        </li>
                        <li>
                            <a href="#">Web Development</a>
                        </li>
                        <li>
                            <a href="#">SEO</a>
                        </li>
                    </ul>
                </div>
            </aside>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div id="comments" class="responsesWrapper">
                <meta content="UserComments:2" itemprop="interactionCount">
                <h3 class="comments-title">共有 <span class="commentCount">2</span> 条评论</h3>
                <ol class="commentlist">
                    <li id="comment-30" class="comment even thread-even depth-1">
                        <article id="div-comment-30" class="comment-body">
                            <footer class="comment-meta">
                                <div class="comment-author vcard">
                                    <img alt="" src="http://cn.gravatar.com/avatar/?s=48&amp;d=monsterid&amp;r=g"  class="avatar avatar-48 photo avatar-default" height="48" width="48">
                                    <b class="fn"><a
                                            href="" rel="external nofollow"
                                            class="url">丶附耳聆听</a></b><span class="says">说道：</span></div>
                                <!-- .comment-author -->

                                <div class="comment-metadata">
                                    <a href="">
                                        <time>
                                            2017年5月9日 14:39
                                        </time>
                                    </a>
                                </div>
                            </footer>

                            <div class="comment-content">
                                <p>老哥的文章好好看呀，真稳。</p>
                            </div>

                           
                        </article>
                    </li>
                    <li id="comment-8" class="comment odd alt thread-odd thread-alt depth-1">
                        <article id="div-comment-8" class="comment-body">
                            <footer class="comment-meta">
                                <div class="comment-author vcard">
                                    <img alt="" src="http://cn.gravatar.com/avatar/?s=48&amp;d=monsterid&amp;r=g"  class="avatar avatar-48 photo avatar-default" height="48" width="48">
                                    <b
                                        class="fn">丶附耳聆听</b><span class="says">说道：</span></div>

                                <div class="comment-metadata">
                                    <a href="">
                                        <time>
                                            2017年3月31日 03:17
                                        </time>
                                    </a>
                                </div><!-- .comment-metadata -->

                            </footer><!-- .comment-meta -->

                            <div class="comment-content">
                                <p>双击一波666</p>
                            </div><!-- .comment-content -->

                         
                        </article><!-- .comment-body -->
                    </li><!-- #comment-## -->
                </ol>
                <nav class="navigation comment-navigation u-textAlignCenter" data-fuck="119">
                </nav>
                <div id="respond" class="comment-respond">
                    <h3 id="reply-title" class="comment-reply-title">发表评论
                        <small><a rel="nofollow" id="cancel-comment-reply-link" href="#"
                                  style="display:none;">取消回复</a></small>
                    </h3>
                    <form action="" method="post" id="commentform"
                          class="comment-form" novalidate="">
                        <p class="comment-notes"><span id="email-notes">电子邮件地址不会被公开。</span> 必填项已用<span class="required">*</span>标注
                        </p>
                        <p class="comment-form-author"><label for="author">姓名 <span class="required">*</span></label>
                            <input id="author" name="author" type="text" value="" size="30" maxlength="245"
                                   aria-required="true" required="required"></p>
                        <p class="comment-form-email"><label for="email">电子邮件 <span class="required">*</span></label>
                            <input id="email" name="email" type="email" value="" size="30" maxlength="100"
                                   aria-describedby="email-notes" aria-required="true" required="required"></p>
                        <p class="comment-form-url"><label for="url">站点</label> <input id="url" name="url" type="url"
                                                                                       value="" size="30"
                                                                                       maxlength="200"></p>
                        <p class="comment-form-comment">
                            <label for="comment">评论</label>
                            <textarea id="comment" name="comment" cols="45" rows="8" maxlength="65525"
                                      aria-required="true" required="required"></textarea>
                        </p>
                        <p class="form-submit"><input name="submit" type="submit" id="submit" class="submit"
                                                      value="发表评论"> <input type="hidden" id="comment_post_ID">
                            <input type="hidden" id="comment_parent" value="0">
                        </p></form>
                </div><!-- #respond -->
            </div>
        </div>
    </div>
</div>
<footer id="site-footer" >
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p class="copyright">&copy; 2014 ThemeWagon.com</p>
            </div>
        </div>
    </div>
</footer>

<!-- Mobile Menu -->
<div class="overlay overlay-hugeinc">
    <button type="button" class="overlay-close"><span class="ion-ios-close-empty"></span></button>
    <nav>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="full-width.html">Blog</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="contact.html">Contact</a></li>
        </ul>
    </nav>
</div>

<script src="/static/front/html/js/script.js"></script>

</body>
</html>
