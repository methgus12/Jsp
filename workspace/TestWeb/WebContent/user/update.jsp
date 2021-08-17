<%@page import="Controller.TestVO"%>
<%@page import="Controller.TestDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file ="../include/header.jsp"%>

<%
String id =(String)session.getAttribute("user_id");

if(id == null) {
	response.sendRedirect("login.jsp");
	
}

TestDAO dao = TestDAO.getInstance();
TestVO vo = dao.getInfo(id);


%>


   
<body>

    <div class="wrap">

        <h2>정보수정</h2>

        <form action="update_ok.jsp" method="post" name="regForm">
            <table class="menu">

                <tr>
                    <td>ID</td>
                    <td><input type="text" name ="id"value ="<%=vo.getId()%>" placeholder="4글자 이상 작성하세요" readonly></td>

                </tr>

                <tr>
                    <td>PW</td>
                    <td><input type="text" name ="pw" ></td>

                </tr>

                <tr>
                    <td>PW Check</td>
                    <td><input type="text" name ="pwCheck"></td>

                </tr>

                <tr>
                    <td>Name</td>
                    <td><input type="text" name ="name" value="<%=vo.getName()%>" ></td>

                </tr>

                <tr>
                    <td>DOG NAME</td>
                    <td><input type="text" name ="dog" value =""<%=vo.getDog() %> ></td>

                </tr>

            </table>

            <input type="button" value="수정" onclick="check()">
		    <input type="button" value="취소"onclick="location.href='mypage.jsp'">
		    
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
			document.regForm.name.foocus();
			return;
		}else {
			document.regForm.submit(); //해당 폼태그의 서브밋
		}
		
	}
</script>








        </form>
    </div>
    
</body>
</html>