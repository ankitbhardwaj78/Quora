$(document).ready(function() {
    $(".bottombar").hide();
    $(".answerbutton").click(function(){
           console.log(event);
        $(".bottombar").show();
    });
    $("#loadmore").click(function() {

    });


    window.load_more_active = false;
    window.offset = 10;
    document.addEventListener('scroll', function(event){

        if(!window.load_more_active){
            if(window.scrollY >600){
                console.log("hello");
                window.load_more_active = true;
                $.ajax({
                    url: '/',
                    type: 'GET',
                    dataType: 'script',
                    data: {
                        offset: window.offset,
                        format: 'js'
                    }
                });
            }
        }

    });


})

