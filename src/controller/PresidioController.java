package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	
	//=========== daivson - listar =======================//
	
	@RequestMapping("listarPresidio")
	public String listarPresidio( Model model){
		
		PresidioDao dao = new PresidioDao();
		
		List<Presidio> listaPresidio = dao.listar();
		
		
		model.addAttribute("listaPresidio", listaPresidio);

		return "presidio/pesquisarPresidio";
	
		//===================================================//
		
	}
	

}
