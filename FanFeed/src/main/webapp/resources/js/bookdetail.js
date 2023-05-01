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
});*/


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
                    word_list.push({text: key, weight: value});
                })
            });
            $('#wordcloud').jQCloud(word_list, {
                width: 600,
                height: 500,
                steps: 7,
                fontSize: {
                    from: 0.1,
                    to: 0.03
                },
                // 클릭 이벤트를 정의합니다.
                afterCloudRender: function() {
                    $('.jqcloud').on('click', 'span', function() {
                        var search_word = $(this).text();
                        $.ajax({
                            url : "flask.do",
                            type : "post",
                            data : {isbn:isbn},
                            dataType : "json",
                            success : function (data) {
                                var lstm_data = data.lstm;
                                var result = "";
                                if (lstm_data) {
                                    for (var i = 0; i < lstm_data.length; i++) {
                                        if (lstm_data[i].includes(search_word)) {
                                            result = lstm_data[i];
                                            break;
                                        }
                                    }
                                }
                                if (result) {
                                    alert(search_word + "가 포함된 LSTM 데이터: " + result);
                                } else {
                                    alert(search_word + "가 포함된 LSTM 데이터가 없습니다.");
                                }
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



/* 바 차트 */

/*$(document).ready(function () {
  var isbn = $('.isbn').text()
  $.ajax({
    url: "flask.do",
    type: "post",
    data: { isbn: isbn },
    dataType: "json",
    success: function (data) {
      console.log(data);

      var chartData = [['LDA Key', 'Value']];
      $.each(data.predict.lda, function (index, word) {
        $.each(word, function (key, value) {
          chartData.push([key, value * 1000])
        })
      })

      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable(chartData);

        var options = {
          title: 'LDA Data',
          legend: { position: 'none' },
          chartArea: { width: '50%' },
          hAxis: {
            title: 'Value',
            minValue: 0,
          },
          vAxis: {
            title: 'LDA Key'
          }
        };

        var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    },
    error: function () { alert("에러"); },
    // 로딩 이미지 보이게
    beforeSend: function () {
      $('.loading').show();
    },
    // 로딩 완료시 이미지 감춤
    complete: function () {
      $('.loading').hide();
    }
  });
});*/

document.addEventListener('DOMContentLoaded', function() {
$(document).ready(function () {
  var isbn = $('.isbn').text()
  $.ajax({
    url: "flask.do",
    type: "post",
    data: { isbn: isbn },
    dataType: "json",
    success: function (data) {
      console.log(data);

      var chartData = [['LDA Key', 'Positive Count', 'Negative Count']];
      $.each(data.predict.lda.slice(0, 10), function (index, word) { // 상위 10개만 사용
        var posCount = 0;
        var negCount = 0;
        $.each(data.predict.lstm, function (i, obj) {
          if (obj.label === 0) {
            negCount += obj.review.filter(function (w) { return w === word; }).length; // 수정된 부분
          } else if (obj.label === 1) {
            posCount += obj.review.filter(function (w) { return w === word; }).length; // 수정된 부분
          }
        });
        chartData.push([word, posCount, negCount]); // 수정된 부분
      });

      var ctx = document.getElementById('myChart').getContext('2d');
      var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
          labels: chartData.slice(1).map(function(row) { return row[0]; }), // 수정된 부분
          datasets: [
            {
              label: 'Positive Count',
              data: chartData.slice(1).map(function(row) { return row[1]; }), // 수정된 부분
              backgroundColor: 'rgba(75, 192, 192, 0.2)',
              borderColor: 'rgba(75, 192, 192, 1)',
              borderWidth: 1
            },
            {
              label: 'Negative Count',
              data: chartData.slice(1).map(function(row) { return row[2]; }), // 수정된 부분
              backgroundColor: 'rgba(255, 99, 132, 0.2)',
              borderColor: 'rgba(255, 99, 132, 1)',
              borderWidth: 1
            }
          ]
        },
        options: {
          scales: {
            y: {
              beginAtZero: true
            }
          }
        }
      });
    },
    error: function () { alert("에러"); },
    // 로딩 이미지 보이게
    beforeSend: function () {
      $('.loading').show();
    },
    // 로딩 완료시 이미지 감춤
    complete: function () {
      $('.loading').hide();
    }
  });
});
});


/*$(document).ready(function() {
	var isbn = $('.isbn').text();
	$.ajax({
		url: "flask.do",
		type: "post",
		data: { isbn: isbn },
		dataType: "json",
		success: function(data) {
			console.log(data);
			var chartData = [['LDA Key', 'LSTM 긍정', 'LSTM 부정']];
			$.each(data.predict.lda, function(index, word) {
				var ldaKey = word.번역;
				var ldaValue = word.번역;
				var lstmCounts = {
					positive: [],
					negative: []
				};

				if (data.predict.lstm_positive[ldaKey] === undefined) {
					data.predict.lstm_positive[ldaKey] = Array(data.predict.lstm_positive.length).fill(0);
				}

				if (data.predict.lstm_negative[ldaKey] === undefined) {
					data.predict.lstm_negative[ldaKey] = Array(data.predict.lstm_negative.length).fill(0);
				}

				$.each(data.predict.lstm_positive[ldaKey], function(index, value) {
					var lstmPositive = value * 1000;
					var lstmNegative = data.predict.lstm_negative[ldaKey][index] * 1000;

					lstmCounts.positive.push(lstmPositive);
					lstmCounts.negative.push(lstmNegative);
				});

				chartData.push([ldaKey.toString(), lstmCounts.positive, lstmCounts.negative]);
			});

			google.charts.load('current', { 'packages': ['corechart'] });
			google.charts.setOnLoadCallback(drawChart);

			function drawChart() {
				var data = google.visualization.arrayToDataTable(chartData);

				var options = {
					title: 'LDA 상위 10개와 해당 단어를 포함한 리뷰의 LSTM 긍정 부정 카운팅 수',
					legend: { position: 'top' },
					chartArea: { width: '80%' },
					hAxis: {
						title: 'LSTM 긍정 부정 카운팅 수',
						minValue: 0,
					},
					vAxis: {
						title: 'LDA Key'
					}
				};

				var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
				chart.draw(data, options);
			}
		},
		error: function() { alert("에러"); },
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
