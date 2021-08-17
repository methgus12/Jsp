package boardmodel;

import java.sql.Timestamp;

public class BoardVO {
	
	private int bno;
	private String title;
	private String id;
	private Timestamp resdate;
	
	public BoardVO() {
		
	}
	
	
	public BoardVO(int bno, String title, String id, Timestamp resdate) {
		super();
		this.bno = bno;
		this.title = title;
		this.id = id;
		this.resdate = resdate;
	}


	public int getBno() {
		return bno;
	}


	public void setBno(int bno) {
		this.bno = bno;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public Timestamp getResdate() {
		return resdate;
	}


	public void setResdate(Timestamp resdate) {
		this.resdate = resdate;
	}
	
	
	
}
