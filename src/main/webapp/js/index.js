$(function() {
    $( "#tabs" ).tabs();

    window.jsonParser = new JsonParser("");

    $("#secretKey").val($("option:selected", $("#selClient")).attr("key"));

    $("#selClient").change(function(){
        var optionSelected = $("option:selected", this);
        $("#secretKey").val($(optionSelected).attr("key"));
    })
});


function showResult(settings){
    $.fn.mask();
    $.ajax({
        type: settings.type,
        url:settings.url,
        dataType: settings.dataType,
        data: settings.data,
        contentType: "application/json",
        headers:{
            "Client-Id": $("#selClient").val(),
            "Secret-Key" : $("#secretKey").val(),
            "Visitor-Id" : $("#visitorId").val(),
            "Session-Id" : $("#sessionId").val()
        },
        success:function(data){

            window.jsonParser.jsonContent = JSON.stringify(data);;
            window.jsonParser.init();

            if(settings.success)
                settings.success(data);

            $.fn.mask.close();
        },
        error: function(data){
            window.jsonParser.jsonContent = JSON.stringify(data);;
            window.jsonParser.init();
            $.fn.mask.close();
        }
    });
}


var visitor = {
    create: function(){
        var settings = {
            type:"POST",
            url:"/visitor/create",
            dataType: "json",
            success: function(data){
                $("#visitorId").val(data.id);
            }
        };
        showResult(settings);
    }
}

var session ={
    create: function(){
        var settings = {
            type:"POST",
            url:"/session/create",
            dataType: "json",
            success: function(data){
                $("#sessionId").val(data.id);
            }
        };
        showResult(settings);
    }
}

var goods = {
    getById:function(){
        var settings = {
            type:"Get",
            url:"/goods/" + $("#goodsId").val(),
            dataType: "json"
        };
        showResult(settings);
    },
    search:function(){
        var settings = {
            type:"POST",
            url:"/search",
            dataType: "json",
            data:JSON.stringify( {
                "categoryId" : $("#categoryId").val()
            })
        };

        showResult(settings);
    }
}

var article = {
    getById:function(){
        var settings = {
            type:"Get",
            url:"/article/" + $("#articleId").val(),
            dataType: "json"
        };
        showResult(settings);
    }
}

var member ={
    login: function(){
        var settings = {
            type:"POST",
            url:"/login",
            dataType: "json",
            data:JSON.stringify( {
                "userName" : $("#userName").val(),
                "password" : $("#password").val()
            })
        };

        showResult(settings);
    },
    logout:function(){
        var settings = {
            type:"POST",
            url:"/logout",
            dataType: "json"
        };

        showResult(settings);
    }
}