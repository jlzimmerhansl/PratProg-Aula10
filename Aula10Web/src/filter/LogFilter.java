package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import model.Usuario;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/")
public class LogFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LogFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		HttpServletRequest reque = (HttpServletRequest) request;
		HttpSession session = reque.getSession();
		
		Usuario usuario = (Usuario) session.getAttribute("logado");
		
		if(usuario == null) {
			
			System.out.println(reque.getParameter("command"));
		}else {
			System.out.println(usuario.getUsername() + ">" + reque.getParameter("command"));
		}
		
		chain.doFilter(request, response);
		
		if(usuario == null) {
			System.out.println(reque.getParameter("command"));
		}else {
			System.out.println(reque.getParameter("command" + ">" + usuario.getUsername()));
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
