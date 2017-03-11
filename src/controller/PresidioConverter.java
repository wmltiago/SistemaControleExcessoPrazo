package controller;

import org.springframework.core.convert.converter.Converter;

import model.presidio.Presidio;
import model.presidio.PresidioDao;



public class PresidioConverter implements Converter<String ,Presidio> {

	
	public Presidio convert(String id){
		
		PresidioDao dao = new PresidioDao();
		return dao.buscarPorId(Integer.valueOf(id));
	
	}

	

	
}
