/** 북 **/

$("#m-auto").hide();



var predictResult;

$(document).ready(function() {
	var isbn = $('.isbn').text();
	$.ajax({
		url: "flask.do",
		type: "post",
		data: { isbn: isbn },
		dataType: "json",
		success: function(data) {
			console.log(data);
			predictResult = data;
			var word_list = [];
			$.each(data.predict.lda, function(index, word) {
				$.each(word, function(key, value) {
					// 단어와 가중치를 배열에 추가합니다.
					word_list.push({ text: key, weight: value });
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

			/*감성어 top 10*/
			// success 콜백 함수 내부에서 수행됩니다.
			var word_list = [];
			$.each(data.predict.lda, function(index, word) {
				$.each(word, function(key, value) {
					// 단어와 가중치를 배열에 추가합니다.
					word_list.push({ text: key, weight: value });
				})
			});

			// 내림차순으로 정렬합니다.
			word_list.sort(function(a, b) {
				return b.weight - a.weight;
			});

			// 상위 10개의 요소에 대해서만 리스트 태그를 만듭니다.
			var top10List = '';
 $.each(word_list.slice(0, 10), function(index, word) {
             // 리스트에 항목을 추가합니다.
             top10List += '<li style="opacity:0; animation-delay:' + (index * 0.1) + 's;">';
             top10List += '<span style="float:left;">' + (index + 1) + '</span>';
             top10List += '<a class="contents text-center" href="#">' + word.text + '</a>';
             top10List += '</li>';
         });

			// top10 리스트를 추가합니다.
			$('#top10 ul.list-unstyled').html(top10List);

			posnegReview(data.predict.lstm, word_list[0].text)
		},
		error: function() {
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

// 클릭 이벤트 처리 함수를 추가합니다.
$(document).on('click', '#wordcloud span', function() {
	var word = $(this).text(); // 클릭한 단어 가져오기
	console.log(word);
	console.log(predictResult.predict.lstm);
	posnegReview(predictResult.predict.lstm, word);

});

// 클릭 이벤트 처리 함수를 추가합니다.
$(document).on('click', '.contents', function() {
	var word = $(this).text(); // 클릭한 단어 가져오기
	console.log(word);
	console.log(predictResult.predict.lstm);
	posnegReview(predictResult.predict.lstm, word);

});


function posnegReview(data, word) {

	var negInclude = [];
	var posInclude = [];

	var negReviews = data[0].review
	var posReviews = data[1].review

	for (var i = 0; i < negReviews.length; i++) {
		var review = negReviews[i];

		if (review.includes(word)) {
			var highlightedReview = review.replace(new RegExp(word, 'g'), '<span style="background:gold">' + word + '</span>');
			negInclude.push(highlightedReview);
		}
	}
	
	for (var i = 0; i < posReviews.length; i++) {
		var review = posReviews[i];

		if (review.includes(word)) {
			var highlightedReview = review.replace(new RegExp(word, 'g'), '<span style="background:gold">' + word + '</span>');
			posInclude.push(highlightedReview);
		}
	}

	console.log(negInclude);
	console.log(posInclude);

	$("#negative").empty();
	$("#positive").empty();

	var negTag = '';
	var posTag = '';


	for (let index = 0; index < negInclude.length; index++) {
		let content = negInclude[index];
		negTag += '<li class="list-group-item">' + content + '</li>';
	}
	for (let index = 0; index < posInclude.length; index++) {
		let content = posInclude[index];
		posTag += '<li class="list-group-item">' + content + '</li>';
	}

	$("#negative").append(negTag);
	$("#positive").append(posTag);

}
/*a 태그가 클릭 되었을 때 이벤트를 멈추기*/

$(document).on('click','.contents',function(e){
   e.preventDefault();
   var word = $(this).data('word');
	return false; // 링크의 기본 동작을 막음
})

