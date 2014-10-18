$(function() {
    $( "#tabs" ).tabs();

    window.jsonParser = new JsonParser("");

});



var visitor = {
    create: function(){
        $.fn.mask();
        $.ajax({
            type: "GET",
            url:"/visitor/create",
            dataType: "json",
            success:function(data){

                window.jsonParser.jsonContent = data;
                window.jsonParser.init();

                $.fn.mask.close();
            }
        });
    }
}