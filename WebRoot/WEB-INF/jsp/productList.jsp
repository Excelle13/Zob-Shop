<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0048)http://localhost:8080/mango/product/list/1.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>ZOB商城</title>
    <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/product.css" rel="stylesheet" type="text/css"/>
    <%--右侧购物车--%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/cart/css/base.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7/css/bootstrap.min.css">
    <script language="javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

    <link rel="icon" href="${pageContext.request.contextPath}/image/icon.png" type="image/png"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/cart/js/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/cart/js/common.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/cart/js/quick_links.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/swiper/js/swiper.min.js"></script>

</head>

<body>
<%@ include file="menu.jsp" %>
<%--<nav class="navbar navbar-fixed-top  navbar-inverse " style="z-index: 100011">
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
</nav>


<div class="container1 header" style="margin-top: 50px">
    &lt;%&ndash;   <div class="span5">
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
       </div>&ndash;%&gt;


    <div>
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

    <%@ include file="menu.jsp" %>

</div>--%>


<%--
<div class="container1 header" style="margin-top: 50px">
    &lt;%&ndash;   <div class="span5">
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
       </div>&ndash;%&gt;


    <div>
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

    <%@ include file="menu.jsp" %>

</div>--%>


<%--<div class="container header">
    <div class="span5">
        <div class="logo">
            <a href="http://localhost:8080/mango/">
                <img src="${pageContext.request.contextPath}/image/r___________renleipic_01/logo.gif" alt="">
            </a>
        </div>
    </div>
    <div class="span9">
        <div class="headerAd">
            <img src="${pageContext.request.contextPath}/image/header.jpg" width="320" height="50" alt="正品保障"
                 title="正品保障">
        </div>
    </div>


    <%@ include file="menu.jsp" %>

