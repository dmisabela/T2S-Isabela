    package servlet_register;
     
    import java.io.IOException;
     
    import javax.servlet.RequestDispatcher;
    import javax.servlet.ServletException;
    import javax.servlet.http.HttpServlet;
    import javax.servlet.http.HttpServletRequest;
    import javax.servlet.http.HttpServletResponse;
   
    public class T2S_Register extends HttpServlet {
    	private static final long serialVersionUID = 1L;
           
        
         protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    		
    		String first_name = request.getParameter("first_name");
    		String last_name = request.getParameter("last_name");
    		String username = request.getParameter("username");
    		String password = request.getParameter("password");
    		
    		if(first_name.isEmpty() || last_name.isEmpty() || username.isEmpty() || 
    				password.isEmpty())
    		{
    			RequestDispatcher req = request.getRequestDispatcher("register.jsp");
    			req.include(request, response);
    		}
    		else
    		{
    			RequestDispatcher req = request.getRequestDispatcher("login.jsp");
    			req.forward(request, response);
    		}
    	}
     
    }