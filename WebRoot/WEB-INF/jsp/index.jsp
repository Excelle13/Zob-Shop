<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>ZOB商城</title>
    <link rel="icon" href="${pageContext.request.contextPath}/image/icon.png" type="image/png"/>
    <link href="${pageContext.request.contextPath}/css/slider.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7/css/bootstrap.min.css">
    <script language="javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/swiper/js/swiper.min.js"></script>


    <%--划过图片--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/hovereffect/css/normalize.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/hovereffect/css/demo.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/hovereffect/css/component.css"/>
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<%--<nav class="navbar navbar-fixed-top  navbar-inverse " style="z-index: 10001">
    <div class="container-fluid" style="margin-right: 30px">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">ZOB商城</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="${ pageContext.request.contextPath }/index.action">首页</a></li>
                <li><a href="#about">购物指南</a></li>
                <li><a href="#contact">关于我们</a></li>
            </ul>

            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="你想要什么？">
                </div>
                <button type="submit" class="btn btn-default">搜索</button>
            </form>

            <ul class="nav navbar-nav navbar-right">

                <s:if test="#session.existUser == null">
                    <li id="headerLogin" class="headerLogin" style="display: list-item;">
                        <a href="${ pageContext.request.contextPath }/user_loginPage.action">登录</a>
                    </li>
                    <li id="headerRegister" class="headerRegister"
                        style="display: list-item;"><a
                            href="${ pageContext.request.contextPath }/user_registPage.action">注册</a>
                    </li>
                </s:if>
                <s:else>

                    <li style="padding: auto 0;">
                        <img width="45" src="${pageContext.request.contextPath}/image/touxiang.jpg" alt="..."
                             class="img-circle img-responsive">
                    </li>


                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                           aria-expanded="false"><s:property value="#session.existUser.name"/> <span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">个人中心</a></li>
                            <li><a href="#">设置</a></li>
                            <li><a href="#">我的订单</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">更多功能</a></li>
                        </ul>
                    </li>

                    <li id="headerLogin" class="headerLogin" style="display: list-item;">
                        <a href="${ pageContext.request.contextPath }/order_findByUid.action?page=1">我的订单</a>

                    </li>
                    <li id="headerRegister" class="headerRegister"
                        style="display: list-item;"><a
                            href="${ pageContext.request.contextPath }/user_quit.action">退出</a>
                    </li>


                </s:else>


            </ul>
        </div><!-- /.nav-collapse -->
    </div><!-- /.container -->
</nav>--%>


<%--<div class="container1 header" style="margin-top: 50px">--%>
<%--   <div class="span5">
       <div class="logo">
           <a href="./网上商城/index.htm">
               <img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.gif" alt=""/>
           </a>
       </div>
   </div>
   <div class="span9">
       <div class="headerAd">
           <img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" alt="正品保障"
                title="正品保障"/>
       </div>
   </div>

   <div class="phone" style="float: left;">
       客服热线: <strong>96008/53277764</strong>
   </div>
   <div class="cart" style="float: left;">
       <a href="${ pageContext.request.contextPath }/cart_myCart.action">购物车</a>
   </div>--%>


<%--    <div>
        <div style="float: left;">
            <a href="./网上商城/index.htm">
                <img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.gif" alt=""/>
            </a>
        </div>
        <div style="float: left;">
            <img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" alt="正品保障"
                 title="正品保障"/>
        </div>
        <div style="float: left; margin-top: 15px;margin-left: 20px" class="phone">
            客服热线: <strong>96008/53277764</strong>
        </div>
        <div style="float: left;margin-top: 15px;margin-left: 50px" class="cart">
            <a href="${ pageContext.request.contextPath }/cart_myCart.action">购物车</a>
        </div>
    </div>--%>


<%--</div>--%>
<%@ include file="menu.jsp" %>


<style type="text/css">
    .swiper-container {
        width: 100%;
        height: auto;
    }
</style>
<div class="swiper-container" style="margin-bottom: 10px">
    <div class="swiper-wrapper">

        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/image/tb/2.jpg" class="img-responsive"
                                       style="width: 100%;" alt=""></div>
        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/image/tb/4.jpg" class="img-responsive"
                                       style="width: 100%;" alt=""></div>
        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/image/tb/3.jpg" class="img-responsive"
                                       style="width: 100%;" alt=""></div>
        <div class="swiper-slide"><img src="${pageContext.request.contextPath}/image/tb/1.jpg" class="img-responsive"
                                       style="width: 100%;" alt=""></div>
    </div>
    <!-- 如果需要分页器 -->
    <div class="swiper-pagination"></div>

    <!-- 如果需要导航按钮 -->
    <div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>

</div>

<script>
    var mySwiper = new Swiper('.swiper-container', {
        direction: 'horizontal',
        speed: 300,
        autoplay: {
            delay: 2000
        },
        loop: true,

        // 如果需要分页器
        pagination: {
            el: '.swiper-pagination',
        },

        // 如果需要前进后退按钮
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

    })
</script>


<div class="container1 index">

    <div class="span24">
        <div id="hotProduct" class="hotProduct clearfix">
            <div class="title">
                <strong> <span class="glyphicon glyphicon-flash"></span>&nbsp;热门商品</strong>
                <!-- <a  target="_blank"></a> -->
            </div>
            <ul class="tab">
                <li class="current">
                    <a href="./蔬菜分类.htm?tagIds=1" target="_blank"></a>
                </li>
                <li>
                    <a target="_blank"></a>
                </li>
                <li>
                    <a target="_blank"></a>
                </li>
            </ul>
            <!-- 					<div class="hotProductAd">
			<img src="${pageContext.request.contextPath}/image/a.jpg" width="260" height="343" alt="热门商品" title="热门商品">
