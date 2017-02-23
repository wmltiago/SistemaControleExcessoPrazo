package controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import model.presidio.Presidio;
import model.presidio.PresidioDao;

@Controller
public class PresidioController {

	@RequestMapping("/exibirCadastrarPresidio")
	public String exibirIncluirPresidio() {

		return "presidio/CadastroPresidio";
	}

	//inclusao do @Valid, BindingResult result e do if para retornar ao exibirCadastrarPresidio//
	@RequestMapping("/cadastrarPresidio")
	public String incluirPresidio(@Valid Presidio presidio, BindingResult result) {

		if (result.hasErrors()) {
			return "forward:exibirCadastrarPresidio";
		}

		PresidioDao dao = new PresidioDao();
		dao.salvar(presidio);

		return "presidio/CadastroPresidioSucesso";
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

	@RequestMapping("/alterarPresidio")
	public String alterarPresidio(Presidio presidio) {

		PresidioDao dao = new PresidioDao();
		dao.alterar(presidio);

		return "presidio/AlterarPresidio";

	}

}
