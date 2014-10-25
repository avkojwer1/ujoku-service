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
            <div style="float: left; width: 800px;">
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
                    <strong>[Goods]</strong><br/>
                    GoodsId:<input class="textbox" type="text" id="goodsId" style="width: 100px;"/>
                        <input type="button" value="Get Goods By Id" onclick="goods.getById();"/>
                </div>

                <div>
                    <strong>[Search]</strong><br/>
                    CategoryId:<input class="textbox" type="text" id="categoryId" style="width: 100px;"/>
                    <input type="button" value="Search" onclick="goods.search();"/>
                </div>

                <div>
                    <strong>[Article]</strong><br/>
                    ArticleId:<input class="textbox" type="text" id="articleId" style="width: 100px;"/>
                    <input type="button" value="Get Article By Id" onclick="article.getById();"/>
                </div>

                <div>
                    <strong>[Login]</strong><br/>
                    UserName:<input class="textbox" type="text" id="userName" style="width: 100px;"/>
                    Password:<input class="textbox" type="text" id="password" style="width: 100px;"/>
                    <input type="button" value="Login" onclick="member.login();"/>
                    <input type="button" value="Logout" onclick="member.logout();"/>
                </div>
                <div>
                    <strong>[Member]</strong><br/>
                    Phone:<input type="text" id="c_phone" style="width: 100px;"/>
                    <input type="button" value="sendSMS" onclick="member.sendSMS();"/>
                    UserName:<input type="text" id="c_userName" style="width: 100px;"/>
                    Password:<input type="text" id="c_password" style="width: 100px;"/>
                    Captcha:<input type="text" id="c_captcha" style="width: 100px;"/>
                    <input type="button" value="Create" onclick="member.create();"/><br/>
                    <strong>[Find Password]</strong><br/>
                    UserName:<input type="text" id="u_userName" style="width: 100px;"/>
                    Password:<input type="text" id="u_password" style="width: 100px;"/>
                    Captcha:<input type="text" id="u_captcha" style="width: 100px;"/>
                    <input type="button" value="Update" onclick="member.update();"/>
                </div>
                <div>
                    <strong>[Cart]</strong><br/>
                    <input type="button" value="Show My Cart" onclick="cart.shoppingCart();" style="margin: 5px 0;"/><br/>
                    GoodsId:<input class="textbox" type="text" id="c_goodsId" style="width: 100px;"/>
                    qty:<input class="textbox" type="text" id="c_qty" style="width: 100px;"/>
                    <input type="button" value="Add" onclick="cart.add();"/> <br/>
                    CartId:<input class="textbox" type="text" id="c_cartId2" style="width: 100px;"/>
                    qty:<input class="textbox" type="text" id="c_qty2" style="width: 100px;"/>
                    <input type="button" value="Update" onclick="cart.update();"/> <br/>

                    CartId: <input class="textbox" type="text" id="c_cartId" style="width: 100px;"/>
                    <input type="button" value="Delete" onclick="cart.delete();"/><br/>
                </div>
             </div>
        </div>
        <div style="float:left; margin-left:80px;">
            <strong>[Address]</strong><br/>
            consignee:<input type="text" id="a_consignee" style="width: 100px;"/>
            address: <input type="text" id="a_address" style="width: 100px;"/>
            phone_mob: <input type="text" id="a_phone_mob" style="width: 100px;"/>
            <input type="button" value="Create" onclick="address.create();"/><br/>

            <input type="button" value="Get member address" onclick="address.getMemberAddress();"/><br/>
        </div>
        <div style="clear: both;"></div>
    </div>

    <div style="margin-top: 7px; height:27px;" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
        <b>Requested URL: </b>
        <input type="text" id="requestedUrl" style="width:70%;">
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
