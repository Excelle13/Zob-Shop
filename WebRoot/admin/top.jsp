<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <style type="text/css">
        BODY {
            MARGIN: 0px;
            BACKGROUND-COLOR: #ffffff
        }

        BODY {
            FONT-SIZE: 12px;
            COLOR: #000000
        }

        TD {
            FONT-SIZE: 12px;
            COLOR: #000000
        }

        TH {
            FONT-SIZE: 12px;
            COLOR: #000000
        }
    </style>
    <link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css">
</HEAD>
<body class="layui-layout-body">
<%--
<table width="100%" height="70%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td>
            <img width="100%" src="${pageContext.request.contextPath}/images/top_01.jpg">
        </td>

        <td width="100%" background="${pageContext.request.contextPath}/images/top_100.jpg">
        </td>
    </tr>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="30" valign="bottom" background="${pageContext.request.contextPath}/images/mis_01.jpg">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="85%" align="left">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <font color="#000000">
                            <script language="JavaScript">
                                <!--
                                tmpDate = new Date();
                                date = tmpDate.getDate();
                                month = tmpDate.getMonth() + 1;
                                year = tmpDate.getYear();
                                document.write('2018');
                                document.write("年");
                                document.write(month);
                                document.write("月");
                                document.write(date);
                                document.write("日 ");

                                myArray = new Array(6);
                                myArray[0] = "星期日";
                                myArray[1] = "星期一";
                                myArray[2] = "星期二";
                                myArray[3] = "星期三";
                                myArray[4] = "星期四";
                                myArray[5] = "星期五";
                                myArray[6] = "星期六";
                                weekday = tmpDate.getDay();
                                if (weekday == 0 | weekday == 6) {
                                    document.write(myArray[weekday])
                                }
                                else {
                                    document.write(myArray[weekday])
                                }
                                ;
                                // -->
                            </script>
                        </font>
                    </td>
                    <td width="15%">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="16"
                                    background="${pageContext.request.contextPath}/images/mis_05b.jpg">
                                    <img
                                            src="${pageContext.request.contextPath}/images/mis_05a.jpg"
                                            width="6" height="18">
                                </td>
                                <td width="155" valign="bottom"
                                    background="${pageContext.request.contextPath}/images/mis_05b.jpg">
                                    用户名：
                                    <font color="blue"><s:property value="#session.existAdminUser.username"/></font>
                                </td>
                                <td width="10" align="right"
                                    background="${pageContext.request.contextPath}/images/mis_05b.jpg">
                                    <img src="${pageContext.request.contextPath}/images/mis_05c.jpg" width="6"
                                         height="18">
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td align="right" width="5%">
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
--%>


<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">ZOB商城管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="${pageContext.request.contextPath}/image/icon.png" class="layui-nav-img">
                    <s:property value="#session.existAdminUser.username"/>
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a target="_parent" href="http://localhost:8080/admin/index.jsp">退出</a></li>
        </ul>
    </div>
</div>

</body>
<%--<script src="//res.layui.com/layui/dist/layui.js" charset="utf-8"></script>--%>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/js/Chart.min.js"></script>--%>
</HTML>
