package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.usuario.Usuario;
import model.usuario.UsuarioDao;

@Controller
public class UsuarioController {

	@RequestMapping("/removerUsuario")
	public String removerUsuario(Usuario usuario, Model model ) {

		UsuarioDao dao = new UsuarioDao();
		dao.remover(usuario.getId());
		model.addAttribute("Usuario Removido com Sucesso");

		return "forward:listarProduto";
	}

	@RequestMapping("/listarUsuario")
	public ModelAndView listarUsuario() {UsuarioDao dao = new UsuarioDao();
	List<Usuario> listaUsuario = dao.listar();
	ModelAndView mv = new ModelAndView("usuario/pesquisarProduto" );
	mv.addObject("listaProduto", listaUsuario);
	return mv; 
	}	
}
