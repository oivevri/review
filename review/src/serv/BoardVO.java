package serv;

public class BoardVO {
	String no;
	String title;
	String content;
	
	// 생성자
	public BoardVO() {} // 디폴트생성자
	public BoardVO(String no, String title, String content) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
	}


	// 게터세터
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
