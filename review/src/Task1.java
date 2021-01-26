
public class Task1 extends Thread {

	@Override
	public void run() {
		for(int i=0; i<1000; i++) {
			System.out.println(i);
			try {
				sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}

}
