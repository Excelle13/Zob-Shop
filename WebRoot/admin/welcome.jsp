<%@ page language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Language" content="zh-cn">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet"/>
    <style type="text/css">
        <!--

        body {
            background-color: #FFFFFF;
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }

        body, td, th {
            color: #000000;
        }

        -->

        canvas {

        }

        .chart-container {
            margin: 0 auto;
        }

        .chart-div {
            border: 1px solid #acadac;
            /*position: relative;*/
            margin: 5px;
            /*height: 400px;*/
            width: 530px;
            float: left;
        }
    </style>
    <style>
        BODY {
            SCROLLBAR-FACE-COLOR: #cccccc;
            SCROLLBAR-HIGHLIGHT-COLOR: #ffffFF;
            SCROLLBAR-SHADOW-COLOR: #ffffff;
            SCROLLBAR-3DLIGHT-COLOR: #cccccc;
            SCROLLBAR-ARROW-COLOR: #ffffff;
            SCROLLBAR-TRACK-COLOR: #ffffFF;
            SCROLLBAR-DARKSHADOW-COLOR: #cccccc;
        }
    </style>
</head>

<body>

<%--<form name="Form1" method="post" action="name.aspx" id="Form1">

    <table width="100%" border="0" height="20" border="1"
           background="${pageContext.request.contextPath}/images/back1.JPG">
        <tr>
            <td colspan=3 class="ta_01" align="center" bgcolor="#afd1f3"><strong>系统首页</strong></td>
        </tr>

        <tr>
            <td width="65%" height="20" align="center" valign="top">
                <span class="Style1">欢迎您，登录成功！</span>
            </td>
        </tr>
        <tr>
            <td height=2></td>
        </tr>

    </table>

</form>--%>

<div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">欢迎来到商城主页！</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/Chart.min.js"></script>
<%--<canvas id="myChart" width="400" height="400"></canvas>--%>


<div class="chart-container">


    <div class="chart-div">
        <h3 style="text-align: center">季度销量</h3>
        <canvas id="myChart1"></canvas>
    </div>
    <div class="chart-div">
        <h3 style="text-align: center">店铺热门商品SKU</h3>
        <canvas id="myChart2"></canvas>
    </div>
    <div class="chart-div">
        <h3 style="text-align: center">销量最高/用户最爱</h3>
        <canvas id="myChart3"></canvas>
    </div>
    <div class="chart-div">
        <h3 style="text-align: center">最近热度</h3>
        <canvas id="myChart4"></canvas>
    </div>
</div>

<script>
    var ctx = document.getElementById("myChart1");
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["17春季", "17夏季", "17秋季", "17冬季", "18春季", "18夏季"],
            datasets: [{
                label: '季度销量',
                data: [10, 15, 3, 5, 11, 20],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

    var ctx = document.getElementById("myChart2");
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["男装", "女装", "手机", "电脑", "户外用品", "珠宝饰品"],
            datasets: [{
                label: 'SKU',
                data: [16, 50, 5,5, 20, 30],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

    var ctx = document.getElementById("myChart3");
    var myChart = new Chart(ctx, {
        type: 'pie',
        data: {
            labels: ["韩版女装", "精选男装", "女靴", "毛呢大衣", "温暖毛衣", "电脑/手机"],
            datasets: [{
                label: '# of Votes',
                data: [20, 15, 10, 8, 4, 2],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(160, 107, 255, 0.5)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 57, 57, 0.5)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

    var ctx = document.getElementById("myChart4");
    var myChart = new Chart(ctx, {
        type: 'polarArea',
        data: {
            labels: ["衣服", "鞋子", "电子产品", "珠宝"],
            datasets: [{
                label: '',
                data: [20, 19, 3, 5],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });


</script>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>

</html>