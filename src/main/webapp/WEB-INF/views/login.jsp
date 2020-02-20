<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
</head>
<body>
<script type="text/javascript">
$(document).ready(function() {
  var n1 = Math.round(Math.random() * 10 + 1);
  var n2 = Math.round(Math.random() * 10 + 1);
  $("#cau_hoi").val(n1 + " + " + n2);
  $(".ten_form").submit(function (e) {
  
  if (eval($("#cau_hoi").val()) != $("#tra_loi").val()) {
      $("#tra_loi").css('box-shadow', '0px 0px 7px red');
      alert('Ket qua ban nhap sai roi. Xin vui long nhap lai!');
      e.preventDefault(); 
    } 
  });
});
</script>
	<div class="container">
		<!-- <h1 class="form-heading">login Form</h1> -->
		<div class="login-form">
			<div class="main-div">
				<c:if test="${param.incorrectAccount != null}">
					<div class="alert alert-danger">	
							Username or password incorrect
					</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger">	
							you Not authorize
					</div>
				</c:if>
				<form action="j_spring_security_check" id="formLogin" class="ten_form" method="post">
					<div class="form-group">
						<input type="text" class="form-control" id="userName" name="j_username" placeholder="Tên đăng nhập">
					</div>

					<div class="form-group">
						<input type="password" class="form-control" id="password" name="j_password" placeholder="Mật khẩu">
					</div>
					<table border="0">
    <tr><td>Câu hỏi:</td><td><input type="text" disabled="disabled" id="cau_hoi"/></td></tr>
    <tr><td>Câu trả lời:</td><td><input type="text" id="tra_loi"/></td></tr>
    </table>
					<button type="submit" class="btn btn-primary" >Đăng nhập</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
