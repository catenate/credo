using System;

namespace Arapiki.Greeters {
	public class GoodBye {
		private string words;

		public GoodBye(string message) {
			this.words = message;
		}

		public void speak() {
			Console.WriteLine("GoodBye {0}", words);
		}
	}

	public class Farewell {
		private string words;

		public Farewell(string message) {
			this.words = message;
		}

		public void speak() {
			Console.WriteLine("Farewell {0}", words);
		}
	}
}
