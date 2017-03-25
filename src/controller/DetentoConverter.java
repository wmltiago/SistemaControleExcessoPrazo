package controller;

import org.springframework.core.convert.converter.Converter;

import model.detento.Detento;
import model.detento.DetentoDao;

public class DetentoConverter implements Converter<String, Detento> {
	
	
public Detento convert(String id){
		
	DetentoDao dao = new DetentoDao();
		return dao.buscarPorId(Integer.valueOf(id));
	
	}
	
	

}
