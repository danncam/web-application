package net.webapp.entity;

public class StdLogin {

	protected int uid;
	protected String username;
	protected String password;
	protected boolean valid;
	
	public void setUserName(String username) {
		this.username = username;
	}
	
	public String getUsername() {
        return username;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	 public String getPassword() {
         return password;
	}
	 
	public boolean isValid() {
		
		return valid;
	}
	
	public void setValid(boolean value) {
        valid = value;
	}

	public int getUserID() {
		return uid;
	}

	public void setUserID(int uid) {
		this.uid = uid;
	}
}
