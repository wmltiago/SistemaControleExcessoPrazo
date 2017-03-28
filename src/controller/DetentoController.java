package controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import model.detento.Detento;
import model.detento.DetentoDao;
import model.presidio.Presidio;
import model.presidio.PresidioDao;

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
	public String incluirDetento(@Valid Detento detento, BindingResult result, Model model) {

		if (result.hasErrors()) {
			
						
			return "forward:exibirCadastrarDetento";

		} else {

			DetentoDao dao = new DetentoDao();
			dao.salvar(detento);
			model.addAttribute("msg", "O detento" + detento.getNomeDetento() + "foi cadastrado com sucesso !");

			return "forward:exibirCadastrarDetento";
		}
	}

	@RequestMapping("/listarDetento")
	public String listarDetento(Model model) {

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
		List<Presidio> listaPresidio = dao2.listar();
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
	public String removerDetento(int id, Detento detento, Model model) {

		DetentoDao dao = new DetentoDao();
		dao.remover(id);
		model.addAttribute("msg", "Detento foi Removido com Sucesso !");

		return "forward:listarDetento";
	}

	@RequestMapping("/situacaoDetento")
	public String situacaoDetento(Model model) {

		DetentoDao dao = new DetentoDao();

		List<Detento> listaDetento = dao.listar();

		model.addAttribute("listaDetento", listaDetento);

		return "funcionalidade/visualizarStatusDetento";
	}

	@RequestMapping("pesquisandoDetento")
	public @ResponseBody String pesquisandoDetento(@RequestParam String nomeDetento, @RequestParam String cpfDetento,
			HttpServletResponse response) {

		DetentoDao dao2 = new DetentoDao();
		List<Detento> listaDetento = dao2.pesquisar(nomeDetento, cpfDetento);

		StringBuilder st = new StringBuilder();
		st.append("<tr style='background-color: #E6E6E6; font-weight: bold;'>");
		st.append("<td> Nome </td>");
		st.append("<td> CPF </td>");
		st.append("</tr>");
		
		for (Detento detento : listaDetento) {
			st.append("<tr>");
			st.append("<td> " + detento.getNomeDetento() + " </td>");
			st.append("<td> " + detento.getCpfDetento() + " </td>");
			st.append("<td>");
			
			st.append("<a href='exibirAlterarDetento?id=" + detento.getIdDetento() + "'>Editar</a> &nbsp;");
			st.append("<a href='removerDetento?id=" + detento.getIdDetento() + "'>Remover</a>");
			st.append("</td>");
			st.append("</tr>");
		}
		response.setStatus(200);
		return st.toString();

	}

}
