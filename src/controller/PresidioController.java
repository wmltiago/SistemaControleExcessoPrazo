package controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import model.detento.Detento;
import model.detento.DetentoDao;
import model.presidio.Presidio;
import model.presidio.PresidioDao;
import model.usuario.TipoUsuario;
import model.usuario.TipoUsuarioDao;
import model.usuario.Usuario;
import model.usuario.UsuarioDao;

@Controller
public class PresidioController {

	@RequestMapping("/exibirCadastrarPresidio")
	public String exibirIncluirPresidio() {




		return "presidio/CadastroPresidio";
	}

	//inclusao do @Valid, BindingResult result e do if para retornar ao exibirCadastrarPresidio//
	@RequestMapping("/cadastrarPresidio")
	public String incluirPresidio(@Valid Presidio presidio, BindingResult result,Model model) {

		model.addAttribute("msg", "Cadastrado Com Sucesso!" );
		PresidioDao dao = new PresidioDao();
		dao.salvar(presidio);

		return "presidio/CadastroPresidio";
	}

	// =========== daivson - listar =======================//

	@RequestMapping("listarPresidio")
	public String listarPresidio(Model model) {

		PresidioDao dao = new PresidioDao();

		List<Presidio> listaPresidio = dao.listar();

		model.addAttribute("listaPresidio", listaPresidio);

		return "presidio/pesquisarPresidio";
	}
	// ===================================================//

	@RequestMapping("exibirAlterarPresidio")
	public String exibirAlterarPresidio(Presidio presidio, Model model, int id) {

		PresidioDao dao = new PresidioDao();
		Presidio presidioCompleto = dao.buscarPorId(id);
		model.addAttribute("presidio", presidioCompleto);

		PresidioDao dao2 = new PresidioDao();
		List<Presidio> listaPresidio= dao2.listar();
		model.addAttribute("listaPresidio", listaPresidio);


		return "presidio/AlterarPresidio";

	}

	@RequestMapping("/alterarPresidio")
	public String alterarDetento(Presidio Presidio, Model model) {

		PresidioDao dao = new PresidioDao();
		dao.alterar(Presidio);
		model.addAttribute("msg", "O presidio " + Presidio.getNomePresidio() + " foi alterado com sucesso !");

		return "forward:pesquisarPresidio";

	}

	@RequestMapping("/removerPresidio")
    public String removerPresidio(int id, Model model) {

	PresidioDao dao = new PresidioDao();
	dao.remover(id);
	model.addAttribute("msg", "Presidio Removido com Sucesso !");

	return "forward:pesquisarPresidio";
   
	}
}
