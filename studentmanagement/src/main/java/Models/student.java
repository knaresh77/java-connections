package Models;

public class student {
	private String Rollno;
	private String name;
	private String email;
	private String branch;
	public String getRollno() {
		return Rollno;
	}
	public void setRollno(String rollno) {
		Rollno = rollno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public student(String rollno, String name, String email, String branch) {
		super();
		Rollno = rollno;
		this.name = name;
		this.email = email;
		this.branch = branch;
	}
	public student() {
		super();
		
	}
	

}
