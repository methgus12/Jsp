/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.45
 * Generated at: 2021-05-17 04:50:20 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/user/../include/footer.jsp", Long.valueOf(1620898899000L));
    _jspx_dependants.put("/user/../include/header.jsp", Long.valueOf(1621227017000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write(" <!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"content-type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"styleshseet\" href=\"css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/custom.css\">\n");
      out.write("        <title>BBS Test</title>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!--메인만 적용되는 css영역-->   \n");
      out.write("        <style>\n");
      out.write("        \n");
      out.write("       \n");
      out.write('\n');
      out.write("     \n");
      out.write("@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');\n");
      out.write("\n");
      out.write("*{font-family: 'Black Han Sans', sans-serif;}\n");
      out.write("\n");
      out.write("\n");
      out.write(".button {\n");
      out.write("   display: inline-block;\n");
      out.write("   color: black;\n");
      out.write("   text-align: center;\n");
      out.write("   border: 1px solid black;\n");
      out.write("   background-color: white;\n");
      out.write("   transition: all;\n");
      out.write("   \n");
      out.write("}\n");
      out.write(".button:hover{background-color:black}\n");
      out.write(".button:hover{color:white;}\n");
      out.write("\n");
      out.write("            body {\n");
      out.write("                background-image: url(images/headerback.png);\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover\n");
      out.write("            }\n");
      out.write("            \n");
      out.write(" \n");
      out.write("           \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("         <style>\n");
      out.write("\n");
      out.write("        .wrap {\n");
      out.write("            width: 80%;\n");
      out.write("            height: 400px;\n");
      out.write("            margin: 0 auto;\n");
      out.write("            text-align: center;\n");
      out.write("\n");
      out.write("        }\n");
      out.write("        .menu {\n");
      out.write("            margin: 0 auto;\n");
      out.write("            background-color : black;\n");
      out.write("            border: 1px solid white;\n");
      out.write("            color : white;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("    <nav class=\"navbar navbar-default\" id=\"nav\">\n");
      out.write("        <div class=\"navbar-header\">\n");
      out.write("            <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-expanded=\"false\">\n");
      out.write("                <span class=\"icon-bar\"></span>\n");
      out.write("                <span class=\"icon-bar\"></span>\n");
      out.write("                <span class=\"icon-bar\"></span>\n");
      out.write("            </button>\n");
      out.write("            <a class=\"navbar-brand\" href=\"##\">bolt park</a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("            <ul class=\"nav navbar-nav\">\n");
      out.write("                <li class=\"active\"><a href=\"\" style=\"margin-right: 10px;\">bolt</a></li>\n");
      out.write("                <li><a href=\"##\">board</a></li>\n");
      out.write("            </ul>\n");
      out.write("            \n");
      out.write("            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                <li class=\"dropdown\">\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">WITH !<span class=\"caret\"></span></a>\n");
      out.write("                    <ul class=\"dropdown-menu\">\n");
      out.write("                        <li><a href=\"../user/login.jsp\">LOGIN</a></li>\n");
      out.write("                        <li><a href=\"../user/join.jsp\">JOIN US</a></li>\n");
      out.write("                        <li><a href=\"../user/mypage.jsp\">MYPAGE</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("       \n");
      out.write("        </div>\n");
      out.write("    </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("<section>\n");
      out.write("  <div align=\"center\">\n");
      out.write("   <h2>로그인 하기</h2>\n");
      out.write("   <hr/>\n");
      out.write("   \n");
      out.write("   \n");
      out.write("   <form action =\"login_ok.jsp\" method=\"post\">\n");
      out.write("      <input type =\"text\" name =\"id\" placeholder=\"ID \"><br><br>\n");
      out.write("      <input type =\"password\" name=\"pw\" placeholder=\"PW\"><br><br>\n");
      out.write("      \n");
      out.write("      <input type =\"submit\"  value=\"로그인\" class=\"button\">\n");
      out.write("      <input type =\"button\" value =\"회원가입하기\" class=\"button\" onclick=\"location.href='join.jsp'\">\n");
      out.write("      \n");
      out.write("\n");
      out.write("   \n");
      out.write("   </form>\n");
      out.write("\n");
      out.write("  \n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</section>\n");
      out.write(" \n");
      out.write(" <footer>\n");
      out.write("        <div class=\"copyright py-4 text-center text-white\">\n");
      out.write("            <div class=\"container bounceIn animate\">\n");
      out.write("                <small>Copyright<!-- &copy; --> 2021.<a href=\"\"> Sohyeon</a></small>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer>\n");
      out.write("    \n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.1.1.min.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.js\"></script>\n");
      out.write("    \n");
      out.write("    </body>\n");
      out.write("    </html>\n");
      out.write("  ");
      out.write('\n');
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
