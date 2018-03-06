<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<script language="javascript" src="${pageContext.request.contextPath}/js/public.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap-3.3.7/css/bootstrap.min.css">
<script language="javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>
<script language="javascript" src="${pageContext.request.contextPath}/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<s:if test="list !=null">


    <table width="100%" class="table table-hover table-bordered">
        <tr>
            <th>图片</th>
            <th>商品名称</th>
            <th>商品数量</th>
            <th>价格</th>
        </tr>
        <s:iterator var="orderItem" value="list">
            <tr>
                <td><img width="40" height="45"
                         src="${ pageContext.request.contextPath }/<s:property value="#orderItem.product.image"/>"></td>
                <td><s:property value="#orderItem.product.pname"/></td>
                <td><s:property value="#orderItem.count"/></td>
                <td><s:property value="#orderItem.subtotal"/></td>
            </tr>
        </s:iterator>
    </table>
</s:if>


<s:if test="list ==null">
<span style="color:red;">
  此单没有商品，异常
</span>
</s:if>