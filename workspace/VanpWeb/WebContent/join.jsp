<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ include file ="include/header.jsp" %>
 
  <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-8 join-form">

                    <form action ="join_ok.jsp" method="post" name="regForm">
                    
                    
                        <div class="join-group"  >
                            <label>ID</label>
                            <input type="text" class="form-control" placeholder="enter your id" name="id" autocomplete="off">
                            <div class="join-group-btn">
                            <input type="button" class="btn btn-primary btn-block" value="Check ID" onclick="check2()">
                            
                            </div>
                        </div>
                       
                        <script>
                        function check2() {
                        	if(document.regForm.id.value.length < 4) {
                        		alert("아이디는 4글자 이상입니다 ");
                        		document.regForm.id.focus();
                        		return; 
                        	} else {
                        		
                        		location.href ="id_ok.jsp";
                        	}
                        	}
                        
                        </script>
                       

                        <div class="join-group">
                            <label>Password</label>
                            <input type="password" class="form-control" placeholder="enter your pw" name="pw"> 
                        </div>

                        <div class="join-group">
                            <label>Password Check</label>
                            <input type="password" class="form-control" placeholder="pw check" name="pwCheck"> 
                        </div>

                        <div class="join-group">
                            <label>Name</label>
                            <input type="text" class="form-control"  name="name" autocomplete="off"> 
                        </div>
                        

                        <div class="join-group">
                            <label>Phone number</label>
                            <input type="text" class="form-control" name="phone" autocomplete="off">
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email">
                        </div>
                        

                        <div class="join-btn">
                            <input type="button"  value="join" class="btn btn-primary btn-block" onclick="check()">
                          
                            <input type="button" value="home" class="btn btn-primary btn-block"  onclick="location.href='index.jsp'">
                        </div>
                        
                         <script>
                        
                        function check() {
                        	if(document.regForm.id.value.length < 4) {
                        		alert("아이디는 4글자 이상입니다 ");
                        		document.regForm.id.focus();
                        		return; 
                        	} else if(document.regForm.pw.value.length < 4) {
                        		alert("비밀번호는 4글자 이상입니다 ");
                        	    document.regForm.pw.focus();
                        	    return;
                        	} else if (document.regForm.pw.value != document.regForm.pwCheck.value) {
                        		alert("비밀번호와 다릅니다 확인부탁드려요 ");
                        		document.regForm.pwCheck.focus();
                        		return;
                        	} else if(document.regForm.name.value =="") {
                        		alert("이름은 필수사항입니다!");
                        		document.regForm.name.focus();
                        		return;
                        	} else {
                        		document.regForm.submit();
                        	}
                        }
                        </script>
                        
                    
                       

                        </div>
                        
                       
                    </form>
                    
                </div>
            </div>
        </div>
        

    </section>
 
 
 <%@ include file ="include/footer.jsp" %>
 
 
 