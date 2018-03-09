<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="icon" href="${pageContext.request.contextPath}/image/icon.png" type="image/png"/>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>你还没有登录！</title>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="divcontent" style="margin: 0 auto;width: 100%">
    <table width="850px" border="0" cellspacing="0"  style="margin: 0 auto;">
        <tr>
            <td style="width:100%"><img src="${pageContext.request.contextPath}/images/shopping.jpg"
                                        width="850" height=auto/>
            </td>
        </tr>
        <tr>


            <td style="padding-top:30px;text-align: center">
                              <span style="font-weight:bold; color:#FF0000">
                                <s:actionmessage/>
                                <s:actionerror/>
                            </span>
                <br/>
                <br/>
                <a style="font-size: 30px;color: #878688;margin: 5px"
                   href="${ pageContext.request.contextPath }/index.action">首页</a>
                <a style="font-size: 30px;color: #878688;margin: 5px"
                   href="${ pageContext.request.contextPath }/user_registPage.action">注册</a>
                <a style="font-size: 30px;color: #878688;margin: 5px"
                   href="${ pageContext.request.contextPath }/user_loginPage.action">登录</a>
            </td>

        </tr>

    </table>
</div>
</body>
</html>