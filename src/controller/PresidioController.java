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

import model.presidio.Presidio;
import model.presidio.PresidioDao;

@Controller
public class PresidioController {

	@RequestMapping("/exibirCadastrarPresidio")
	public String exibirIncluirPresidio() {

		return "presidio/CadastroPresidio";
	}

	// inclusao do @Valid, BindingResult result e do if para retornar ao
	// exibirCadastrarPresidio//
	@RequestMapping("/cadastrarPresidio")
	public String incluirPresidio(@Valid Presidio presidio, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "forward:exibirCadastrarPresidio";
		}

		model.addAttribute("msg", ": O Presídio <b>'" + presidio.getNomePresidio()+ "'</b> foi Cadastrado Com Sucesso!");
		PresidioDao dao = new PresidioDao();
		dao.salvar(presidio);

		return "presidio/CadastroPresidio";
	}

	// =========== daivson - listar =======================//

	@RequestMapping("listarPresidio")
	public String listarPresidio(Presidio presidio, Model model) {

		PresidioDao dao2 = new PresidioDao();
		PresidioDao dao = new PresidioDao();

		List<Presidio> listaPresidio = dao.listar();

		model.addAttribute("listaPresidio", listaPresidio);

		return "presidio/pesquisarPresidio";
	}

	// =========================================================//
	@RequestMapping("pesquisarPresidio")
	public @ResponseBody String pesquisarPresidio(@RequestParam String nomePresidio,
			@RequestParam String estadoPresidio, HttpServletResponse response) {

		PresidioDao dao2 = new PresidioDao();

		List<Presidio> listaPresidio = dao2.pesquisar(nomePresidio, estadoPresidio);

		StringBuilder st = new StringBuilder();
		st.append("<tr style='background-color: #E6E6E6; font-weight: bold;'>");
		st.append("<td> Nome </td>");
		st.append("<td> Estado </td>");

		st.append("</tr>");
		for (Presidio presidio : listaPresidio) {
			st.append("<tr>");
			st.append("<td> " + presidio.getNomePresidio() + " </td>");
			st.append("<td> " + presidio.getEstadoPresidio() + " </td>");

			st.append("<td>");
			st.append("<a href='exibirAlterarProduto?id=" + presidio.getIdPresidio() + "'>Editar</a> &nbsp;");
			st.append("<a href='removerProduto?id=" + presidio.getIdPresidio() + "'>Remover</a>");
			st.append("</td>");
			st.append("</tr>");
		}
		response.setStatus(200);
		return st.toString();
	}

	// ===================================================//

	@RequestMapping("exibirAlterarPresidio")
	public String exibirAlterarPresidio(Presidio presidio, Model model, int id) {

		PresidioDao dao = new PresidioDao();
		Presidio presidioCompleto = dao.buscarPorId(id);
		model.addAttribute("presidio", presidioCompleto);

		return "presidio/AlterarPresidio";

	}

	@RequestMapping("/alterarPresidio")
	public String alterarDetento(@Valid Presidio Presidio, BindingResult result, Model model) {

		if (result.hasErrors()) {
			return "forward:exibirCadastrarPresidio";
		}

		PresidioDao dao = new PresidioDao();
		dao.alterar(Presidio);
		model.addAttribute("msg", "O presidio " + Presidio.getNomePresidio() + " foi alterado com sucesso !");

		return "forward:listarPresidio";

	}

	@RequestMapping("/removerPresidio")
	public String removerPresidio(int id, Model model) {

		PresidioDao dao = new PresidioDao();
		dao.remover(id);
		model.addAttribute("msg", "Presidio Removido com Sucesso !");

		return "forward:listarPresidio";

	}
}
