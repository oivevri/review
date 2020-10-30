package stream;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import co.avri.board.comm.FileUtil;

@WebServlet("/UploadServ")
@MultipartConfig(maxFileSize=1024*1024*2  	//size of any uploaded file
,maxRequestSize = 1024*1024*10  //overall size of all uploaded files
,location="d:/img"
,fileSizeThreshold = 1024
)
public class UploadServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UploadServ() {
        super();

    }
// 폼이 포스트방식이라서 doPost만 냅둔다
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 한글깨짐방지
		
		// *게시글 파라미터를 vo에 담고????
		// vo.setTitle(request.getParameter("title"));
		
		// 첨부파일 담고
	// 업로드 위치를 현재 컨텍스트context에 <img src="/review/images/a.jpg"
		String appPath = request.getServletContext().getRealPath("/images"); // 실제경로를 읽어온다
		System.out.println(appPath);
		
// 보드는 1개고 첨부파일 여러개라면 순서가 달라짐
		// board.insert(vo);
		
		
	// Part : 첨부파일 찾아가는것
		for (Part part : request.getParts()) {
// 첨부파일이 단건이라면 for문 돌 필요없고 Part part = request.getPart("file");.. 여튼 복수형을 다 단수형으로 바꿔줘(jsp에서도 multiple 속성 필요없음)
			String fileName = FileUtil.extractFileName(part); // 파트하나만 넘겨줘서 파일이름을 받으면
			if(!fileName.equals("")) {
				String uploadFile = appPath + File.separator + fileName; // 업로드할 위치에 파일있는지 체크
				File renameFile = FileRenamePolicy.rename(new File(uploadFile));// 파일명 중복체크 
				part.write(renameFile.getAbsolutePath());
				// *vo.setimg(renameFile.getName()); 첨부파일 이름을 담고 
				// filetable.insert(filevo); 이게 1대 다 관계
			}
		}
		// *dao.insert(vo); 인서트(인서트하기전에 첨부파일 이거 과정 다해줘야함)
	}

}