</div> -->
            <ul class="tabContent" style="display: block;">
                <s:iterator var="p" value="hList">
                    <li>
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
                           target="_blank"><img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
                                                data-original="http://storage.shopxx.net/demo-image/3.0/201301/0ff130db-0a1b-4b8d-a918-ed9016317009-thumbnail.jpg"
                                                style="display: block;"></a>
                    </li>
                </s:iterator>
            </ul>


        </div>
    </div>


    <div class="span24">
        <div id="newProduct" class="newProduct clearfix">
            <div class="title">
                <strong> <span class="glyphicon glyphicon-tag"></span>&nbsp;最新商品</strong>
                <a target="_blank"></a>
            </div>
            <ul class="tab">
                <li class="current">
                    <a href="./蔬菜分类.htm?tagIds=2" target="_blank"></a>
                </li>
                <li>
                    <a target="_blank"></a>
                </li>
                <li>
                    <a target="_blank"></a>
                </li>
            </ul>
            <!-- 					<div class="newProductAd">
									<img src="${pageContext.request.contextPath}/image/q.jpg" width="260" height="343" alt="最新商品" title="最新商品">
						</div>
						 -->
            <ul class="tabContent" style="display: block;">
                <s:iterator var="p" value="nList">


                    <li>

                        <%--<figure class="effect-zoe">--%>
                            <%--<img src="${pageContext.request.contextPath}/hovereffect/img/14.jpg" alt="img14"/>--%>
                            <%--<figcaption>--%>
                                <%--<h2>Creative <span>Zoe</span></h2>--%>
                                <%--<span class="icon-heart"></span>--%>
                                <%--<span class="icon-eye"></span>--%>
                                <%--<span class="icon-paper-clip"></span>--%>
                                <%--<p>Zoe never had he deliberately punched the bear in his face.</p>--%>
                                    <%--&lt;%&ndash;<a href="#">View more</a>&ndash;%&gt;--%>
                            <%--</figcaption>--%>
                        <%--</figure>--%>

                            <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
                            target="_blank">
                            <img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
                            data-original="http://storage.shopxx.net/demo-image/3.0/201301/4a51167a-89d5-4710-aca2-7c76edc355b8-thumbnail.jpg"
                            style="display: block;">
                            </a>
                            <h5 style="text-align: center;color: #8e8e8e; padding: 5px 5px;overflow:hidden;width: 170px;"><s:property value="#p.pname"/></h5>

                    </li>
                </s:iterator>
            </ul>

        </div>
    </div>

    <div class="span24">
        <div id="youNeed" class="newProduct clearfix">
            <div class="title" style="background: #e91e63">
                <strong> <span class="glyphicon glyphicon-tag"></span>&nbsp;你可能喜欢的</strong>
                <a target="_blank"></a>
            </div>
            <ul class="tab" style="background: #e91e63">
                <li>
                    <a href="./蔬菜分类.htm?tagIds=2" target="_blank"></a>
                </li>
                <li>
                    <a target="_blank"></a>
                </li>
                <li>
                    <a target="_blank"></a>
                </li>
            </ul>
            <!-- 					<div class="newProductAd">
									<img src="${pageContext.request.contextPath}/image/q.jpg" width="260" height="343" alt="最新商品" title="最新商品">
						</div>
						 -->
            <ul class="tabContent" style="display: block;">
                <s:iterator var="p" value="uLikeList">
                    <li>
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>"
                           target="_blank">
                            <img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
                                                data-original="http://storage.shopxx.net/demo-image/3.0/201301/4a51167a-89d5-4710-aca2-7c76edc355b8-thumbnail.jpg"
                                                style="display: block;"></a></li>
                    </li>
                </s:iterator>
            </ul>

        </div>
    </div>


    <div class="span24">
        <div class="friendLink">
            <dl>
                <dt>新手指南</dt>
                <dd>
                    <a target="_blank">支付方式</a>
                    |
                </dd>
                <dd>
                    <a target="_blank">配送方式</a>
                    |
                </dd>
                <dd>
                    <a target="_blank">售后服务</a>
                    |
                </dd>
                <dd>
                    <a target="_blank">购物帮助</a>
                    |
                </dd>
                <dd>
                    <a target="_blank">蔬菜卡</a>
                    |
                </dd>
                <dd>
                    <a target="_blank">礼品卡</a>
                    |
                </dd>
                <dd>
                    <a target="_blank">银联卡</a>
                    |
                </dd>
                <dd>
                    <a target="_blank">亿家卡</a>
                    |
                </dd>

                <dd class="more">
                    <a>更多</a>
                </dd>
            </dl>
        </div>
    </div>
</div>
<div class="container1 footer">
    <div class="span24">
        <div class="footerAd">
            <img src="${pageContext.request.contextPath}/image/footer.jpg" width="950" height="52" alt="我们的优势"
                 title="我们的优势">
        </div>
    </div>
    <div class="span24">
        <ul class="bottomNav">
            <li>
                <a>关于我们</a>
                |
            </li>
            <li>
                <a>联系我们</a>
                |
            </li>
            <li>
                <a>招贤纳士</a>
                |
            </li>
            <li>
                <a>法律声明</a>
                |
            </li>
            <li>
                <a>友情链接</a>
                |
            </li>
            <li>
                <a target="_blank">支付方式</a>
                |
            </li>
            <li>
                <a target="_blank">配送方式</a>
                |
            </li>
            <li>
                <a>服务声明</a>
                |
            </li>
            <li>
                <a>广告声明</a>

            </li>
        </ul>
    </div>
    <div class="span24">
        <div class="copyright">Copyright © 2005-2015 网上商城 版权所有</div>
    </div>
</div>


</body>
</html>