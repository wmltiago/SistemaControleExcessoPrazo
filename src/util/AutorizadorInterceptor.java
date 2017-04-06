package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean 
	preHandle
	(HttpServletRequest request, HttpServletResponse response, Object controller) throws Exception {
		
		String uri = request.getRequestURI();
		if (uri.contains("bootstrapTiago") || uri.contains("css") || uri.contains("/scep") || uri.contains("js")  || uri.endsWith("efetuarLogin")) {
		return true;
		}  
		
		if (request.getSession().getAttribute("usuarioLogado") != null) {
			return true;
			}
	
	response.sendRedirect("index/login");
	return false;
	}
	

}
