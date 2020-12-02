<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>


<!--中间部分-->
        <div class="col-sm-10">
           <div class="col-sm-12 ">

               <ul class="nav nav-tabs">
                   <li role="presentation" class="active"><a href="#">学生列表</a></li>
                   <li role="presentation"><a href="#" class="btn" type="button" id="btn11">学生添加</a></li>
                   <script>
                       $(function(){
                           $("#btn11").click(function () {
                               //调用模态框  show  hide
                               $("#myModal11").modal('show');

                           });
                       })
                   </script>
               </ul>
               <!--用户列表-->
               <div class="panel panel-default">
                   <div class="panel-body">
                       <!--表单-->
                       <form class="form-inline text-center">
                           <div class="form-group">
                               <label for="name">姓名：</label>
                               <input type="text" id="name" class="form-control" placeholder="张三">
                           </div>
                           <div class="form-group">
                               <label for="phone">学号：</label>
                               <input type="text" id="phone" class="form-control" placeholder="201805">
                           </div>
                           <button class="btn btn-primary" type="submit">查询</button>
                       </form>
                   </div>
                   <!--表格-->
                   <table class="table table-hover table-responsive table-striped" style="margin-top: 15px">
                       <tr>
                           <th class="text-center">Id</th>
                           <th class="text-center">用户名</th>
                           <th class="text-center">密码</th>
                           <th class="text-center">生日</th>
                           <th class="text-center">手机</th>
                           <th class="text-center">学号</th>
                           <th class="text-center">操作</th>
                       </tr>
                       <tr class="text-center">
                           <td>1</td>
                           <td>张三</td>
                           <td>******</td>
                           <td>2000-05-19</td>
                           <td>13100177032</td>
                           <td>201805</td>
                           <td>
                               <button class="btn btn-primary" type="button" id="btn">修改</button>
                               <script>
                                   $(function(){
                                       $("#btn").click(function () {
                                           //调用模态框  show  hide
                                           $("#myModal").modal('show');

                                       });
                                   })
                               </script>
                               <button class="btn btn-danger" type="button">删除</button>
                           </td>
                       </tr>
                   </table>
               </div>

               <div class="modal fade" id="myModal11" tabindex="-1" role="dialog">
                   <div class="modal-dialog" role="document">
                       <div class="modal-content">
                           <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                               <h4 class="modal-title"> <span class="glyphicon glyphicon-apple"></span> 添加用户信息</h4>
                           </div>
                           <form action="http://www.baidu.com" method="post">
                               <div class="modal-body">
                                   <div class="row">
                                       <div class="col-sm-8 col-sm-offset-2">
                                           <div class="form-group">
                                               <label for="exampleInputx">学号：</label>
                                               <input type="name" class="form-control" id="exampleInputx" placeholder="ip">
                                           </div>
                                           <div class="form-group">
                                               <label for="exampleInputname">姓名：</label>
                                               <input type="name" class="form-control" id="exampleInputname" placeholder="name">
                                           </div>
                                           <div class="form-group">
                                               <label for="exampleInputPassword1">密码：</label>
                                               <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                           </div>
                                           <div class="form-group">
                                               <form action="form-group">
                                                   <label for="exampleInputdate1">生日: </label>
                                                   <input type="date" name="bday" class="form-control" id="exampleInputdate1" value="yyyy-MM-dd">
                                               </form>
                                           </div>
                                           <div class="form-group">
                                               <label for="exampleInputpho">手机号：</label>
                                               <input type="pho" class="form-control" id="exampleInputpho" placeholder="Pho">
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               <div class="modal-footer">
                                   <button type="submit" class="btn btn-info">确认添加</button>
                                   <button type="button" class="btn btn-danger" data-dismiss="modal">取消添加</button>
                               </div>
                           </form>
                       </div>
                   </div>
               </div>

               <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
                   <div class="modal-dialog" role="document">
                       <div class="modal-content">
                           <div class="modal-header">
                               <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                               <h4 class="modal-title"> <span class="glyphicon glyphicon-apple"></span> 修改用户信息</h4>
                           </div>
                           <form action="http://www.baidu.com" method="post">
                               <div class="modal-body">
                                   <div class="row">
                                       <div class="col-sm-8 col-sm-offset-2">
                                           <div class="form-group">
                                               <label for="exampleInputxx">学号：</label>
                                               <input type="name" class="form-control" id="exampleInputxx" placeholder="201805">
                                           </div>
                                           <div class="form-group">
                                               <label for="exampleInputname1">姓名：</label>
                                               <input type="name" class="form-control" id="exampleInputname1" placeholder="张三">
                                           </div>
                                           <div class="form-group">
                                               <label for="exampleInputPassword11">密码：</label>
                                               <input type="password" class="form-control" id="exampleInputPassword11" placeholder="******">
                                           </div>
                                           <div class="form-group">
                                               <form action="form-group">
                                                   <label for="exampleInputbir1">生日: </label>
                                                   <input type="date" name="bday" class="form-control" id="exampleInputbir1" value="2000-05-19">
                                               </form>
                                           </div>
                                           <div class="form-group">
                                               <label for="exampleInputpho1">手机号：</label>
                                               <input type="pho" class="form-control" id="exampleInputpho1" placeholder="13100177032">
                                           </div>
                                       </div>
                                   </div>
                               </div>
                               <div class="modal-footer">
                                   <button type="submit" class="btn btn-info">确认修改</button>
                                   <button type="button" class="btn btn-danger" data-dismiss="modal">取消修改</button>
                               </div>
                           </form>
                       </div>
                   </div>
               </div>

           </div>
        </div>

