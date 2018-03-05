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
        <li><a href="#">用户管理</a></li>
        <li class="active">编辑用户</li>
    </ol>
</blockquote>
<h3 style="text-align: center">用户信息更改</h3>
<hr>

<div style="padding-left: 300px">
    <div style="width: 800px;">


        <form style="margin: 0 auto" class="layui-form layui-form-pane"
              action="${pageContext.request.contextPath}/userAdmin_update.action"
              method="post">

            <input type="hidden" name="uid" value="<s:property value="model.uid"/>"/>
            <input type="hidden" name="state" value="<s:property value="model.state"/>"/>
            <input type="hidden" name="code" value="<s:property value="model.code"/>"/>

            <div class="layui-form-item">
                <label class="layui-form-label">用户名称</label>
                <div class="layui-input-inline">
                    <input type="text" name="username" lay-verify="required"
                           value="<s:property value="model.username"/>"
                           placeholder="请输入" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">真实姓名</label>
                <div class="layui-input-inline">
                    <input type="text" name="name" lay-verify="required" value="<s:property value="model.name"/>"
                           placeholder="请输入" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">电话</label>
                <div class="layui-input-inline">
                    <input type="text" name="phone" lay-verify="required" value="<s:property value="model.phone"/>"
                           placeholder="请输入" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-inline">
                    <input type="text" name="password" lay-verify="required"
                           value="<s:property value="model.password"/>"
                           placeholder="请输入" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">邮箱</label>
                <div class="layui-input-inline">
                    <input type="text" name="email" lay-verify="required" value="<s:property value="model.email"/>"
                           placeholder="请输入" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">地址</label>
                <div class="layui-input-inline">
                    <input type="text" name="addr" lay-verify="required" value="<s:property value="model.addr"/>"
                           placeholder="请输入" autocomplete="off"
                           class="layui-input">
                </div>
            </div>


            <div class="layui-form-item">
                <button class="layui-btn" type="submit">保存更改</button>
                <button class="layui-btn layui-btn-normal" type="reset">重置</button>

                <button class="layui-btn layui-btn-primary" onclick="history.go(-1)">返回</button>
            </div>
        </form>
    </div>
</div>

<%--

<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/userAdmin_update.action"
      method="post">
    <input type="hidden" name="uid" value="<s:property value="model.uid"/>"/>
    <input type="hidden" name="state" value="<s:property value="model.state"/>"/>
    <input type="hidden" name="code" value="<s:property value="model.code"/>"/>
    &nbsp;
    <table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee"
           style="border: 1px solid #8ba7e3" border="0">
        <tr>
            <td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
                height="26">
                <strong><STRONG>编辑用户</STRONG>
                </strong>
            </td>
        </tr>

        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                用户名称：
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="username" value="<s:property value="model.username"/>"
                       id="userAction_save_do_logonName" class="bg"/>
            </td>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                密码：
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="password" value="<s:property value="model.password"/>"
                       id="userAction_save_do_logonName" class="bg"/>
            </td>
        </tr>
        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                真实姓名：
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="name" value="<s:property value="model.name"/>"
                       id="userAction_save_do_logonName" class="bg"/>
            </td>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                邮箱：
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="email" value="<s:property value="model.email"/>"
                       id="userAction_save_do_logonName" class="bg"/>
            </td>
        </tr>
        <tr>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                电话：
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="phone" value="<s:property value="model.phone"/>"
                       id="userAction_save_do_logonName" class="bg"/>
            </td>
            <td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
                地址：
            </td>
            <td class="ta_01" bgColor="#ffffff">
                <input type="text" name="addr" value="<s:property value="model.addr"/>"
                       id="userAction_save_do_logonName" class="bg"/>
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


--%>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>
</HTML>