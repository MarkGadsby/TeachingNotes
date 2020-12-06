## Object-Orientated Programming - Part Two

#### See the code below from last week.

```
namespace Shapes
{
	public class Square
	{
		// private member variable
		private double lenSides;

		// This is the constructor for the Square class
		public Square(double given_lenSides)
		{
			lenSides = given_lenSides;
		}

		// Function called getArea that will return the 
		// area of the shape is a double precision floating point number
		public double getArea()
		{
			return lenSides * lenSides;  
		}
	}
}
```

#### Remind yourself how it works and note that I have changed the data type of the member variable from int to double. 

#### Here is the calling code:

```
using System;

namespace Shapes
{
	class Program
	{
		static void Main(string[] args)
		{
			Square square_1 = new Square(10);
			Console.WriteLine("The area of square_1:\t" + square_1.getArea());

			Square square_2 = new Square(1.1);
			Console.WriteLine("The area of square_2:\t" + square_2.getArea());

			Square square_3 = new Square(30);
			Console.WriteLine("The area of square_3:\t" + square_3.getArea());
		}
	}
}
```

#### Add classes and calling code for the additional shapes: Circle, Triangle and Hexagon. Please use a separate file for each.