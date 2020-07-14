package chap11;

import java.util.Collection;

public class MyUtil {
	public static int length(Object o) {
		Collection c = null;
		if (o instanceof Collection) {
			c = (Collection) o;
		} else {
			return 0;
		}
		
		return c.size();
	}
}
