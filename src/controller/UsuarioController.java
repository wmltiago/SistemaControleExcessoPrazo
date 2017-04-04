package controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import model.usuario.TipoUsuario;
import model.usuario.TipoUsuarioDao;
import model.usuario.Usuario;
import model.usuario.UsuarioDao;

@Controller
public class UsuarioController {
	
	@RequestMapping("/exibirCadastrarUsuario2")
	public String exibirCadastrarUsuario2(Model model) {

		// Codigo para popular o combo de categoria de produto
		TipoUsuarioDao dao = new TipoUsuarioDao();
		List<TipoUsuario> listaTipoUsuario = dao.listar();
		model.addAttribute("listaTipoUsuario", listaTipoUsuario);

		return "usuario/teste";

	}

	@RequestMapping("/exibirCadastrarUsuario")
	public String exibirCadastrarUsuario(Model model) {

		// Codigo para popular o combo de categoria de produto
		TipoUsuarioDao dao = new TipoUsuarioDao();
		List<TipoUsuario> listaTipoUsuario = dao.listar();
		model.addAttribute("listaTipoUsuario", listaTipoUsuario);

		return "usuario/CadastrarUsuario2";

	}

	@RequestMapping("/CadastrarUsuario2")
	public String incluirUsuario(@Valid Usuario usuario, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "forward:exibirCadastrarUsuario";
		} else {

			UsuarioDao dao = new UsuarioDao();
			dao.salvar(usuario);
			model.addAttribute("msg", "O usu√°rio " + usuario.getNomeUsuario() + " foi cadastrado com sucesso !");

			return "usuario/CadastrarUsuario2";
		}
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

		// if (usuario.getTipoUsuarioEnum() == TipoUsuarioE.ADMINISTRADOR){
		//
		// }

		UsuarioDao dao = new UsuarioDao();
		dao.remover(usuario);
		model.addAttribute("mensagem", "Usu√°rio Removido com Sucesso");

		return "forward:listarUsuario";
	}

	@RequestMapping("exibirAlterarUsuario")
	public String exibirAlterarUsuario(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();

		Usuario usuarioCompleto = dao.buscarPorId(usuario.getId());
		model.addAttribute("usuario", usuarioCompleto);

		// Codigo para popular o combo de categoria de produto
		TipoUsuarioDao dao2 = new TipoUsuarioDao();
		List<TipoUsuario> listaTipoUsuario = dao2.listar();
		model.addAttribute("listaTipoUsuario", listaTipoUsuario);

		return "usuario/AlterarUsuario2";
	}

	@RequestMapping("/AlterarUsuario2")
	public String alterarUsuario(Usuario usuario, Model model) {

		UsuarioDao dao = new UsuarioDao();
		dao.alterar(usuario);
		model.addAttribute("mensagem", "O usuario " + usuario.getNomeUsuario() + " foi alterado com sucesso !");

		return "forward:listarUsuario";
	}

	@RequestMapping("pesquisarUsuario")
	public String pesquisarUsuario(Usuario usuario, Model model) {
		
		UsuarioDao dao2 = new UsuarioDao();
		
		List<Usuario> listaUsuario = dao2.pesquisar(usuario);
		model.addAttribute("listaUsuario", listaUsuario);

		return "usuario/ListarUsuario2";
	}
	
	
	@RequestMapping("/exibirFazerLogin")
	public String exibirFazerLogin(Model model) {

		
		return "index/login";

	}
	
	@RequestMapping("efetuarLogin")
	public String efetuarLogin(Usuario usuario, HttpSession session	, Model model) {
		
	UsuarioDao dao = new UsuarioDao();
	Usuario usuarioLogado = dao.buscarUsuario(usuario);
	
	if (usuarioLogado != null) {
	session.setAttribute("usuarioLogado", usuarioLogado);
	return "usuario/teste";
	}
	model.addAttribute("msg", "N„o foi encontrado um usu·rio com o login e 	senha informados.");
	return "index/login";
	}
	
}
