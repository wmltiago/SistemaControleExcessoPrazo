package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import model.detento.Detento;
import model.detento.DetentoDao;
import model.presidio.Presidio;
import model.presidio.PresidioDao;
import model.usuario.Usuario;
import model.usuario.UsuarioDao;



@Controller
public class DetentoController {

	@RequestMapping("/exibirCadastrarDetento")
	public String exibirIncluirDetento(Model model) {
		PresidioDao dao = new PresidioDao();

		List<Presidio> listaPresidio = dao.listar();

		model.addAttribute("listaPresidio", listaPresidio);

		return "detento/CadastroDetento";
	}
	@RequestMapping("/CadastrarDetento")
	public String incluirDetento(Detento detento,  Model model) {

		DetentoDao dao = new DetentoDao();
		dao.salvar(detento);
		model.addAttribute("msg", "O detento"+ detento.getNomeDetento()+ "foi cadastrado com sucesso !");

		return "forward:exibirCadastrarDetento";
	}

	
	
	
	
	@RequestMapping("/listarDetento")
	public String listarDetento(Model model){
		
		DetentoDao dao = new DetentoDao();
		
		List<Detento> listaDetento = dao.listar();
		
		
		model.addAttribute("listaDetento", listaDetento);

		return "detento/pesquisarDetento";
	}
		
		
	@RequestMapping("exibirAlterarDetento")
	public String exibirAlterarDetento(Detento detento, Model model, int id) {

		DetentoDao dao = new DetentoDao();
		Detento detentoCompleto = dao.buscarPorId(id);
		model.addAttribute("detento", detentoCompleto);

		PresidioDao dao2 = new PresidioDao();
		List<Presidio> listaPresidio= dao2.listar();
		model.addAttribute("listaPresidio", listaPresidio);
		

		return "detento/AlterarDetento";
	}
	@RequestMapping("/alterarDetento")
	public String alterarDetento(Detento detento, Model model) {

		DetentoDao dao = new DetentoDao();
		dao.alterar(detento);
		model.addAttribute("msg", "O Detento " + detento.getNomeDetento() + " foi alterado com sucesso !");

		return "forward:listarDetento";
	}
	
		 @RequestMapping("/removerDetento")
		    public String removerDetento(int id, Detento detento Model model) {

			DetentoDao dao = new DetentoDao();
			dao.remover(id);
			model.addAttribute("msg", "Detento foi Removido com Sucesso !");

			return "forward:listarDetento";
		    }
	
	
}
