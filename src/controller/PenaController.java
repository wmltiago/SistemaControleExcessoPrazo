package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.pena.Pena;
import model.pena.PenaDao;

@Controller
public class PenaController {

	@RequestMapping("/exibirCadastrarPenaPresidio")
	public String exibirIncluirPena() {

		return "pena/cadastroPenaPresidio";
	}
	
	
	@RequestMapping("cadastroPenaPresidio")
	public String incluirPena(Pena pena, Model model) {

		PenaDao dao = new PenaDao();
		dao.salvar(pena);
		
		model.addAttribute("mensagem","A pena " + pena.getNomePena() + 
												" foi inserida com sucesso!");
		
		//System.out.println("Pena inserida com SUCESSO!");
		
		return "Sucesso";
		
	}

}
