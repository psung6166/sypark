/**
 *	date : 
 *  comment : 로그인, 회원가입 등 처리 js 
 *  auth : psy
 */
 
/*$(function(){
	
});*/

function fnInsertRegister(){
	var user_id = $("#user_id");
	var user_nm = $("#user_nm");
	var user_email = $("#user_email");
	var user_pw = $("#user_pw");
	var user_pw_chk = $("#user_pw_chk");
	
	if(!user_id.val()){
		alert("아이디를 입력해주세요.");
		user_id.focus();
		return;
	}
	if(!user_nm.val()){
		alert("이름을 입력해주세요.");
		user_nm.focus();
		return;
	}
	if(!user_email.val()){
		alert("이메일을 입력해주세요.");
		user_email.focus();
		return;
	}
	if(!user_pw.val()){
		alert("비밀번호를 입력해주세요.");
		user_pw.focus();
		return;
	}
	if(!user_pw_chk.val()){
		alert("비밀번호 확인을 입력해주세요.");
		user_pw_chk.focus();
		return;
	}
	if(user_pw.val() != user_pw_chk.val()){
		alert("입력하신 비밀번호가 일치하지 않습니다.");
		user_pw.focus();
		return;
	}
	
	if(confirm("회원가입 하시겠습니까?")){
		$("#aform").attr({ action : "/home/insertRegister.do", method : 'post' }).submit();
	}
	
}

function fnHomeLogin(){
	var user_id = $("#user_id");
	var user_pw = $("#user_pw");
	
	if(!user_id.val()){
		alert("아이디를 입력해주세요.");
		user_id.focus();
		return;
	}
	if(!user_pw.val()){
		alert("비밀번호를 입력해주세요.");
		user_pw.focus();
		return;
	}
	
	$("#aform").attr({ action : "/home/login.do", method : 'post' }).submit();
}

function enterkey() {
	if (window.event.keyCode == 13) {
		// 엔터키가 눌렸을 때 실행할 내용
		fnHomeLogin();
	}
}
 


