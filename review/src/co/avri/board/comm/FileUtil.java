package co.avri.board.comm;

import javax.servlet.http.Part;

public class FileUtil {

// 파일이름 잘라내서 추출하는 메소드
	public static String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition"); // 이거설명몰라..
		String[] items = contentDisp.split(";"); // ;로 잘라서 배열로 받아내겠다는뜻
		for (String s : items) {
			if (s.trim().startsWith("filename")) { // filename으로 시작하는 String 찾아서 잘라내고 = 찾아서 그 다음부터 파일명만 읽어내서(length -1)
													// 리턴
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		return "";
	}
}
