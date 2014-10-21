<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>ujoku-service</title>
    <%@ include file="common/common_css.jsp"%>
</head>
<body>
    <div id="tabs" class="ui-widget-content">
        <ul>
            <li><a href="#tabs-1">Initial</a></li>
        </ul>
        <div id="tabs-1">
            <div>
                ClientId:
                <select id="selClient">
                    <s:forEach items="${clientList}" var="item">
                       <option key="${item.secretKey}">${item.clientName}</option>
                    </s:forEach>
                </select>
                SecretKey:<input class="textbox" type="text" id="secretKey"/>
            </div>

            <div>
                <input type="button" value="Create Visitor ID" onclick="visitor.create();"/>
                VisitorID:<input class="textbox" type="text" id="visitorId"/>&nbsp;&nbsp;
            </div>
            <div>
                <input type="button" value="Create Session ID" onclick="session.create()"/>
                SessionId:<input class="textbox" type="text" id="sessionId"/>&nbsp;&nbsp;
            </div>

            <div>
                <strong>Goods</strong><br/>
                GoodsId:<input class="textbox" type="text" id="goodsId" style="width: 100px;"/>
                    <input type="button" value="Get Goods By Id" onclick="goods.getById();"/>
            </div>

            <div>
                <strong>Search</strong><br/>
                CategoryId:<input class="textbox" type="text" id="categoryId" style="width: 100px;"/>
                <input type="button" value="Search" onclick="goods.search();"/>
            </div>

            <div>
                <strong>Login</strong><br/>
                UserName:<input class="textbox" type="text" id="userName" style="width: 100px;"/>
                Password:<input class="textbox" type="text" id="password" style="width: 100px;"/>
                <input type="button" value="Login" onclick="member.login();"/>
            </div>
         </div>
    </div>

    <div id="d_param" class="ui-tabs ui-corner-all">
        <div style="float:left;width:300px; margin:0 10px 10px 0;height: 400px;" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
            <strong style="margin-left: 5px;">HTTP Header:</strong>
            <table id="tb_h_param">
                <tr>
                    <td>ClientId:</td>
                    <td><input type="text" id="p_clientId"/></td>
                </tr>
                <tr>
                    <td>SecretKey:</td>
                    <td><input type="text" id="p_secretKey"/></td>
                </tr>
            </table>
        </div>

        <div style="margin-left:315px; z-index:9999; position:relative;">

            <div id="resultShow"></div>
        </div>
    </div>



</body>
<%@ include file="common/common_js.jsp"%>

</html>