</div>--%>
<div class="container1 productList">
    <div class="span6">
        <div class="hotProductCategory" style="margin-top: 8px">

            <s:iterator var="c" value="#session.cList">
                <dl style="margin-top: 4px">
                    <dt style="border-bottom: 2px solid #bac7b9;padding-bottom:5px;margin-bottom: 8px">
                        <a style="padding: 2px 0;text-decoration: none"
                           href="${pageContext.request.contextPath}/product_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property
                                value="#c.cname"/></a>
                    </dt>

                    <s:iterator var="cs" value="#c.categorySeconds">

                        <dd style="background:#f3f6ff;margin:2px 1px;border-radius: 2px">
                            <a style="padding: 2px 5px;text-decoration: none"
                               href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="#cs.csid"/>&page=1"><s:property
                                    value="#cs.csname"/></a>
                        </dd>

                    </s:iterator>
                </dl>
            </s:iterator>

        </div>
    </div>
    <div class="span18 last">

        <div style="background: #009688;border-radius: 3px ;padding: 2px;margin-top: 7px;margin-bottom: 7px">
            <h3 style="font-size: 21px; padding: 5px;color: white;margin-left: 10px">商品</h3>
        </div>
        <form id="productForm" action="${pageContext.request.contextPath}/image/蔬菜 - Powered By Mango Team.htm"
              method="get">

            <div id="result" class="result table clearfix">
                <ul>
                    <s:iterator var="p" value="pageBean.list">
                        <li>
                            <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>">
                                <img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" width="170"
                                     height="170" style="display: inline-block;">

                                <span style='color:green'>
											 <s:property value="#p.pname"/>
											</span>

                                <span class="price">
												商城价： ￥<s:property value="#p.shop_price"/>
											</span>

                            </a>
                        </li>
                    </s:iterator>

                </ul>
            </div>
            <div class="pagination">
                <span>第 <s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/> 页</span>
                <s:if test="cid != null">
                    <s:if test="pageBean.page != 1">
                        <a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=1"
                           class="firstPage">&nbsp;</a>
                        <a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page-1"/>"
                           class="previousPage">&nbsp;</a>
                    </s:if>

                    <s:iterator var="i" begin="1" end="pageBean.totalPage">
                        <s:if test="pageBean.page != #i">
                            <a href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="#i"/>"><s:property
                                    value="#i"/></a>
                        </s:if>
                        <s:else>
                            <span class="currentPage"><s:property value="#i"/></span>
                        </s:else>
                    </s:iterator>

                    <s:if test="pageBean.page != pageBean.totalPage">
                        <a class="nextPage"
                           href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
                        <a class="lastPage"
                           href="${ pageContext.request.contextPath }/product_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
                    </s:if>
                </s:if>
                <s:if test="csid != null">
                    <s:if test="pageBean.page != 1">
                        <a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=1"
                           class="firstPage">&nbsp;</a>
                        <a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page-1"/>"
                           class="previousPage">&nbsp;</a>
                    </s:if>

                    <s:iterator var="i" begin="1" end="pageBean.totalPage">
                        <s:if test="pageBean.page != #i">
                            <a href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="#i"/>"><s:property
                                    value="#i"/></a>
                        </s:if>
                        <s:else>
                            <span class="currentPage"><s:property value="#i"/></span>
                        </s:else>
                    </s:iterator>

                    <s:if test="pageBean.page != pageBean.totalPage">
                        <a class="nextPage"
                           href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
                        <a class="lastPage"
                           href="${ pageContext.request.contextPath }/product_findByCsid.action?csid=<s:property value="csid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
                    </s:if>
                </s:if>
            </div>
        </form>


    </div>


    <%--    <div class="swiper-container" style="width: 74%;">
            <div style="background: #f44336;border-radius: 3px ;padding: 2px;margin-top: 7px;margin-bottom: 7px">
                <h3 style="font-size: 21px; padding: 5px;color: white;margin-left: 10px">热门推荐</h3>
            </div>
            <div class="swiper-wrapper">
                <s:iterator var="p" value="pageBean.list">
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>">
                            <img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                </s:iterator>

            </div>
        </div>--%>


    <s:if test="#session.existUser.name=='hezhaobo' || #session.existUser.name=='杨幂'|| #session.existUser.name=='刘恺威' ">


        <s:if test="#session.existUser.name=='hezhaobo'">
            <div class="swiper-container" style="width: 74%;">
                <div style="background: #f44336;border-radius: 3px ;padding: 2px;margin-top: 7px;margin-bottom: 7px">
                    <h3 style="font-size: 21px; padding: 5px;color: white;margin-left: 10px">热门推荐</h3>
                </div>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=79">
                            <img src="${pageContext.request.contextPath}/products/dn2.jpg" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=83">
                            <img src="${pageContext.request.contextPath}/products/alien.jpg" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=82">
                            <img src="${pageContext.request.contextPath}/products/note8.jpg" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=75">
                            <img src="${pageContext.request.contextPath}/products/1/duanxue3.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=45">
                            <img src="${pageContext.request.contextPath}/products/1/cs50004.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>


                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=11">
                            <img src="${pageContext.request.contextPath}/products/1/cs20001.jpg" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>

                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=12">
                            <img src="${pageContext.request.contextPath}/products/1/cs20002.jpg" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>

                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=43">
                            <img src="${pageContext.request.contextPath}/products/1/cs50002.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=44">
                            <img src="${pageContext.request.contextPath}/products/1/cs50003.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=76">
                            <img src="${pageContext.request.contextPath}/products/1/duanxue4.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>

                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=46">
                            <img src="${pageContext.request.contextPath}/products/1/cs50005.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>


                </div>
            </div>


        </s:if>
        <s:if test="#session.existUser.name=='杨幂'">
            <div class="swiper-container" style="width: 74%;">
                <div style="background: #f44336;border-radius: 3px ;padding: 2px;margin-top: 7px;margin-bottom: 7px">
                    <h3 style="font-size: 21px; padding: 5px;color: white;margin-left: 10px">热门推荐</h3>
                </div>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=72">
                            <img src="${pageContext.request.contextPath}/products/1/nvxie.jpg" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=74">
                            <img src="${pageContext.request.contextPath}/products/1/duanxue2.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=75">
                            <img src="${pageContext.request.contextPath}/products/1/duanxue3.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>

                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=76">
                            <img src="${pageContext.request.contextPath}/products/1/duanxue4.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>

                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=11">
                            <img src="${pageContext.request.contextPath}/products/1/cs20001.jpg" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>

                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=12">
                            <img src="${pageContext.request.contextPath}/products/1/cs20002.jpg" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>


                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=13">
                            <img src="${pageContext.request.contextPath}/products/1/cs20003.jpg" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>


                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=14">
                            <img src="${pageContext.request.contextPath}/products/1/cs20004.jpg" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>


                </div>
            </div>
        </s:if>
        <s:if test="#session.existUser.name=='刘恺威'">
            <div class="swiper-container" style="width: 74%;">
                <div style="background: #f44336;border-radius: 3px ;padding: 2px;margin-top: 7px;margin-bottom: 7px">
                    <h3 style="font-size: 21px; padding: 5px;color: white;margin-left: 10px">热门推荐</h3>
                </div>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=42">
                            <img src="${pageContext.request.contextPath}/products/1/cs50001.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=43">
                            <img src="${pageContext.request.contextPath}/products/1/cs50002.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=44">
                            <img src="${pageContext.request.contextPath}/products/1/cs50003.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=45">
                            <img src="${pageContext.request.contextPath}/products/1/cs50004.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=46">
                            <img src="${pageContext.request.contextPath}/products/1/cs50005.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=47">
                            <img src="${pageContext.request.contextPath}/products/1/cs50006.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=48">
                            <img src="${pageContext.request.contextPath}/products/1/cs50007.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=49">
                            <img src="${pageContext.request.contextPath}/products/1/cs50008.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=50">
                            <img src="${pageContext.request.contextPath}/products/1/cs50009.png" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>

                </div>
            </div>
        </s:if>

    </s:if>
    <s:else>

        <div class="swiper-container" style="width: 74%;">
            <div style="background: #f44336;border-radius: 3px ;padding: 2px;margin-top: 7px;margin-bottom: 7px">
                <h3 style="font-size: 21px; padding: 5px;color: white;margin-left: 10px">热门推荐</h3>
            </div>
            <div class="swiper-wrapper">
                <s:iterator var="p" value="pageBean.list">
                    <div class="swiper-slide">
                        <a href="${ pageContext.request.contextPath }/product_findByPid.action?pid=<s:property value="#p.pid"/>">
                            <img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>" width="100"
                                 height="100" style="display: inline-block;"></a>
                    </div>
                </s:iterator>

            </div>
        </div>
    </s:else>


    <script>
        var mySwiper = new Swiper('.swiper-container', {
            autoplay: {
                delay: 3000,//1秒切换一次
            },
            centeredSlides: true,
            scrollbar: {
                el: '.swiper-scrollbar',
            },
            slidesPerView: 5,
            slidesPerGroup: 3,
            spaceBetween: 50,


            freeMode: true
        })
    </script>
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
                <a>诚聘英才</a>
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
                <a>官网</a>
                |
            </li>
            <li>
                <a>论坛</a>

            </li>
        </ul>
    </div>
    <div class="span24">
        <div class="copyright">Copyright©2005-2015 网上商城 版权所有</div>
    </div>
