<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <%@ include file="/WEB-INF/views/common/layout/header.jsp" %>
        <style>
        	body{
        		background-image:url('/static/img/login-background.jpg');
        		background-repeat : no-repeat;
     		   background-size : cover;
        	}
        </style>
        <script type="text/javascript" src="/static/js/home_event.js"></script>
        <script type="text/javascript">
        $(function(){
        	$("#user_pw").focus();
        });
        </script>
    </head>
<!--     <body class="bg-dark"> -->
    <body>
        <div id="layoutAuthentication">  
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-15">
                                    <div class="card-header" style="background-color:#5a68b1;">
                                    	<!-- <h3 class="text-center font-weight-light my-4">SAFEKOREA AI solution</h3> -->
                                    	<div class="card-custom">
				                        	<img src="/static/img/edge-it-board.jpg"/>
				                        </div>
                                    </div> 
                                    <div class="card-body">
                                        <form id="aform" name="aform" role="form" method="post">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_id" name="user_id" type="text" placeholder="name@example.com" value="admin"/>
                                                <label for="inputEmail">ID</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_pw" name="user_pw" type="password" placeholder="Password" onkeyup="enterkey();"/>
                                                <label for="inputPassword">Password</label>
                                            </div>
                                            <div class="form-check mb-3">
                                                <input class="form-check-input" id="inputRememberPassword" type="checkbox" value=""/>
                                                <label class="form-check-label" for="inputRememberPassword">비밀번호 기억하기</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <!-- <a class="small" href="password.html">비밀번호 찾기</a> -->
			                                    <a class="small" href="/home/register.do">회원가입</a>
                                                <a class="btn btn-primary" href="#" onclick="fnHomeLogin();">로그인</a>
                                            </div>
                                        </form>
                                    </div>
                                 </div> 
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; SafeKorea EDGE-it 2022</div>
                            <!-- <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div> -->
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/static/bootstrap/js/scripts.js"></script>
    </body>
</html>
