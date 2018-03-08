<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>菜单</title>
    <link href="${pageContext.request.contextPath}/css/left.css" rel="stylesheet" type="text/css"/>
    <link rel="StyleSheet" href="${pageContext.request.contextPath}/css/dtree.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
</head>
<body>
<%--<table width="100" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="12"></td>
    </tr>
</table>

<table width="100%" border="0">
    <tr>
        <td>
            <div class="dtree">

                <a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>

                <script type="text/javascript" src="${pageContext.request.contextPath}/js/dtree.js"></script>
                <script type="text/javascript">
                    <!--
                    d = new dTree('d');
                    d.add('01', -1, '系统菜单树');
                    d.add('0101', '01', '用户管理', '', '', 'mainFrame');
                    d.add('010101', '0101', '用户管理', '${pageContext.request.contextPath}/userAdmin_findAll.action?page=1', '', 'mainFrame');
                    d.add('0102', '01', '一级分类管理', '', '', 'mainFrame');
                    d.add('010201', '0102', '一级分类管理', '${pageContext.request.contextPath}/adminCategory_findAll.action', '', 'mainFrame');
                    d.add('0103', '01', '二级分类管理');
                    d.add('010301', '0103', '二级分类管理', '${pageContext.request.contextPath}/adminCategorySecond_findAll.action?page=1', '', 'mainFrame');
                    d.add('0104', '01', '商品管理');
                    d.add('010401', '0104', '商品管理', '${pageContext.request.contextPath}/adminProduct_findAll.action?page=1', '', 'mainFrame');
                    d.add('0105', '01', '订单管理');
                    d.add('010501', '0105', '订单管理', '${pageContext.request.contextPath}/adminOrder_findAll.action?page=1', '', 'mainFrame');
                    document.write(d);
                    //-->
                </script>
            </div>
        </td>
    </tr>
</table>--%>

<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="javascript:;">用户管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/userAdmin_findAll.action?page=1" target="mainFrame">用户管理</a>
                    </dd>
                    <dd><a href="${pageContext.request.contextPath}/userAdmin_findAll.action?page=1" target="mainFrame">用户级别</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">一级分类管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/adminCategory_findAll.action" target="mainFrame">一级分类管理</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">二级分类管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/adminCategorySecond_findAll.action?page=1"
                           target="mainFrame">二级分类管理</a>
                    </dd>
                </dl>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;">商品管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${pageContext.request.contextPath}/adminProduct_findAll.action?page=1"
                           target="mainFrame">商品管理</a>
                    </dd>
                </dl>
            </li>

            <%--#session.existAdminUser.username--%>
            <s:if test="#session.existAdminUser.username=='admin'">
                <li class="layui-nav-item">
                    <a href="javascript:;">订单管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="${pageContext.request.contextPath}/adminOrder_findAll.action?page=1"
                               target="mainFrame">订单管理</a>
                        </dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="javascript:;">系统设置</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">皮肤管理</a></dd>
                        <dd><a href="javascript:;">通知管理</a></dd>
                        <dd><a href="javascript:;">系统更新</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">更多功能</a></li>


            </s:if>

        </ul>
    </div>
</div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
</html>
