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
                ClientId:<select></select>
                SecretKey:<input class="textbox" type="text" id="secretKey" value="F48B428C380E4D6181AE88CED2C612B5"/>

            </div>

            <div>
                <input type="button" value="Create Visitor ID" onclick="visitor.create();"/>
                VisitorID:<input class="textbox" type="text" id="visitorId"/>&nbsp;&nbsp;

            </div>
        </div>
    </div>

    <div id="d_param" class="ui-tabs ui-corner-all">
        <div style="float:left;width:250px; margin:0 10px 10px 0;" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
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
    </div>

    <div id="resultShow"></div>
</body>
<%@ include file="common/common_js.jsp"%>

</html>
