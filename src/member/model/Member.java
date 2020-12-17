package member.model;

import java.util.Date;

public class Member {

	private String id;
	private String name;
	private String pw;
	private Date regDate;

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public boolean matchPassword(String pwd) {
		return pw.equals(pwd);
	}
	public void changePassword(String newPwd) {
		this.pw = newPwd;
	}
	
}
