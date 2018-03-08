<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<%--<div class="span10 last" style="float: left;">
    &lt;%&ndash;<div class="topNav clearfix">
        <ul>
            <s:if test="#session.existUser == null">
                <li id="headerLogin" class="headerLogin" style="display: list-item;">
                    <a href="${ pageContext.request.contextPath }/user_loginPage.action">登录</a>|
                </li>
                <li id="headerRegister" class="headerRegister"
                    style="display: list-item;"><a
                        href="${ pageContext.request.contextPath }/user_registPage.action">注册</a>|
                </li>
            </s:if>
            <s:else>
                <li id="headerLogin" class="headerLogin" style="display: list-item;">
                    <s:property value="#session.existUser.name"/>
                    |
                </li>
                <li id="headerLogin" class="headerLogin" style="display: list-item;">
                    <a href="${ pageContext.request.contextPath }/order_findByUid.action?page=1">我的订单</a>
                    |
                </li>
                <li id="headerRegister" class="headerRegister"
                    style="display: list-item;"><a href="${ pageContext.request.contextPath }/user_quit.action">退出</a>|
                </li>
            </s:else>

            <li><a>会员中心</a> |</li>
            <li><a>购物指南</a> |</li>
            <li><a>关于我们</a></li>
        </ul>
    </div>&ndash;%&gt;
   &lt;%&ndash; <div class="phone" style="float: left;">
        客服热线: <strong>96008/53277764</strong>
    </div>
    <div class="cart" style="float: left;">
        <a href="${ pageContext.request.contextPath }/cart_myCart.action">购物车</a>
    </div>&ndash;%&gt;
</div>--%>
<nav class="navbar navbar-fixed-top  navbar-inverse " style="z-index: 10001">
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

            <s:if test="1">


                <s:if test="#session.existUser.name=='hezhaobo'">
                    <form class="navbar-form navbar-left"
                          action="${pageContext.request.contextPath}product_findByCid.action?cid=1&page=1"
                          method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="潮流女装">
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                </s:if>
                <s:if test="#session.existUser.name=='杨幂'">
                    <form class="navbar-form navbar-left"
                          action="${pageContext.request.contextPath}product_findByCid.action?cid=2&page=1"
                          method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="百搭女鞋">
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                </s:if>
                <s:if test="#session.existUser.name=='刘恺威'">
                    <form class="navbar-form navbar-left"
                          action="${pageContext.request.contextPath}product_findByCsid.action?csid=5&page=1"
                          method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="帅气男装">
                        </div>
                        <button type="submit" class="btn btn-default">搜索</button>
                    </form>
                </s:if>
            </s:if>
            <s:else>
                <form class="navbar-form navbar-left"
                      action="${pageContext.request.contextPath}product_findByCid.action?cid=1&page=1" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="热门商品">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
            </s:else>
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

                    <li style="padding: 3px 0;">
                        <s:if test="#session.existUser.name=='hezhaobo'">
                            <img width="45" src="${pageContext.request.contextPath}/image/superVip.jpg" alt="..."
                                 class="img-circle img-responsive">
                        </s:if>
                        <s:else>


                            <img width="45" src="${pageContext.request.contextPath}/image/simpleVip.jpg" alt="..."
                                 class="img-circle img-responsive">
                        </s:else>
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
</nav>
<div class="container1 header" style="margin-top: 71px;margin-bottom: 18px">
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
</div>

<%--
<div class="span24" style="height: 36px">
    <ul class="mainNav">
        <li><a href="${ pageContext.request.contextPath }/index.action"><span class="glyphicon glyphicon-home"></span>&nbsp;
            主页</a> |
        </li>
        <s:iterator var="c" value="#session.cList">
            <li>
                <a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property
                        value="#c.cname"/></a> |
            </li>
        </s:iterator>

    </ul>
</div>--%>
<%--<div style="width: 900px; overflow: auto;margin: 0 auto;">--%>
<%-- <ul class="mainNav">
     <li><a href="${ pageContext.request.contextPath }/index.action"><span class="glyphicon glyphicon-home"></span>&nbsp;
         主页</a> |
     </li>
     <s:iterator var="c" value="#session.cList">
         <li>
             <a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property
                     value="#c.cname"/></a> |
         </li>
     </s:iterator>

 </ul>--%>

<ul class="layui-nav layui-bg-cyan" style="width: 80%; height:auto;margin: 0 auto;">>
    <li class="layui-nav-item layui-this"><a href="${ pageContext.request.contextPath }/index.action"><span
            class="glyphicon glyphicon-home"></span>&nbsp;
        主页</a></li>

    <s:iterator var="c" value="#session.cList">
        <li class="layui-nav-item">
            <a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property
                    value="#c.cname"/></a>
            <dl class="layui-nav-child">
                <dd><a href="">热门</a></dd>
                <dd><a href="">最新</a></dd>
                <dd><a href="">销量最高</a></dd>
                <dd><a href="">口碑最好</a></dd>
                <dd><a href="">口碑最好</a></dd>
            </dl>
        </li>
    </s:iterator>
    <li class="layui-nav-item"><a href="">其他</a></li>
</ul>
<%--</div>--%>


<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
