package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.usuario.Usuario;
import model.usuario.UsuarioDao;

@Controller
public class UsuarioController {
	
	
	@RequestMapping("/exibirCadastrarUsuario")
	public String exibirCadastrarUsuario() {

		return "usuario/CadastrarUsuario2";
	}

	@RequestMapping("/CadastrarUsuario2")
	public String incluirUsuario(Usuario usuario,  Model model) {

		

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

		return "usuario/ListarUsuario2";
	}	
	
	@RequestMapping("removerUsuario")
	public String removerUsuario(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();
		dao.remover(usuario);
		model.addAttribute("mensagem", "Usuário Removido com Sucesso");

		return "forward:listarUsuario";
	}
	
	@RequestMapping("exibirAlterarUsuario")
	public String exibirAlterarUsuario(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();
		
		Usuario usuarioCompleto = dao.buscarPorId(usuario.getId());
		model.addAttribute("usuario", usuarioCompleto);

		

		return "usuario/AlterarUsuario2";
	}
	
	@RequestMapping("/AlterarUsuario2")
	public String alterarUsuario(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();
		dao.alterar(usuario);
		model.addAttribute("mensagem", "O usuario " + usuario.getNome() + " foi alterado com sucesso !");

		return "forward:listarUsuario";
	}
	
}
