<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/css/Style1.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
    <script type="text/javascript">
        function addProduct() {
            window.location.href = "${pageContext.request.contextPath}/adminProduct_addPage.action";
        }
    </script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7/css/bootstrap.min.css">
    <script language="javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7/js/bootstrap.min.js"></script>

</HEAD>
<body>

&nbsp;
<blockquote class="layui-elem-quote layui-text" style="margin-left: 10px;padding: 0;">
    <ol class="breadcrumb" style="background: none">
        <li><a href="#">主页</a></li>
        <li><a href="#">商品管理</a></li>
        <li class="active">商品信息</li>
    </ol>
</blockquote>
<h3 style="text-align: center">商品信息</h3>
<hr>
<div>

    <button style="margin:2px;float: right;" class="layui-btn layui-btn-normal layui-btn-sm"
            onclick="addProduct()">+ 添加商品
    </button>
</div>


<table class="table table-hover table-bordered">
    <%--<caption style="text-align: center">用户列表</caption>--%>
    <thead>
    <tr class="active">
        <th>序号</th>
        <th>商品图片</th>
        <th>商品名称</th>
        <th>商品价格</th>
        <th>是否热门</th>
        <th>编辑</th>
        <th>删除</th>
    </tr>
    </thead>
    <tbody>
    <s:iterator var="p" value="pageBean.list" status="status">
        <tr>
            <td><s:property value="#status.count"/></td>
            <td><img class="img-rounded img-responsive"  width="45" src="${ pageContext.request.contextPath }/<s:property value="#p.image"/>" alt=""></td>

            <td><s:property value="#p.pname"/></td>
            <td><s:property value="#p.shop_price"/></td>
            <td>  <s:if test="#p.is_hot==1">
                是
            </s:if>
                <s:else>
                    否
                </s:else></td>


            <td>
                <a href="${ pageContext.request.contextPath }/adminProduct_edit.action?pid=<s:property value="#p.pid"/>">
                    <div type="button" class="btn btn-primary btn-sm">编辑</div>
                </a>
            </td>

            <td>
                    <%-- <a href="${ pageContext.request.contextPath }/userAdmin_delete.action?uid=<s:property value="#u.uid"/>">
                         <div type="button" class="btn btn-danger">删除</div>

                     </a>--%>


                <button type="button" class="btn btn-danger btn-sm" data-target="#myModal<s:property value="#status.count"/>"
                        data-toggle="modal">删除
                </button>

                <div class="modal fade " id="myModal<s:property value="#status.count"/>" tabindex="-1" role="dialog"
                     aria-labelledby="mySmallModalLabel">
                    <div class="modal-dialog modal-sm" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×
                                </button>
                                <h4 class="modal-title" id="myModalLabel">
                                    你确定要删除这条数据吗？
                                </h4>
                            </div>
                            <div class="modal-body">
                                分类名称：<s:property value="#p.pname"/>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    取消
                                </button>
                                    <%-- <button type="button" class="btn btn-primary">
                                         确定删除
                                     </button>--%>
                                <a href="${ pageContext.request.contextPath }/adminProduct_delete.action?pid=<s:property value="#p.pid"/>">
                                    <div class=" btn btn-danger ">删除</div>
                                </a>
                            </div>
                        </div>
                    </div>
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
            <li><a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=1">首页</a></li>
            <li>
                <a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>
            </li>
        </s:if>

        <s:if test="pageBean.page != pageBean.totalPage">
            <li>
                <a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>
            </li>
            <li>
                <a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>
            </li>
        </s:if>

    </ul>
</div>

<br>
<%--<form id="Form1" name="Form1" action="${pageContext.request.contextPath}/user/list.jsp" method="post">
    <table cellSpacing="1" cellPadding="0" width="100%" align="center" bgColor="#f5fafe" border="0">
        <TBODY>
        <tr>
            <td class="ta_01" align="center" bgColor="#afd1f3">
                <strong>商品列表</strong>
            </TD>
        </tr>
        <tr>
            <td class="ta_01" align="right">
                <button type="button" id="add" name="add" value="添加" class="button_add" onclick="addProduct()">
                    &#28155;&#21152;
                </button>

            </td>
        </tr>
        <tr>
            <td class="ta_01" align="center" bgColor="#f5fafe">
                <table cellspacing="0" cellpadding="1" rules="all"
                       bordercolor="gray" border="1" id="DataGrid1"
                       style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
                    <tr
                            style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">

                        <td align="center" width="18%">
                            序号
                        </td>
                        <td align="center" width="17%">
                            商品图片
                        </td>
                        <td align="center" width="17%">
                            商品名称
                        </td>
                        <td align="center" width="17%">
                            商品价格
                        </td>
                        <td align="center" width="17%">
                            是否热门
                        </td>
                        <td width="7%" align="center">
                            编辑
                        </td>
                        <td width="7%" align="center">
                            删除
                        </td>
                    </tr>
                    <s:iterator var="p" value="pageBean.list" status="status">
                        <tr onmouseover="this.style.backgroundColor = 'white'"
                            onmouseout="this.style.backgroundColor = '#F5FAFE';">
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="18%">
                                <s:property value="#status.count"/>
                            </td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="17%">
                                <img width="40" height="45"
                                     src="${ pageContext.request.contextPath }/<s:property value="#p.image"/>">
                            </td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="17%">
                                <s:property value="#p.pname"/>
                            </td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="17%">
                                <s:property value="#p.shop_price"/>
                            </td>
                            <td style="CURSOR: hand; HEIGHT: 22px" align="center"
                                width="17%">
                                <s:if test="#p.is_hot==1">
                                    是
                                </s:if>
                                <s:else>
                                    否
                                </s:else>
                            </td>
                            <td align="center" style="HEIGHT: 22px">
                                <a href="${ pageContext.request.contextPath }/adminProduct_edit.action?pid=<s:property value="#p.pid"/>">
                                    <img src="${pageContext.request.contextPath}/images/i_edit.gif" border="0"
                                         style="CURSOR: hand">
                                </a>
                            </td>

                            <td align="center" style="HEIGHT: 22px">
                                <a href="${ pageContext.request.contextPath }/adminProduct_delete.action?pid=<s:property value="#p.pid"/>">
                                    <img src="${pageContext.request.contextPath}/images/i_del.gif" width="16"
                                         height="16" border="0" style="CURSOR: hand">
                                </a>
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
                    <a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=1">首页</a>|
                    <a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=<s:property value="pageBean.page-1"/>">上一页</a>|
                </s:if>
                <s:if test="pageBean.page != pageBean.totalPage">
                    <a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=<s:property value="pageBean.page+1"/>">下一页</a>|
                    <a href="${ pageContext.request.contextPath }/adminProduct_findAll.action?page=<s:property value="pageBean.totalPage"/>">尾页</a>|
                </s:if>
            </td>
        </tr>
        </TBODY>
    </table>
</form>--%>
</body>
</HTML>

