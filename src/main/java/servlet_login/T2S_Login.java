    package servlet_login;
     
    import java.io.IOException;
     
    import javax.servlet.RequestDispatcher;
    import javax.servlet.ServletException;
    import javax.servlet.http.HttpServlet;
    import javax.servlet.http.HttpServletRequest;
    import javax.servlet.http.HttpServletResponse;
     
    public class T2S_Login extends HttpServlet {
    	private static final long serialVersionUID = 1L;
     
        public T2S_Login() {
            super();
            
        }
     
    	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		// TODO Auto-generated method stub
    		String username = request.getParameter("username");
    		String password = request.getParameter("password");
    		if(username.isEmpty() || password.isEmpty() )
    		{
    			RequestDispatcher req = request.getRequestDispatcher("login.jsp");
    			req.include(request, response);
    		}
    		else
    		{
    			RequestDispatcher req = request.getRequestDispatcher("cadastrocontainer.jsp");
    			req.forward(request, response);
    		}
    	}
     
    }