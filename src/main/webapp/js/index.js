$(function() {
    $( "#tabs" ).tabs();
});



var visitor = {
    create: function(){
        $.fn.mask();
        $.ajax({
            type: "Post",
            url:"/visitor/create",
            success:function(data){
                console.log(data);
                $.fn.mask.close();
            }
        });
    }
}