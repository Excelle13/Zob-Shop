<%@ page language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>后台管理系统</title>
    <style>
        body {
            SCROLLBAR-ARROW-COLOR: #ffffff;
            SCROLLBAR-BASE-COLOR: #dee3f7;
        }
    </style>
</head>

<frameset rows="60,*,43" frameborder=0 border="0" framespacing="0">
    <frame src="${pageContext.request.contextPath}/admin/top.jsp" name="topFrame" scrolling="NO" noresize>
    <frameset cols="200,*" frameborder="0" border="0" framespacing="0">
        <frame src="${pageContext.request.contextPath}/admin/left.jsp" name="leftFrame" noresize scrolling="YES">
        <frame src="${pageContext.request.contextPath}/admin/welcome.jsp" name="mainFrame">
    </frameset>
    <frame src="${pageContext.request.contextPath}/admin/bottom.jsp" name="bottomFrame" scrolling="NO" noresize>
</frameset>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/Chart.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>

<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</html>
