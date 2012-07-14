using Arapiki.Greeters;

public class GreeterApp {
	public static void Main() {
		Hello h = new Hello("stranger");
		GoodBye g = new GoodBye("my friend");
		Farewell f = new Farewell("you fool");
		h.speak();
		g.speak();
		f.speak();
	}
}
