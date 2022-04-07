<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    </head>
    <body>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <!-- <div class="card-header"><h3 class="text-center font-weight-light my-4">회원가입</h3></div> -->
                                    <div class="card-header" style="background-color:#5a68b1;">
                                    	<!-- <h3 class="text-center font-weight-light my-4">SAFEKOREA AI solution</h3> -->
                                    	<div class="card-custom">
				                        	<img src="/static/img/edge-it-board.jpg"/>
				                        </div>
                                    </div> 
                                    <div class="card-body">
                                        <form method="post" id="aform" name="aform" role="form">
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="user_id" name="user_id" type="text" placeholder="아이디를 입력해주세요." />
                                                        <label for="user_id">아이디</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <input class="form-control" id="user_nm" name="user_nm" type="text" placeholder="이름을 입력해주세요." />
                                                        <label for="user_nm">이름</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_email" name="user_email" type="email" placeholder="name@example.com" />
                                                <label for="user_email">이메일</label>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="user_pw" name="user_pw" type="password" placeholder="비밀번호를 입력해주세요." />
                                                        <label for="user_pw">비밀번호</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="user_pw_chk" name="user_pw_chk" type="password" placeholder="비밀번호 확인을 입력해주세요." />
                                                        <label for="user_pw_chk">비밀번호 확인</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-primary btn-block" href="#" onclick="fnInsertRegister();">회원가입</a></div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="login.html">로그인으로 이동</a></div>
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
