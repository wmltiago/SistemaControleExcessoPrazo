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
	
	
	@RequestMapping("/exibirCadastrarUsuario")
	public String exibirIncluirProduto() {

		return "usuario/CadastrarUsuario2";
	}

	@RequestMapping("/CadastrarUsuario2")
	public String incluirProduto(Usuario usuario,  Model model) {

		

		UsuarioDao dao = new UsuarioDao();
		dao.salvar(usuario);
		model.addAttribute("msg", "O usuário " + usuario.getNome() + " foi cadastrado com sucesso !");

		return "usuario/CadastrarUsuario2";
	}

	

	@RequestMapping("/listarUsuario")
	public String listarProduto(Model model) {

		UsuarioDao dao = new UsuarioDao();
		List<Usuario> listaUsuario = dao.listar();
		model.addAttribute("listaUsuario", listaUsuario);

		return "usuario/ListarUsuario";
	}	
	
	@RequestMapping("removerUsuario")
	public String removerUsuario(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();
		dao.remover(usuario);
		model.addAttribute("mensagem", "Usu�rio Removido com Sucesso");

		return "forward:listarUsuario";
	}
	
}
