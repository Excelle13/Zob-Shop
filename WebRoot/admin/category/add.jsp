<%@ page language="java" pageEncoding="UTF-8"%>
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
			<li><a href="#">一级分类管理</a></li>
			<li class="active">分类信息编辑</li>
		</ol>
	</blockquote>
	<h3 style="text-align: center">一级分类信息更改</h3>
	<hr>

	<div style="padding-left: 300px">
		<div style="width: 800px;">


			<form style="margin: 0 auto" class="layui-form layui-form-pane"
				  action="${pageContext.request.contextPath}/adminCategory_save.action"
				  method="post">
				<%--<input type="hidden" name="cid" value="<s:property value="model.cid"/>"/>--%>
				<div class="layui-form-item">
					<label class="layui-form-label">一级分类名称</label>
					<div class="layui-input-inline">
						<input type="text" name="cname" lay-verify="required"
							   placeholder="请输入" autocomplete="off"
							   class="layui-input">
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

	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.all.js"></script>


<%--	<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/adminCategory_save.action" method="post">
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>添加一级分类</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						一级分类名称：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="cname" value="" id="userAction_save_do_logonName" class="bg"/>
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
		</form>--%>
	</body>
	<script>
        layui.use(['form', 'layedit', 'laydate'], function(){
            var form = layui.form
                ,layer = layui.layer
                ,layedit = layui.layedit
                ,laydate = layui.laydate;

            //日期
            laydate.render({
                elem: '#date'
            });
            laydate.render({
                elem: '#date1'
            });

            //创建一个编辑器
            var editIndex = layedit.build('LAY_demo_editor');

            //自定义验证规则
            form.verify({
                title: function(value){
                    if(value.length < 5){
                        return '标题至少得5个字符啊';
                    }
                }
                ,pass: [/(.+){6,12}$/, '密码必须6到12位']
                ,content: function(value){
                    layedit.sync(editIndex);
                }
            });

            //监听指定开关
            form.on('switch(switchTest)', function(data){
                layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                    offset: '6px'
                });
                layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
            });

            //监听提交
            form.on('submit(demo1)', function(data){
                layer.alert(JSON.stringify(data.field), {
                    title: '最终的提交信息'
                })
                return false;
            });


        });
	</script>
</HTML>