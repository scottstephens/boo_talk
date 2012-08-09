using System;

namespace ClassExample
{
	public class Adder
	{
		protected int _addend;

		public Adder(int addend)
		{
			_addend = addend;
		}

		public int addit(int input)
		{
			return _addend + input;
		}
	}

	public class ClassExample
	{
		public static void Main(string[] args)
		{
			var a = new Adder(4);
			Console.WriteLine(a.addit(5));
		}

	}

}
