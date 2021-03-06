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

        <div class="main_content">
            <h1 style="font-weight: bolder">My Messages</h1>
            <hr>
            <form class="layui-form" action="">
                <div class="layui-form-item">
                    <label class="layui-form-label">Search box</label>
                    <div class="layui-input-block" style="display: flex">
                        <input type="text" name="search" required lay-verify="required"
                               placeholder="please input title..." autocomplete="off"
                               class="layui-input" style="width: 300px"/>
                        <button type="submit" class="layui-btn layui-btn-normal">Search</button>
                        <a class="layui-btn " href="../views/addmessage.jsp">Compose message</a>
                        <a class="layui-btn layui-btn-warm" href="../message/getrecmessages"> Inbox</a>
                        <a class="layui-btn layui-btn-danger" href="../message/getsentmessages"> Sent</a>
                    </div>
                </div>

                <table class="tab_relative  layui-table">

                    <tbody>
                    <c:forEach items="${messages}" var="obj">
                        <tr>
                            <td width="650"><a href="../message/viewmessage?messageid=${obj.messageid}"><p class="s3">
                                <b>${obj.subject} </b>&nbsp;|&nbsp;
                                    ${obj.content} &nbsp;|&nbsp;
                                <c:if test="${obj.receiverid==loginuser.userid}">
                                <span style="color: #2d3b91"> ${obj.senderName}</span> &nbsp;
                                </c:if>
                                    <c:if test="${obj.receiverid!=loginuser.userid}">
                                <span style="color: #2d3b91"> ${obj.receiverName}</span> &nbsp;
                                </c:if>
                                    <%--                                |&nbsp; ${obj.status}</p>--%>
                            </a></td>
                            <td><p class="s3">${obj.createtime}</p></td>
                            <td>
                                <c:if test="${obj.receiverid==loginuser.userid}">
                                    <p>
                                        <a class="layui-btn"
                                           href="../message/getmessage?messageid=${obj.messageid}">reply</a>
                                    </p>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </form>
        </div>
</body>
</html>


