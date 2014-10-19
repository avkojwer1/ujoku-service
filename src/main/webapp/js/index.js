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
        headers:{
            "Client-Id": $("#selClient").val(),
            "Secret-Key" : $("#secretKey").val()
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
            url:"/goods/" + $("#GoodsId").val(),
            dataType: "json"
        };
        showResult(settings);
    }
}