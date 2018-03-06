<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<HTML>
<HEAD>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <LINK href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet">
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
        <li class="active">添加商品</li>
    </ol>
</blockquote>
<h3 style="text-align: center">添加商品</h3>
<hr>
<!--  -->

<div style="padding-left: 300px">
    <div style="width: 800px;">


        <form style="margin: 0 auto" class="layui-form layui-form-pane"
              action="${pageContext.request.contextPath}/adminProduct_save.action"
              method="post" enctype="multipart/form-data">
            <%--<input type="hidden" name="pid" value="<s:property value="model.pid"/>">--%>
            <%--<input type="hidden" name="image" value="<s:property value="model.image"/>">--%>

            <div class="layui-form-item">
                <label class="layui-form-label">商品名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="pname" lay-verify="required"
                           placeholder="请输入" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">是否热门</label>
                <div class="layui-input-inline">
                    <select name="is_hot">
                        <option value="1">是</option>
                        <option value="0">否</option>
                    </select>
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">市场价格</label>
                <div class="layui-input-inline">
                    <input type="text" name="market_price" lay-verify="required"
                           placeholder="请输入" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">商城价格</label>
                <div class="layui-input-inline">
                    <input type="text" name="shop_price" lay-verify="required"
                           placeholder="请输入" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">商品图片</label>
                <div class="layui-input-inline">
                    <input type="file" name="upload"/>
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">所属分类：</label>
                <div class="layui-input-inline">
                    <select name="categorySecond.csid">

                        <s:iterator var="cs" value="csList">
                            <option value="<s:property value="#cs.csid"/>"><s:property value="#cs.csname"/></option>
                        </s:iterator>


                    </select>
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">商品描述</label>
                <div class="layui-input-inline">

                    <textarea placeholder="请输入内容" name="pdesc" class="layui-textarea"> </textarea>
                </div>
            </div>


            <div class="layui-form-item">
                <button class="layui-btn" type="submit">保存更改</button>
                <button class="layui-btn layui-btn-normal" type="reset">重置</button>

                <div class="layui-btn layui-btn-primary" onclick="history.go(-1)">返回</div>
            </div>
        </form>
    </div>
</div>

<!--  -->
<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/adminProduct_save.action"
      method="post" enctype="multipart/form-data">
    &nbsp;
    <table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee"
           style="border: 1px solid #8ba7e3" border="0">
        <tr>
            <td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
                height="26">
                <strong><STRONG>添加商品</STRONG>
                </strong>
            </td>
        </tr>

        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                商品名称：
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="pname" value="" id="userAction_save_do_logonName" class="bg"/>
            </td>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                是否热门：
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <select name="is_hot">
                    <option value="1">是</option>
                    <option value="0">否</option>
                </select>
            </td>
        </tr>
        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                市场价格：
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="market_price" value="" id="userAction_save_do_logonName" class="bg"/>
            </td>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                商城价格：
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="shop_price" value="" id="userAction_save_do_logonName" class="bg"/>
            </td>
        </tr>
        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                商品图片：
            </td>
            <td class="ta_01" bgColor="#ffffff" colspan="3">
                <input type="file" name="upload"/>
            </td>
        </tr>
        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                所属的二级分类：
            </td>
            <td class="ta_01" bgColor="#ffffff" colspan="3">
                <select name="categorySecond.csid">
                    <s:iterator var="cs" value="csList">
                        <option value="<s:property value="#cs.csid"/>"><s:property value="#cs.csname"/></option>
                    </s:iterator>
                </select>
            </td>
        </tr>
        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                商品描述：
            </td>
            <td class="ta_01" bgColor="#ffffff" colspan="3">
                <textarea name="pdesc" rows="5" cols="30"></textarea>
            </td>
        </tr>
        <tr>
            <td class="ta_01" style="WIDTH: 100%" align="center"
                bgColor="#f5fafe" colSpan="4">
                <button type="submit" id="userAction_save_do_submit" value="确定" class="button_ok">
                    &#30830;&#23450;
                </button>

                <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
                <button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

                <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
                <INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
                <span id="Label1"></span>
            </td>
        </tr>
    </table>
</form>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>

</HTML>