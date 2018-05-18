package service;

import dao.UsuarioDAO;
import model.Usuario;

public class UsuarioService {
	
	UsuarioDAO usuariodao = new UsuarioDAO();
	
	public boolean validar(Usuario usuario) {
		return usuariodao.validar(usuario);
	}

}

