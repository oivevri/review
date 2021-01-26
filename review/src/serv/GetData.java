package serv;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/getData") // url에 맞춰서 g를 소문자로 바꿔주기
public class GetData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<BoardVO> list;
	
	// 샘플데이터
	@Override
	public void init(ServletConfig config) throws ServletException {
		list = new ArrayList<BoardVO>();
		list.add(new BoardVO("1","title1","content1"));
		list.add(new BoardVO("2","title2","content2"));
		list.add(new BoardVO("3","title3","content3"));
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// json 변환
		int no = Integer.parseInt(request.getParameter("no"));
		Gson gson = new Gson();
		String userJson = gson.toJson(list.get(no));
		response.getWriter().print(userJson);
	}
}
