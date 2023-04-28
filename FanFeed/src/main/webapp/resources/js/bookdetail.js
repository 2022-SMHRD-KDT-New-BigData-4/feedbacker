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
           error : function () { alert("에러"); },
	    	 // chart 로딩 이미지
			beforeSend: function () {
	              var width = 200;
	              var height = 200;
	              var left = 0;
	              var top = 0;

					// 화면 중앙 좌표 계산
	              top = ( $(window).height() - height ) / 2 + $(window).scrollTop(); 
	              left = ( $(window).width() - width ) / 2 + $(window).scrollLeft();
	 
	              if($(".spinner-border").length != 0) {
	                     $(".spinner-border").css({
	                            "top": top+"px",
	                            "left": left+"px"
	                     });
	                     $(".spinner-border").show();
	              }
	              else {
	                     $('body').append('<div class="spinner-border text-success" role="status" style=" position:absolute; top:' + top + 'px; left:' + left + 'px; width:' + width + 'px; height:' + height + 'px; z-index:9999; margin:auto; padding:0; "><span class="visually-hidden">Loading...</span></div>');
	                     
	              }

	       },
	        // 로딩 완료시 이미지 감춤
			complete: function(){
	        $('.spinner-border').hide();
	     	}
       });
   });