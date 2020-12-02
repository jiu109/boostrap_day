<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户登录页面</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/static/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/static/grid/ui.jqgrid-bootstrap.css"/>
    <%--jquery--%>
    <script src="${pageContext.request.contextPath}/back/static/js/jquery-3.5.1.min.js"></script>
    <%--boot--%>
    <script src="${pageContext.request.contextPath}/back/static/js/bootstrap.min.js"></script>
    <%--grid--%>
    <script src="${pageContext.request.contextPath}/back/static/grid/jquery.jqGrid.min.js"></script>
    <script src="${pageContext.request.contextPath}/back/static/grid/grid.locale-cn.js"></script>

</head>
<body>

<div id="content">

<div class="container-fluid">
    <div id="top_content" class="row"  style="margin: 0 auto;">
        <div id="topheader">
            <h1 class="text-center text-info" style="text-align:center;">用户登录</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
            <div id="main">
                <form action="">
                    <div class="form-group col-sm-12">
                        <label for="username" >用户名：</label>
                        <input type="text" name="username" id="username" class="form-control" placeholder="admin">
                    </div>
                    <div class="form-group col-sm-12">
                        <label for="password">密码：</label>
                        <input type="password" name="password" id="password" class="form-control" placeholder="******">
                    </div>
                    <div class="form-group col-sm-6" style="padding-left: 15px">
                        <label for="vcode" >验证码：</label>
                        <input type="text" name="vcode"  id="vcode" class="form-control input-lg">
                    </div>
                    <div class="form-group col-sm-4" style="padding-left: 90px ;padding-top: 25px">
                        <img src="../../back/static/img/aa.jpg" alt="" style="width: 80%">
                    </div>
                    <div class="form-group col-sm-12" >
                        <button type="button" class="btn btn-danger btn-lg" style="width: 450px;height: 40px" ><a href="javascript:;" id="userLisBtn" onclick="javascript:$('#content').load('./ww/04.jsp')">登 录</a></button>&emsp;&emsp;&emsp;&emsp;
                        <button type="button" class="btn btn-info btn-lg" style="width: 450px;height: 40px" >注册账号</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</div>

</body>
</html>