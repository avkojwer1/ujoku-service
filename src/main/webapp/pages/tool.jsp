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
                AppID:<input class="textbox" type="text" id="AppId" value="09706EE72CC34430B6B67DA92F7C0394"/>
                AppKey:<input class="textbox" type="text" id="AppKey" value="F48B428C380E4D6181AE88CED2C612B5"/>

            </div>

            <div>
                <input type="button" value="Create Visitor ID" onclick="createVisitorId()"/>
                VisitorID:<input class="textbox" type="text" id="visitorId"/>&nbsp;&nbsp;

            </div>
        </div>

    </div>
</body>
<%@ include file="common/common_js.jsp"%>

<script>
    $(function() {
        $( "#tabs" ).tabs();
    });
</script>
</html>
