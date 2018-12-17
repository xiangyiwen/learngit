package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet{
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String piccod=(String)request.getSession().getAttribute("piccode");//获得到原来的验证码信息
        String checkcode=request.getParameter("checkcode");//获取前台用户输入的数
        response.setContentType("text/html;charset=gbk");//防止乱码
        PrintWriter out=response.getWriter();//获得输出流
        if(piccod.equals(checkcode)){
            response.sendRedirect("http://localhost:8080/register.jsp");  //要写完整域名，不然默认在这个包里面
        }else{
            response.sendRedirect("http://localhost:8080/Failure.jsp");

        }
        out.flush();//刷新
        out.close();
    }
}
