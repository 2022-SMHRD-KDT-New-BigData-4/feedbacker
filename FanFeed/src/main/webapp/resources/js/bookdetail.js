/** 북 **/


 /*  $(document).ready(function () {
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
		// 로딩 이미지 보이게
		beforeSend: function() {
			$('.loading').show();
		},
		// 로딩 완료시 이미지 감춤
		complete: function() {
			$('.loading').hide();
		}
       });
   });*/
   
/* 워드 클라우드 생성 */   
   
$(document).ready(function () {
    var isbn = $('.isbn').text();
    $.ajax({
        url : "flask.do",
        type : "post",
        data : {isbn:isbn},
        dataType : "json",
        success : function (data) {
            var word_list = [];
            $.each(data.predict.lda, function (index, word) {
                $.each(word, function (key, value) {
                    // 단어와 가중치를 배열에 추가합니다.
                    word_list.push({text: key, weight: value});
                })
            });
            // jqcloud 라이브러리의 설정을 지정합니다.
            $('#wordcloud').jQCloud(word_list, {
                width: 600,
                height: 500,
                steps: 7,
                fontSize: {
                    from: 0.1,
                    to: 0.03
                }
            });
        },
        error : function () { alert("에러"); },
        beforeSend: function() {
            $('.loading').show();
        },
        complete: function() {
            $('.loading').hide();
        }
    });
});
