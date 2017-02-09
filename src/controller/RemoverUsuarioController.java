package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import model.usuario.Usuario;
import model.usuario.UsuarioDao;

@Controller
public class RemoverUsuarioController {
	
	@RequestMapping("/RemoverUsuario")
	public String incluirProduto(Usuario usuario) {

		UsuarioDao dao = new UsuarioDao();
		dao.remover(usuario.getId());

		return "usuario/RemoverUsuarioSucesso";
	}
	

}
