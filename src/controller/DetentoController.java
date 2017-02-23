package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import model.detento.Detento;
import model.detento.DetentoDao;



@Controller
public class DetentoController {

	@RequestMapping("/exibirCadastrarDetento")
	public String exibirIncluirDetento() {

		return "detento/CadastroDetento";
	}

	@RequestMapping("/cadastrarDetento")
	public String incluirDetento(Detento detento) {

		DetentoDao dao = new DetentoDao();
		dao.salvar(detento);

		return "detento/CadastroDetentoSucesso";
	}
	
	
	
	
	@RequestMapping("/listarDetento")
	public String listarDetento( Model model){
		
		DetentoDao dao = new DetentoDao();
		
		List<Detento> listaDetento = dao.listar();
		
		
		model.addAttribute("listaDetento", listaDetento);

		return "detento/pesquisarDetento";
	}
		
		
		@RequestMapping("/alterarDetento")
		public String alterarDetento(Detento detento) {

			//PresidioDao dao = new PresidioDao();
			//dao.alterar(presidio);

			return "detento/AlterarDetento";
				
		
	}
		 @RequestMapping("/removerDetento")
		    public String removerDetento(int id, Model model) {

			DetentoDao dao = new DetentoDao();
			dao.remover(id);
			model.addAttribute("msg", "Detento Removido com Sucesso !");

			return "forward:listarDetento";
		    }
	
	
}
