using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Client.ServiceReference;

namespace Client
{
    class Program
    {
        static void Main(string[] args)
        {
            using (CalculatorServiceClient proxy = new CalculatorServiceClient())
            {
                Console.WriteLine("x + y = {0}", proxy.Add(1, 2));
            }

            Console.Read();
        }
    }
}
