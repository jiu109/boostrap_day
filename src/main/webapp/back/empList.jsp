
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>员工列表页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/static/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/static/grid/ui.jqgrid-bootstrap.css"/>
    <%--jquery--%>
    <script src="${pageContext.request.contextPath}/back/static/js/jquery-3.5.1.min.js"></script>
    <%--boot--%>
    <script src="${pageContext.request.contextPath}/back/static/js/bootstrap.min.js"></script>
    <%--grid--%>
    <script src="${pageContext.request.contextPath}/back/static/grid/jquery.jqGrid.min.js"></script>
    <script src="${pageContext.request.contextPath}/back/static/grid/grid.locale-cn.js"></script>
    <script>
        $(function () {


            //初始化jqgrid
            $("#empList").jqGrid({
                styleUI: "Bootstrap",//使用bootstrap主题
                url:"${pageContext.request.contextPath}/emp/findAll",//指定服务器端地址
                datatype:"json",//指定返回数据类型
                colNames:["编号","姓名","性别","年龄","工资","所属部门"],
                colModel:[
                    {name:"id"},
                    {name:"name",editable:true},
                    {name:"sex",editable:true,edittype:'select',editoptions:{value:"男:男;女:女"},search:false},
                    {name:"age",editable:true,search:false},
                    {name:"salary",editable:true,search:false},
                    {
                        name:"dept.id",editable:true,edittype:'select',editoptions:{dataUrl:"${pageContext.request.contextPath}/dept/findAll"},
                        formatter:function(value,option,row){
                            console.log(value);
                            console.log(option);
                            console.log(row);
                            return row.dept.name;
                        }
                    },
                ],
                pager:"#pager",
                rowNum:2,
                viewrecords:true,
                autowidth:true,
                editurl:"${pageContext.request.contextPath}/emp/edit",//用来处理修改时url路径   String oper 参数   add 保存  edit 修改  del 删除

            }).navGrid("#pager",
                {add:true,edit:true,del:true,search:true,refresh:true},  //对展示增删改按钮配置
                {
                    closeAfterEdit: true,  //关闭面板
                    reloadAfterSubmit: true,
                },  //对编辑配置
                {
                    closeAfterAdd: true,
                    reloadAfterSubmit: true,
                },  //对添加配置
                {
                    closeAfterDelete: true, //不生效
                    reloadAfterSubmit: true
                },  //对删除配置
                {
                    sopt : [ 'cn', 'eq'],//用来展示那些搜索的运算符
                });//对搜索的配置

        })
    </script>
</head>
<body>



<%--员工列表--%>
<table id="empList"></table>

<%--指定分页工具栏--%>
<div id="pager"></div>

</body>
</html>