<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="wrapper">
    	<form action="join.do" method="post">
        <div class="title"><h1 style="font-size: 21px;">회원가입</h1></div>
        <div class="id">
            <input id="id" name="id" type="text" placeholder="아이디를 입력해 주세요." required="">
            <div id="idError" class="error"></div>
        </div>
        <div class="password">
            <input id="pw" name="pw" type="password" placeholder="비밀번호를 입력해 주세요." required="">
            <div id="passwordError" class="error"></div>
        </div>
        <div class="passwordCheck">
            <input id="passwordCheck" type="password" placeholder="비밀번호를 다시 입력해 주세요." required="">
            <div id="passwordCheckError" class="error"></div>
        </div>
        <div class="email">
            <input id="email" name="email" type="text" placeholder="이메일을 입력해 주세요." required="">
            <div id="emailError" class="error"></div>
        </div>
        <div class="nick">
            <input id="nick" name="nick" type="text" placeholder="닉네임을 입력해 주세요." required="">
            <div id="nickError" class="error"></div>
        </div>
        
        <div class="line">
            <hr>
        </div>
        <div class="signUp">
            <button id="signUpButton" type="submit">가입하기</button>
        </div>
        </form>
    </div>



</body>
</html>