
public class ThreadTest {
	public static void main(String[] args) {
		new Task1().start(); // 그 자체가 쓰레드를 상속받음
		new Thread(new Task2()).start(); // 인터페이스를 상속받아서 쓰레드로 실행
		new Thread( () -> {
			for (int i=2000; i<3000; i++) {
				System.out.println(i);
				try {
					Thread.sleep(500);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		} ).start();
	}
}
