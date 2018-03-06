<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7/css/bootstrap.min.css">
    <script language="javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function showDetail(oid) {
            var but = document.getElementById("but" + oid);
            var div1 = document.getElementById("div" + oid);
//            but.addEventListener('mouseout', function () {
//
//            })

//            but.addEventListener('mouseover', function () {
                if (but.value == "订单详情") {
                    // 1.创建异步对象
                    var xhr = createXmlHttp();
                    // 2.设置监听
                    xhr.onreadystatechange = function () {
                        if (xhr.readyState == 4) {
                            if (xhr.status == 200) {

                                div1.innerHTML = xhr.responseText;
                            }
                        }
                    }
                    // 3.打开连接
                    xhr.open("GET", "${pageContext.request.contextPath}/adminOrder_findOrderItem.action?oid=" + oid + "&time=" + new Date().getTime(), true);
                    // 4.发送
                    xhr.send(null);
                    but.value = "关闭";
                } else {
                    div1.innerHTML = "";
                    but.value = "订单详情";
                }
//            }

//            );


        }

        function createXmlHttp() {
            var xmlHttp;
            try { // Firefox, Opera 8.0+, Safari
                xmlHttp = new XMLHttpRequest();
            }
            catch (e) {
                try {// Internet Explorer
                    xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                }
                catch (e) {
                    try {
                        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    catch (e) {
                    }
                }
            }

            return xmlHttp;
        }
    </script>
</HEAD>
<body>

&nbsp;
<blockquote class="layui-elem-quote layui-text" style="margin-left: 10px;padding: 0;">
    <ol class="breadcrumb" style="background: none">
        <li><a href="#">主页</a></li>
        <li><a href="#">订单管理</a></li>
        <li class="active">订单列表</li>
    </ol>
</blockquote>
<h3 style="text-align: center">订单信息</h3>
<hr>


<table class="table table-hover table-bordered">
    <%--<caption style="text-align: center">用户列表</caption>--%>
    <thead>
    <tr class="active">
        <th>序号</th>
        <th>订单编号</th>
        <th>订单金额</th>
        <th>收货人</th>
        <th>订单状态</th>
        <th>订单详情</th>
    </tr>
    </thead>
    <tbody>
    <s:iterator var="o" value="pageBean.list" status="status">
        <tr>
            <td><s:property value="#status.count"/></td>
            <td><s:property value="#o.oid"/></td>
            <td><s:property value="#o.total"/></td>
            <td><s:property value="#o.name"/></td>

            <td
            <s:if test="#o.state==1">
                    未付款
            </s:if>
            <s:if test="#o.state==2">
                <a href="${ pageContext.request.contextPath }/adminOrder_updateState.action?oid=<s:property value="#o.oid"/>">
                    <font color="blue">发货</font>
                </a>
            </s:if>
            <s:if test="#o.state==3">
                等待确认收货
            </s:if>
            <s:if test="#o.state==4">
                订单完成
            </s:if>
            </td>


            <td>

                <input class="layui-btn layui-btn-primary" type="button" value="订单详情"
                       id="but<s:property value="#o.oid"/>"
                       onclick="showDetail(<s:property value="#o.oid"/>)"/>
                <div id="div<s:property value="#o.oid"/>">

                </div>
            </td>

        </tr>
    </s:iterator>
    <tr>

    </tr>
    </tbody>

</table>


<div class="container">
    <ul class="pager">
        第
        <li><a href="javascript:void(0)"><s:property value="pageBean.page"/></a></li>
        /

        <li><a href="javascript:void(0)"> <s:property value="pageBean.totalPage"/></a></li>

        页
        <s:if test="pageBean.page != 1">
            <li><a href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=1">首页</a></li>
            <li>
                <a href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>
            </li>
        </s:if>

        <s:if test="pageBean.page != pageBean.totalPage">
            <li>
                <a href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>
            </li>
            <li>
                <a href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>
            </li>
        </s:if>

    </ul>
</div>


<form id="Form1" name="Form1" action="${pageContext.request.contextPath}/user/list.jsp" method="post">
    <table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
        <TBODY>
        <tr>
            <td class="ta_01" align="center" bgColor="#afd1f3">
                <strong>订单列表</strong>
            </TD>
        </tr>

        <tr>
            <td class="ta_01" align="center" bgColor="#f5fafe">
                <table cellspacing="0" cellpadding="1" rules="all"
                       bordercolor="gray" border="1" id="DataGrid1"
                       style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
                    <tr
                            style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

                        <td align="center" width="10%">
                            序号
                        </td>
                        <td align="center" width="10%">
                            订单编号
                        </td>
                        <td align="center" width="10%">
                            订单金额
                        </td>
                        <td align="center" width="10%">
                            收货人
                        </td>
                        <td align="center" width="10%">
                            订单状态
                        </td>
                        <td align="center" width="50%">
                            订单详情
                        </td>
                    </tr>
                    <s:iterator var="o" value="pageBean.list" status="status">
                        <tr onmouseover="this.style.backgroundColor = 'white'"
                            onmouseout="this.style.backgroundColor = '#F5FAFE';">
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="18%">
                                <s:property value="#status.count"/>
                            </td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="17%">
                                <s:property value="#o.oid"/>
                            </td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="17%">
                                <s:property value="#o.total"/>
                            </td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="17%">
                                <s:property value="#o.name"/>
                            </td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="17%">
                                <s:if test="#o.state==1">
                                    未付款
                                </s:if>
                                <s:if test="#o.state==2">
                                    <a href="${ pageContext.request.contextPath }/adminOrder_updateState.action?oid=<s:property value="#o.oid"/>"><font
                                            color="blue">发货</font></a>
                                </s:if>
                                <s:if test="#o.state==3">
                                    等待确认收货
                                </s:if>
                                <s:if test="#o.state==4">
                                    订单完成
                                </s:if>

                            </td>
                            <td align="center" style="HEIGHT: 22px">
                                <input type="button" value="订单详情" id="but<s:property value="#o.oid"/>"
                                       onclick="showDetail(<s:property value="#o.oid"/>)"/>
                                <div id="div<s:property value="#o.oid"/>">

                                </div>
                            </td>

                        </tr>
                    </s:iterator>
                </table>
            </td>
        </tr>
        <tr align="center">
            <td colspan="7">
                第<s:property value="pageBean.page"/>/<s:property value="pageBean.totalPage"/>页
                <s:if test="pageBean.page != 1">
                    <a href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=1">首页</a>|
                    <a href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>|
                </s:if>
                <s:if test="pageBean.page != pageBean.totalPage">
                    <a href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>|
                    <a href="${ pageContext.request.contextPath }/adminOrder_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>|
                </s:if>
            </td>
        </tr>
        </TBODY>
    </table>
</form>
</body>


<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>

</HTML>

