package chap08;

import java.io.Serializable;

public class MyBean {
	private String name;
	private int id;
	private boolean b;
	
	public String getFirstName() {
		return name.substring(0, 3);
	}
	
	public boolean isB() {
		return b;
	}
	public void setB(boolean b) {
		this.b = b;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
    
	
}
