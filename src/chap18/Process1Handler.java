package chap18;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Process1Handler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response){
		return "프로세스 1";
	}

}
