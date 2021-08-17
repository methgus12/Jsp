package Controller;
import java.sql.Timestamp;

public class TestVO {
	
	private String id ;
	private String pw;
	private String name;
	private String dog;
	private Timestamp regdate;
	
	
	public TestVO() {
		
	}


	public TestVO(String id, String pw, String name, String dog, Timestamp regdate) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.dog = dog;
		this.regdate = regdate;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getDog() {
		return dog;
	}


	public void setDog(String dog) {
		this.dog = dog;
	}


	public Timestamp getRegdate() {
		return regdate;
	}


	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
	
	
}
