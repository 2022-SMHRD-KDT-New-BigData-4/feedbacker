/**
 * 
 */

// 카테고리 클릭 로직
$(".dropdown-item").on("click", function(e) {
	e.preventDefault(); // a 태그의 기능을 막음
	var category = $(this).text();

	console.log("드롭다운:", category);

	if (category === "책 제목" || category === "ISBN") {
		changeCategory();
	} else {
		formMove("category.do", "category", category)
	}

	function changeCategory() {
		if ($('#title-link').text() === '책 제목') {
			$('#title-link').text('ISBN');
			$('#isbn-link').text('책 제목');
			$('#hidden-category').val('ISBN');
		} else {
			$('#title-link').text('책 제목');
			$('#isbn-link').text('ISBN');
			$('#hidden-category').val('책 제목');
		}
	}
});

// 검색창 입력로직
$('#search').on('input', function() {
	$('#isbn-ck').remove();
	var searchType = $('#hidden-category').val();
	var searchInput = $('#search').val();

	if (!$('.btn-clear').length) {
		$('#search_toggle').append('<button class="btn-clear" style="position: absolute; right: 420px; border:transparent; background:gray; border-radius:50%"><i class="ti-close"></i></button>');
	}

	if (searchType == 'ISBN') { // 검색타입이 ISBN
		if ($('#isbn-ck').length) {
			$('#isbn-ck').remove();
		}
		var regEx = /^\d{13}$/;
		if (regEx.test(searchInput)) {
			$('#isbn-ck').remove();
		} else {
			$('#isbn-ck').remove();
			$('#search_toggle').append('<span id="isbn-ck" style="color: red; position: absolute; right: 200px;">13자리의 숫자가 아닙니다.</span>');
			return;
		}

	// "isbn-ck" 요소의 내용이 없으면(즉, 입력값이 비어있는 경우), 빈 요소를 추가합니다.
	if (isEmpty($('#isbn-ck').text())) {
		$('#isbn-ck').remove();
		$('#search_toggle').append('<span id="isbn-ck" style="color: red; position: absolute; right: 200px;"></span>');
	}
	} else { // 검색타입이 책제목
		// 딜레이 설정
		setTimeout(function() {

			if (isEmpty(searchInput)) {
				console.log('비었음')
				if (searchInput == " ") {
					$('#search-result').hide();
				} else {
					$('#search-result').hide();
					$('.btn-clear').remove();
				}
				return;
			}

			var regEx = /^[가-힣A-Za-z0-9\s]+$/;

			if (!regEx.test(searchInput)) {
				console.log('미완성한글')
				return;
			}

			$.ajax({
				url: "search.do",
				type: "GET",
				data: { type: searchType, search: searchInput },
				dataType: "json",
				success: searchResult,
				error: function() {
					alert("에러");
				}
			});
		}, 400); // 0.4초의 딜레이 설정
	}
});

// 검색창 비우기 버튼
$(document).on('click', '.btn-clear', function() {
	$('#search').val("");
	$(this).remove();
	$('#search-list').empty();
	$('#search-result').hide();
})

// 빈값인지 체크하는 함수
var isEmpty = function(value) {
	if (value == "" || value == " " || value == null || value == undefined || (value != null && typeof value == "object" && !Object.keys(value).length)) {
		return true
	} else {
		return false
	}
};

// 검색결과 div 갱신
function searchResult(data) {
	console.log(data);
	var stackTag = "";
	var $row = $('#search-list');
	$row.empty();

	if (data.searchBook.length === 0) {
		$row.append('<h2 class="mt-5" style="text-align:center;">검색결과가 없습니다.</h2>')
	}

	$.each(data.searchBook, function(index, book) {
		stackTag = "";
		stackTag += '<a href="#" onclick="formMove(\'bookinfo.do\', \'isbn\', \''+book.isbn+'\')" class="list-group-item list-group-item-action py-2">';
		stackTag += '<div class="row">';
		stackTag += '<div class="col-md-3">';
		stackTag += '<span class="isbn" style="display: none">'+book.isbn+'</span>';
		stackTag += '<img class="ml-2" src="' + book.img + '" style="height: 120px; width: 100px; border: 1px solid rgba(0,0,0,0.15);"></div>';
		stackTag += '<div class="col-md-9"><h6>' + book.category + '</h6>';
		stackTag += '<h4>' + book.title + '</h4>'
		stackTag += '<h6>' + book.author + ' (' + book.publisher + ')</h6></div></div></a>'
		$row.append(stackTag);
	});

	$('#search-result').show();
}

// 맨 위로 올라오는 커서
$(document).on('click',$("#scroll-top-btn"),function(){
	console.log("들어옴")
	window.scrollTo({ top: 0, behavior: 'smooth' });
})
