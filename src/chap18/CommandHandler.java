package chap18;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandHandler {
	public String 
	    process(HttpServletRequest request
	    		, HttpServletResponse response);
}
