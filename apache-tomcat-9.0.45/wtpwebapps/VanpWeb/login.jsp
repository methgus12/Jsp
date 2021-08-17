<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ include file ="include/header.jsp" %>
 
 <section>
        <div class="container">
            <div class="row">
                <aside class="col-md-6">
                    <form action="login_ok.jsp" method="post" class="box" >
                        <div class="form-login">
                            <label for="">ID</label>
                            <input type="text" class="form-control" name="id" autocomplete="off">
                        </div>

                        <div class="form-login">
                            <label for="">PASSWORD</label>
                            <input type="password" class="form-control" name="pw" autocomplete="off">
                        </div>
                        
                         <input type ="submit" value="Login" class="btn btn-primary btn-block" >
                         <input type ="button" value="Forgot password" class="btn btn-primary btn-block" onclick="location.href='forgot.jsp'">
                       
                    </form>
                </aside>

                <aside class="col-md-6">
                    <div class="sub">
                        혹시 아직 회원이 아니신가요 ?<br>
                        가입하시면 더 많은 혜택을 누리실 수 있습니다 !
                    </div>

                    <input type ="button" value="Join" class="btn btn-primary btn-block" onclick="location.href='join.jsp'">
                </aside>
            </div>
        </div>
    </section>
    
 
 <%@ include file ="include/footer.jsp"%>