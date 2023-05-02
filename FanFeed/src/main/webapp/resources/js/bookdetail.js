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
   
/*$(document).ready(function () {
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
            var jqCloudSettings = {
                width: 600,
                height: 500,
                steps: 7,
                fontSize: {
                    from: 0.1,
                    to: 0.03
                }
            };
            // jqcloud 함수를 호출하고 워드 클라우드를 생성합니다.
            $('#wordcloud').jQCloud(word_list, jqCloudSettings);

            // 클릭 이벤트 처리 함수를 추가합니다.
            $(document).on('click', '#wordcloud span', function () {
                var word = $(this).text(); // 클릭한 단어 가져오기
                $.ajax({
                    url: 'flask.do',
                    type: 'post',
                    data: {word: word},
                    dataType: 'json',
                    success: function (data) {
                        var reviews = data.reviews;
                        var reviewsHtml = '';
                        $.each(reviews, function (index, review) {
                            reviewsHtml += '<div class="review">';
                            reviewsHtml += '<p>' + review.text + '</p>';
                            reviewsHtml += '<p>' + review.rating + '점 / ' + review.date + '</p>';
                            reviewsHtml += '</div>';
                        });
                        $('#reviews').html(reviewsHtml); // 리뷰 데이터 추가
                    },
                    error: function () {
                        alert('에러');
                    }
                });
            });*/

            /*감성어 top 10*/
            // success 콜백 함수 내부에서 수행됩니다.
            /*var word_list = [];
            $.each(data.predict.lda, function (index, word) {
                $.each(word, function (key, value) {
                    // 단어와 가중치를 배열에 추가합니다.
                    word_list.push({text: key, weight: value});
                })
            });

            // 내림차순으로 정렬합니다.
            word_list.sort(function(a, b) {
                return b.weight - a.weight;
            });

            // 상위 10개의 요소에 대해서만 리스트 태그를 만듭니다.
            var top10List = '';
            $.each(word_list.slice(0, 10), function (index, word) {
                // 리스트에 항목을 추가합니다.
                top10List += '<li class="align-items-center d-flex justify-content-between" id="toplist">';
                top10List += '<span>' + (index + 1) + '</span>';
                top10List += '<a href="#">' + word.text + '</a>';
			    top10List += '</li>';
			});*/

// top10 리스트를 추가합니다.
/*$('#top10 ul.list-unstyled').html(top10List);
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
*/
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
            var jqCloudSettings = {
                width: 600,
                height: 500,
                steps: 7,
                fontSize: {
                    from: 0.1,
                    to: 0.03
                }
            };
            // jqcloud 함수를 호출하고 워드 클라우드를 생성합니다.
            $('#wordcloud').jQCloud(word_list, jqCloudSettings);

            // 클릭 이벤트 처리 함수를 추가합니다.
            $(document).on('click', '#wordcloud span', function () {
                var word = $(this).text(); // 클릭한 단어 가져오기
                console.log(word);
                $.ajax({
                    url: 'flask.do',
                    type: 'post',
                    data: {word: word},
                    dataType: 'json',
                    success: function (data) {
                        var reviews = data.reviews;
                        var reviewsHtml = '';
                        $.each(reviews, function (index, review) {
                            reviewsHtml += '<div class="review">';
                            reviewsHtml += '<p>' + review.text + '</p>';
                            reviewsHtml += '<p>' + review.rating + '점 / ' + review.date + '</p>';
                            reviewsHtml += '</div>';
                        });
                        $('#comment-area-box-l').html(reviewsHtml); // 리뷰 데이터 추가
                    },
                    error: function () {
                        alert('에러');
                    }
                });
            });

            /*감성어 top 10*/
            // success 콜백 함수 내부에서 수행됩니다.
            var word_list = [];
            $.each(data.predict.lda, function (index, word) {
                $.each(word, function (key, value) {
                    // 단어와 가중치를 배열에 추가합니다.
                    word_list.push({text: key, weight: value});
                })
            });

            // 내림차순으로 정렬합니다.
            word_list.sort(function(a, b) {
                return b.weight - a.weight;
            });

            // 상위 10개의 요소에 대해서만 리스트 태그를 만듭니다.
            var top10List = '';
            $.each(word_list.slice(0, 10), function (index, word) {
                // 리스트에 항목을 추가합니다.
                top10List += '<li class="align-items-center d-flex justify-content-between" id="toplist">';
                top10List += '<span>' + (index + 1) + '</span>';
                top10List += '<a href="#">' + word.text + '</a>';
			    top10List += '</li>';
			});

			// top10 리스트를 추가합니다.
			$('#top10 ul.list-unstyled').html(top10List);
        },
        error : function () { 
			alert("에러"); 
		},
		// 로딩 이미지 보이게
		beforeSend: function() {
			$('.loading').show();
		},
		// 로딩 완료시 이미지 감춤
		complete: function() {
			$('.loading').hide();
		}
       });
   });





