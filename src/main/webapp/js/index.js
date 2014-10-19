$(function() {
    $( "#tabs" ).tabs();

    window.jsonParser = new JsonParser("");

});


function clientChange(el){
    var optionSelected = $("option:selected", el);
    $("#secretKey").val($(optionSelected).attr("key"));
}

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

            settings.success(data);

            $.fn.mask.close();
        },
        error: function(){
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