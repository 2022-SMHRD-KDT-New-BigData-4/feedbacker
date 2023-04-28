/** 북 **/


   $(document).ready(function () {
		var isbn = $('.isbn').text()
       $.ajax({
           url : "flask.do",
           type : "post",
           data : {isbn:isbn},
           dataType : "json",
           success : function (data) {
               console.log(data);
               $.each(data.predict.lda, function (index, word) {
               $.each(word, function (key, value) {
                  console.log("Key: " + key + ", Value: " + value)
               })
            })
           },
           error : function () { alert("에러"); }
       });
   });