<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ include file ="include/header.jsp" %>
 
  <section>
 
        <div class="for-pw" >
            <div class="for-banner">Find PW</div>
            <p>비밀번호를 찾기위해  가입시 입력하신 아이디와 이름 이메일을 입력하여주세요.</p>
           <hr>
        </div>

        <form action="find.jsp" class="for-form" name="forgotForm">

            <div class="for-group">
                <label>ID</label>
                <input type="text" class="form-control" name=""> 
            </div>
            <div class="for-group">
                <label>Name</label>
                <input type="text" class="form-control" name=""> 
            </div>

            <div class="for-group">
                <label>Email</label>
                <input type="text" class="form-control" name=""> 
            </div>

            <div class="for-find">
                <input type="button" value="Find" class="btn btn-primary btn-block for-btn" onclick="check()")>
                <input type="button" value="Find ID" class="btn btn-primary btn-block for-btn">

            </div>
            
            <script>
            
            function check() {
            	
            }
            
            </script>
        </form>

    </section>
 
 
 
 <%@include file ="include/footer.jsp"%>