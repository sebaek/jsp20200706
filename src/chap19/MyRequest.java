package chap19;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class MyRequest extends HttpServletRequestWrapper {
	public MyRequest(HttpServletRequest request) {
		super(request);
	}

	@Override
	public String getParameter(String name) {
		if (name.equals("name")) {
			String n = super.getParameter("name");
			if (n == null) {
				return "default name";
			} else {
				return n;
			}
		}
		
		return super.getParameter(name);
	}
}
