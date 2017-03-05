package controller;

import org.springframework.core.convert.converter.Converter;

import model.usuario.TipoUsuario;
import model.usuario.TipoUsuarioDao;



public class TipoUsuarioConverter implements Converter<String, TipoUsuario>{
	
	public TipoUsuario convert(String id) {

		TipoUsuarioDao dao = new TipoUsuarioDao();
		return dao.buscarPorId(Integer.valueOf(id));
	}

}
