using System;

namespace Arapiki.Greeters {
	public class Hello {
		private string words;

		public Hello(string message) {
			this.words = message;
		}

		public void speak() {
			Console.WriteLine("Hello {0}", words);
		}
	}
}
