package net.webapp.entity;

public class StdLogin {

	private int uid;
	private String username;
	private String password;
	private String firstName;
    private String lastName;
	private boolean valid;
	
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

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getUserID() {
		return uid;
	}

	public void setUserID(int uid) {
		this.uid = uid;
	}
}
