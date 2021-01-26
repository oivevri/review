
public class Task2 implements Runnable {

	@Override
	public void run() {
		for (int i=3000; i<4000; i++) {
			System.out.println(i);
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
}
