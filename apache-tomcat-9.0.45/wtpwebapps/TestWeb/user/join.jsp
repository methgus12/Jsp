
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file = "../include/header.jsp"%>


<section>
  <div align ="center">
  <h2>회원가입하기</h2>
  <hr>
  
  <form action ="join_ok.jsp" method="post" name="regForm">
  <table>
   <tr>
      <td>아이디</td>
      <td><input type ="text" name="id" placeholder="아이디를 입력하세요" ></td>
   </tr>
   
    <tr>
      <td>비밀번호</td>
      <td><input type ="password" name="pw" placeholder="비밀번호4자리이상필수입력하세요" ></td>
   </tr>
   
   <tr>
      <td>비밀번호확인</td>
      <td><input type ="password" name="pwCheck" placeholder="비밀번호확인" ></td>
   </tr>
   
   <tr>
      <td>이름</td>
      <td><input type ="text" name="name" ></td>
   </tr>
   
   
   <tr>
      <td>강아지이름</td>
      <td><input type ="text" name="dog" ></td>
   </tr>
   
   
  </table>
  
  <input type="button" value ="Join" class ="button" onclick="check()">
  <input type="button" value="Login"class="button"  onclick="location.href='login.jsp'">
  <input type ="button" value ="Visitor" class ="button">
  
  
<script>
	//이 화면에서 사용할 js코드는 가장 아래쪽에 작성합니다.
	function check(){
		//폼값의 검증 js코드
		//form태그는 문서의 하위 자식 태그형태로 document.form태그이름.input태그이름 <이렇게 접근이 가능
		
		if(document.regForm.id.value.length < 4){
			alert("아이디는 4글자 이상입니다.");
			document.regForm.id.focus();
			return;//함수종료
		} else if(document.regForm.pw.value.length < 4 ){
			alert("비밀번호는 4글자 이상입니다.");
			document.regForm.pw.focus();
			return;//함수종료
		} else if(document.regForm.pw.value != document.regForm.pwCheck.value){
			alert("비밀번호와 다릅니다.");
			document.regForm.pwCheck.focus();
			return;
		} else if(document.regForm.name.value == ""){
			alert("이름은 필수 사항입니다.");
			document.regForm.name.focus();
			return;
		}else {
			document.regForm.submit(); //해당 폼태그의 서브밋
		}
		
	}
</script>
  
  

  
  
  
  
 
  
  
  </form>
  
  </div>


</section>



<%@include file = "../include/footer.jsp"%>