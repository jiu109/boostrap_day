<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<style>
            .container-fluid{
                background: #000;
            }
        </style>

        <!--导航条-->
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- 导航条标题 -->
                <div class="navbar-header">
                    <!--自适应-->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">员工管理系统V1.0</a>
                </div>
                <!--右边工具栏-->
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">欢迎:<strong style="color: #2aabd2" class="text-right">小黑</strong></a></li>
                    <li><a href="#">退出系统<span class="glyphicon glyphicon-log-out"></span> </a></li>
                </ul>
            </div>
        </nav>

        <!--左侧列表-->
        <div class="col-sm-2">
            <!--菜单-->
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

                <!--面板-->
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                <span class="glyphicon glyphicon-user"></span> 用户管理
                            </a>
                        </h4>
                    </div>
                    <!--面板内容-->
                    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <ul class="list-group">
                                <li class="list-group-item"><span class="glyphicon glyphicon-list"></span>
                                    <a href="javascript:;" id="userLisBtn" onclick="javascript:$('#content1').load('./ww/user/emp.jsp')"> 用户列表</a>
                                </li>
                                <!--<script>-->
                                    <!--$("#userListBen").click(function () {-->
                                        <!--$("#content").load('./user/');-->
                                    <!--})-->
                                <!--</script>-->
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                                <span class="glyphicon glyphicon-education"></span> 学生管理
                            </a>
                        </h4>
                    </div>
                    <!--面板内容-->
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <ul class="list-group">
                                <li class="list-group-item"><span class="glyphicon glyphicon-list"></span>
                                    <a href="javascript:;" id="userListBtn" onclick="javascript:$('#content1').load('./ww/student/list.jsp')">学生列表</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!--面板-->
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingthr">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapsethr" aria-expanded="true" aria-controls="collapseOne">
                                <span class="glyphicon glyphicon-education"></span> 班级管理
                            </a>
                        </h4>
                    </div>
                    <!--面板内容-->
                    <div id="collapsethr" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingthr">
                        <div class="panel-body">
                            <ul class="list-group">
                                <li class="list-group-item"><span class="glyphicon glyphicon-list"></span> 班级列表</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingser">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseser" aria-expanded="true" aria-controls="collapseOne">
                                <span class="glyphicon glyphicon-education"></span> 图书管理
                            </a>
                        </h4>
                    </div>
                    <!--面板内容-->
                    <div id="collapseser" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <ul class="list-group">
                                <li class="list-group-item"><span class="glyphicon glyphicon-list"></span> 图书列表</li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div id="content1">
        <!--中间部分-->
        <div id="content">
            <div class="col-sm-10">
           <div class="col-sm-12 ">

               <!--创建轮播图-->
               <div id="carousel-example-generic" style="width: 600px;margin:0 auto;" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="5"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="../foodimgs/1.jpg"  style="height: 400px" alt="...">
                            <div class="carousel-caption">
                                <h3>美食好吃</h3>
                                <p>美食特别好吃.....</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="../foodimgs/2.jpg"  style="height: 400px" alt="...">
                            <div class="carousel-caption">
                                <h3>美食好吃</h3>
                                <p>美食特别好吃.....</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="../foodimgs/3.jpg"  style="height: 400px" alt="...">
                            <div class="carousel-caption">
                                <h3>美食好吃</h3>
                                <p>美食特别好吃.....</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="../foodimgs/4.jpg"  style="height: 400px" alt="...">
                            <div class="carousel-caption">
                                <h3>美食好吃</h3>
                                <p>美食特别好吃.....</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="../foodimgs/5.jpg"  style="height: 400px" alt="...">
                            <div class="carousel-caption">
                                <h3>美食好吃</h3>
                                <p>美食特别好吃.....</p>
                            </div>
                        </div>
                        <div class="item">
                            <img src="../foodimgs/6.jpg"  style="height: 400px" alt="...">
                            <div class="carousel-caption">
                                <h3>美食好吃</h3>
                                <p>美食特别好吃.....</p>
                            </div>
                        </div>

                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    </a>

                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    </a>

               </div>

               <br>

               <!--系统状态面板-->
               <div class="panel panel-default">
                   <div class="panel-heading">
                       <h2 class="panel-title"><strong>系统状态</strong></h2>
                   </div>

                   <div class="panel-body">
                       <p style="font-weight: bold">数据库使用率20%</p >
                       <div class="progress">
                           <div class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                               20%
                           </div>
                       </div>
                       <p style="font-weight: bold">系统使用率40%</p >
                       <div class="progress">
                           <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                               40%
                           </div>
                       </div>
                       <p style="font-weight: bold">磁盘使用率60%</p >
                       <div class="progress">
                           <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                               60%
                           </div>
                       </div>
                       <p style="font-weight: bold">cpu使用率80%</p >
                       <div class="progress">
                           <div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                               80%
                           </div>
                       </div>
                   </div>

               </div>

               <!--网站漏洞警告框-->
               <div class="alert alert-danger alert-dismissible" role="alert">
                   <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   <p class="h4" style="margin-bottom: 10px"><strong>网站程序漏洞，继续修复!</strong></p >
                   <p class="h5" style="margin-bottom: 10px">当前版本程序v1.0存在严重安全问题，容易造成攻击，请<strong>立即修复！！！</strong></p >
                   <button href="#" class="btn btn-danger">立即修复</button>
                   <button href="#" class="btn btn-default">稍后处理</button>
               </div>

           </div>
        </div>
        </div>
        </div>
