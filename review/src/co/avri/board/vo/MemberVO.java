package co.avri.board.vo;

public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private String img;
	
	public MemberVO() {
	}

	public MemberVO(String id, String name) {
		super();
		this.id = id;
		this.name = name;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
}
