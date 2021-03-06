<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="jspresource.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>HRM</title>
    <style>
        .tab_relative {
            /*border: red 2px solid;*/
            margin: auto;
            /*width: 1000px;*/
        }

        table {
            /*background: #ffffff;*/
            padding: 10px;
            /*border: #cccccc solid 1px;*/
        }

        tr {
            height: 60px;
        }

        .main_content {
            background-color: #fafafa;
            margin: 50px 0px 0px 100px;
            padding: 50px;
        }
    </style>
</head>
<body>
<!-- begin to system menu-->
<%@include file="sysmenu.jsp" %>
<!-- end of system menu-->
<div style="display: flex;">
    <%@include file="sidebar.jsp" %>

    <div class="main_content" style="width: 900px">
        <form class="layui-form" action="../user/changetype">
            <div class="layui-card" style="width: 800px">
                <div class="layui-card-header"><h3>My information </h3></div>
                <div class="layui-card-body">


                    <%--                    <div class="layui-form-item">--%>
                    <%--                        <label class="layui-form-label">Gender </label>--%>
                    <%--                        <div class="layui-input-block">--%>
                    <%--                            <input type="radio" name="sex" title="Male" value="male"/>--%>
                    <%--                            <input type="radio" name="sex" title="Female" value="female" checked/>--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                    <table>
                        <tr>
                            <td colspan="2">
                                <h2 style="color: #2D3B91;">Update Type </h2>

                            </td>
                        </tr>
                        <tr style="display: none">
                            <td style="width: 200px;"><label class="layui-form-label">userid</label></td>

                            <td><input type="text" class="layui-input" style="width: 300px" name="userid"
                                       value="${user.userid}" readonly="readonly"></td>

                        </tr>
                        <tr>
                            <td style="width: 200px;"><label class="layui-form-label">Username</label></td>

                            <td><input type="text" class="layui-input" style="width: 300px" name="username"
                                       value="${user.username}" readonly="readonly"></td>
                        </tr>

                        <tr>
                            <td><label class="layui-form-label">First name</label></td>
                            <td><input type="text" class="layui-input" style="width: 300px" name="firstname"
                                       value="${user.firstname}" readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><label class="layui-form-label">Last name</label></td>
                            <td><input type="text" class="layui-input" style="width: 300px" name="lastname"
                                       value="${user.lastname}" readonly="readonly"></td>
                        </tr>

                        <tr>
                            <td><label class="layui-form-label">Hire Date</label></td>
                            <td><input type="date" class="layui-input" style="width: 300px" name="hiredate"
                                       value="${user.hiredate}" readonly="readonly"></td>
                        </tr>
                        <tr>
                            <td><label class="layui-form-label">User Type</label></td>
                            <td>

                                <select name="usertypeId" class="layui-select"
                                        style="padding: 10px; width: 300px; ">
                                    <option value="">-- select one --</option>
                                    <c:forEach items="${usertypes}" var="obj">
                                        <option value="${obj.usertypeId}">${obj.usertype}</option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                    </table>

                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button lay-filter="formDemo" type="submit" lay-submit
                                    class="layui-btn layui-btn-normal">Save
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
<script>
    //Demo
    layui.use('form', function () {
        var form = layui.form;


    });
</script>
</html>
