package controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import model.usuario.TipoUsuario;
import model.usuario.TipoUsuarioDao;



@Controller
public class TipoUsuarioController {
	
	@RequestMapping("/exibirIncluirTipoUsuario")
	public String exibirIncluirTipoUsuario() {

		return "tipoUsuario/IncluirTipoUsuario";
	}

	@RequestMapping("IncluirTipoUsuario")
	public String incluirTipoUsuario(@Valid TipoUsuario tipoUsuario, BindingResult result, Model model) {

		if (result.hasErrors()) {
		    return "forward:exibirIncluirTipoUsuario";
		}
		
		TipoUsuarioDao dao = new TipoUsuarioDao();
		dao.salvar(tipoUsuario);
		model.addAttribute("msg", "O tipo usuário '" + tipoUsuario.getDescricao() + "' foi Inserido com Sucesso !");

		return "forward:exibirIncluirTipoUsuario"; //link //vou alterar pra voltar pra pag de inserir, mas é pra ir pro listarTipoUsuario
	}
	
	//-------------------------------------------------------------------------------------------------------------------------------------

	@RequestMapping("/listarTipoUsuario")
	public String listarTipoUsuario(Model model) {

		TipoUsuarioDao dao = new TipoUsuarioDao();
		List<TipoUsuario> listaTipoUsuario = dao.listar();
		model.addAttribute("listaTipoUsuario", listaTipoUsuario);

		return "tipoUsuario/PesquisarTipoUsuario";
	}
	
	//-------------------------------------------------------------------------------------------------------------------------------------

	@RequestMapping("removerTipoUsuario") //observar isso aqui
	public String removerTipoUsuario(TipoUsuario tipoUsuario, Model model) {

		TipoUsuarioDao dao = new TipoUsuarioDao();
		dao.remover(tipoUsuario);
		model.addAttribute("msg", "Tipo de usuário removido com sucesso !");

		return "forward:listarTipoUsuario";
	}
	
	//-------------------------------------------------------------------------------------------------------------------------------------

	@RequestMapping("exibirAlterarTipoUsuario")
	public String exibirAlterarTipoUsuario(TipoUsuario tipoUsuario, Model model) {

		TipoUsuarioDao dao = new TipoUsuarioDao();
		TipoUsuario tipoUsuarioPreenchida = dao.buscarPorId(tipoUsuario.getIdTipoUsuario());
		model.addAttribute("usuario", tipoUsuarioPreenchida);

		return "tipoUsuario/AlterarTipoUsuario";
	}

	@RequestMapping("AlterarTipoUsuario")
	public String alterarTipoUsuario(TipoUsuario tipoUsuario, Model model) {

		TipoUsuarioDao dao = new TipoUsuarioDao();
		dao.alterar(tipoUsuario);
		model.addAttribute("msg", "Tipo do Usuário Alterado com Sucesso !");

		return "forward:listarTipoUsuario";
	}

}