</div>


<div id="home" style="height:900px;z-index: 10000001">

    <div class="mui-mbar-tabs">
        <div class="quick_link_mian">
            <div class="quick_links_panel">
                <div id="quick_links" class="quick_links">
                    <li>
                        <a href="#" class="my_qlinks"><i class="setting"></i></a>
                        <div class="ibar_login_box status_login">
                            <div class="avatar_box">
                                <p class="avatar_imgbox"><img src="images/no-img_mid_.jpg"/></p>
                                <ul class="user_info">
                                    <li>用户名：sl19931003</li>
                                    <li>级&nbsp;别：普通会员</li>
                                </ul>
                            </div>
                            <div class="login_btnbox">
                                <a href="#" class="login_order">我的订单</a>
                                <a href="#" class="login_favorite">我的收藏</a>
                            </div>
                            <i class="icon_arrow_white"></i>
                        </div>
                    </li>
                    <li id="shopCart">
                        <a href="#" class="message_list"><i class="message"></i>
                            <div class="span">购物车</div>
                            <span class="cart_num">0</span></a>
                    </li>
                    <li>
                        <a href="#" class="history_list"><i class="view"></i></a>
                        <div class="mp_tooltip" style=" visibility:hidden;">我的资产<i
                                class="icon_arrow_right_black"></i>
                        </div>
                    </li>
                    <li>
                        <a href="#" class="mpbtn_histroy"><i class="zuji"></i></a>
                        <div class="mp_tooltip">我的足迹<i class="icon_arrow_right_black"></i></div>
                    </li>
                    <li>
                        <a href="#" class="mpbtn_wdsc"><i class="wdsc"></i></a>
                        <div class="mp_tooltip">我的收藏<i class="icon_arrow_right_black"></i></div>
                    </li>
                    <li>
                        <a href="#" class="mpbtn_recharge"><i class="chongzhi"></i></a>
                        <div class="mp_tooltip">我要充值<i class="icon_arrow_right_black"></i></div>
                    </li>
                </div>
                <div class="quick_toggle">
                    <li>
                        <a href="#"><i class="kfzx"></i></a>
                        <div class="mp_tooltip">客服中心<i class="icon_arrow_right_black"></i></div>
                    </li>
                    <li>
                        <a href="#none"><i class="mpbtn_qrcode"></i></a>
                        <div class="mp_qrcode" style="display:none;"><img src="images/weixin_code_145.png"
                                                                          width="148"
                                                                          height="175"/><i
                                class="icon_arrow_white"></i>
                        </div>
                    </li>
                    <li><a href="#top" class="return_top"><i class="top"></i></a></li>
                </div>
            </div>
            <div id="quick_links_pop" style="margin-top: 16%" class="quick_links_pop hide"></div>
        </div>
    </div>


    <script type="text/javascript" src="js/parabola.js"></script>
    <script type="text/javascript">
        $(".quick_links_panel li").mouseenter(function () {
            $(this).children(".mp_tooltip").animate({left: -92, queue: true});
            $(this).children(".mp_tooltip").css("visibility", "visible");
            $(this).children(".ibar_login_box").css("display", "block");
        });
        $(".quick_links_panel li").mouseleave(function () {
            $(this).children(".mp_tooltip").css("visibility", "hidden");
            $(this).children(".mp_tooltip").animate({left: -121, queue: true});
            $(this).children(".ibar_login_box").css("display", "none");
        });
        $(".quick_toggle li").mouseover(function () {
            $(this).children(".mp_qrcode").show();
        });
        $(".quick_toggle li").mouseleave(function () {
            $(this).children(".mp_qrcode").hide();
        });

        // 元素以及其他一些变量
        var eleFlyElement = document.querySelector("#flyItem"), eleShopCart = document.querySelector("#shopCart");
        var numberItem = 0;
        // 抛物线运动
        var myParabola = funParabola(eleFlyElement, eleShopCart, {
            speed: 400, //抛物线速度
            curvature: 0.0008, //控制抛物线弧度
            complete: function () {
                eleFlyElement.style.visibility = "hidden";
                eleShopCart.querySelector("span").innerHTML = ++numberItem;
            }
        });
        // 绑定点击事件
        if (eleFlyElement && eleShopCart) {

            [].slice.call(document.getElementsByClassName("btnCart")).forEach(function (button) {
                button.addEventListener("click", function (event) {
                    // 滚动大小
                    var scrollLeft = document.documentElement.scrollLeft || document.body.scrollLeft || 0,
                        scrollTop = document.documentElement.scrollTop || document.body.scrollTop || 0;
                    eleFlyElement.style.left = event.clientX + scrollLeft + "px";
                    eleFlyElement.style.top = event.clientY + scrollTop + "px";
                    eleFlyElement.style.visibility = "visible";

                    // 需要重定位
                    myParabola.position().move();
                });
            });
        }
    </script>
</div>

</body>
</html>