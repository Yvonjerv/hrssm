<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="jspresource.jsp" %>

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

        .main_content {
            background-color: #fafafa;
            margin: 50px 0px 0px 100px;
            padding: 50px;
        }
    </style>
</head>
<body>
<center>
    <!-- begin to system menu-->
    <%@include file="sysmenu.jsp" %>
    <!-- end of system menu-->
    <div style="display: flex;">
        <%@include file="sidebar.jsp" %>

        <div class="main_content" style="width: 900px">
            <div class="layui-card" style="width: 800px">
                <div class="layui-card-header"><h3>New Message </h3>  </div>
                <div class="layui-card-body">

                        <input style="display: none" type="number" name="messageId" value="${message.messageid}">
                        <div class="layui-form-item">
                            <label class="layui-form-label">Subject </label>
                            <div class="layui-input-block">
                                <input type="text" name="subject" value="${message.subject}" required
                                       lay-verify="required"
                                       autocomplete="off"
                                       class="layui-input" style="width: 300px"/>
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">Content</label>
                            <div class="layui-input-block">
                                <input type="text" name="content" value="${message.content}" required
                                       lay-verify="required"
                                       autocomplete="off"
                                       class="layui-input" style="width: 300px"/>
                            </div>
                        </div>

                        <div style="display: none" class="layui-form-item">
                            <label class="layui-form-label">senderid</label>
                            <div class="layui-input-block">
                                <input type="text" name="senderid" value="${message.senderid}" required
                                       lay-verify="required"
                                       autocomplete="off"
                                       class="layui-input" style="width: 300px"/>
                            </div>
                        </div>



                        <div style="display: none" class="layui-form-item">
                            <label class="layui-form-label">receiverid </label>
                            <div class="layui-input-block">
                                <input type="text" name="receiverid" value="${message.receiverid}" required
                                       lay-verify="required"
                                       autocomplete="off"
                                       class="layui-input" style="width: 300px"/>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <a class="layui-btn layui-btn-primary " href="../message/getmessage?messageid=${message.messageid}">Reply</a>

                            </div>
                        </div>

                </div>
            </div>
        </div>

</center>
</body>
</html>
