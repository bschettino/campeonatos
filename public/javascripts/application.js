  $(document).ready(function() {

    $(document).find("table").each(function(){
        i = 0;
        $(this).find("tr").each(function(){
            if ($(this).find("td").length > 0){
                i = i+1;
                if (i%2 == 0){
                    $(this).addClass("even");
                }
                else
                {
                    $(this).addClass("odd");
                }
            }
        });
    });
  });