package stream;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileTest {

	public static void main(String[] args) {
		// 폴더생성 createDir();
		// 파일생성 createFile();
		// 목록보기 dirList();
		// 파일삭제 fileDelete();
		// 파일 복사 fileCopy(args[0],args[1]);
		// 파일내용 읽어오기
		//
		
		
	}
// 메소드로 빼고, 위에서 호출해주면 됨ㅇㅇ
	
// 폴더생성
	public static void createDir() {
		File dir = new File("d:/img");
		// new File 마지막스펠링에 커서 두고 crtl + space 눌러서 생성자 확인해봐
		// new File("d:/","img"); 이런식으로 상위폴더명 하위폴더명 따로적어도 됨
		dir.mkdir();
		// 어떤 경로 안에 하위폴더를 쭉 이어서 생성하고싶다면 mkdirs
	}
// 파일생성
	public static void createFile() {
		File file = new File("d:/img/", "data.txt");
		// createNewFile 는 반드시 예외처리해야하는 메소드임!!
		try {
			file.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
// 폴더 , 파일 리스트 메소드
	public static void dirList() {
		File dir = new File("d:/img");
		File[] list = dir.listFiles(); // listFiles 메소드는 리턴타입을 file로 받음
		for (File file : list) {
			System.out.println("파일명: " + file.getName());
			System.out.println("파일크기: " + file.getTotalSpace() + ", " + file.length());
			// 이렇게하면 .. 나오는거 차이가 뭐여..;;
		}
	}
	
// 폴더, 파일 삭제
	public static void fileDelete() {
		File file = new File("d:/img/", "data.txt");
		// delete : 폴더는 empty 빈폴더일때만 삭제가능. 삭제되었으면 true를 반환
		// deleteOnExit : 파일이 존재하지 않으면 에러를 예외처리
		file.delete();
	}
// 파일 복사
	public static void fileCopy(String src, String tar) {
		try { // 스트림 예외처리필요함
		// 인풋스트림 먼저써주면 트라이캐치 뜨고, 그다음에 아웃풋스트림 써준다
//			FileInputStream fis = new FileInputStream("d:/img/콜롬비아.jpg");
//			FileOutputStream fos = new FileOutputStream("d:/img/콜롬비아2.jpg");
		// 메인메소드에서 인수 arg 받아서 하는거 해보자
			FileInputStream fis = new FileInputStream(src);
			FileOutputStream fos = new FileOutputStream(tar);
			
			
		// 한번에 크게 읽어들이는게 빠르니까
			byte[] readBytes = new byte[100];
			int readCnt = 0;
			try {
				while ((readCnt = fis.read(readBytes)) != -1) {
					// 배열로 읽어.. 더이상 읽어낼게 없으면 아무것도 없을때 리턴값 -1임
					// 즉 readCnt 가 -1이 될때(읽어낼게 없을때)
					fos.write(readBytes, 0, readCnt); // 출력해라
				}
				// 스트림 열어주면 반드시 닫아야함
				fis.close();
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
}
