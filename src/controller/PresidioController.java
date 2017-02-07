package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Presidio;
import model.PresidioDao;

@Controller
public class PresidioController {
	
	@RequestMapping("/exibirCadastrarPresidio")
	public String exibirIncluirProduto() {

		return "presidio/CadastroPresidio";
	}

	@RequestMapping("/cadastrarPresidio")
	public String incluirProduto(Presidio presidio) {

		PresidioDao dao = new PresidioDao();
		dao.salvar(presidio);

		return "presidio/CadastroPresidioSucesso";
	}

}
