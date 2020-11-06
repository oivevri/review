package jstl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.avri.board.vo.MemberVO;

@WebServlet("/JstlTestServ")
public class JstlTestServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public JstlTestServ() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// Map
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("name", "홍길동");
		map.put("hobby", new String[] {"게임","독서"});
		map.put("job", "개발,디자인,퍼블리셔,기획");
		request.setAttribute("map", map); // map 객체를 "map"이라는 변수로 담아
		
		// Vo
		request.setAttribute("member", new MemberVO("kim", "김유신"));
		
		// session에 담아보자
		request.getSession().setAttribute("member", new MemberVO("kang", "강감찬"));
		
		// List
		ArrayList<MemberVO> list = new ArrayList<>();
		list.add(new MemberVO("jeon", "전우치"));
		list.add(new MemberVO("lee", "이순신"));
		list.add(new MemberVO("park", "박혁거세"));
		request.setAttribute("memberList", list);
		
		// 쿠키 저장
		Cookie cookie = new Cookie("popupYn", "y");
		cookie.setMaxAge(60*60*24*365); // 쿠키 유지시간을 초단위로 설정가능 => 초*분*시*일 곱한것. .즉 1년동안 유지하겠다고 설정ㅎ산것
		cookie.setPath("/"); // 지정한 페이지에서 접근하는 경우에만 쿠키를 유지하겠다 => / 적은건 localhost 바로에서 적은거 라는거
		response.addCookie(cookie);// 쿠키가 저장되는 위치는 클라이언트라서.. 응답에 실어보내는거
		
		// 배열을 만들어서 넘겨보자
		request.setAttribute("goods", new Integer[]{100, 200, 300});
		
		
		request.getRequestDispatcher("/jstlTestView.jsp").forward(request, response); // 넘어갈 페이지
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
