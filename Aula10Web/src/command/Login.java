package command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;
import service.UsuarioService;

public class Login implements Command{
	
@Override
	
	public void executar(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException  {
		
		String nome = request.getParameter("username");
		String senha = request.getParameter("password");
		
		Usuario usuario = new Usuario();
		usuario.setUsername(nome);
		usuario.setPassword(senha);
		
		
		UsuarioService usuarioservice = new UsuarioService();
		
		if(usuarioservice.validar(usuario)) {
			
			HttpSession session = request.getSession();
			session.setAttribute("logado", usuario);
			System.out.println("Usuário logado" + usuario);
			
		}else {
			
			System.out.println("Usuario não está logado" + usuario);
			throw new ServletException("Usuario ou senha invalido");
			
		}
		
		response.sendRedirect("index.jsp");
	}

	

}
