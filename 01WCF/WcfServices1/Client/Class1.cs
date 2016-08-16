using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceModel;
using Service.Interface;

namespace Client
{
    class Program
    {
        static void Main(string[] args)
        {
            using (ChannelFactory<ICalculator> channelFactory = new ChannelFactory<ICalculator>(new WSHttpBinding(), "http://127.0.0.1:8023/CalculatorService.svc"))
            {
                ICalculator proxy = channelFactory.CreateChannel();
                Console.WriteLine("x + y = {0}", proxy.Add(1, 2));
            }

            Console.Read();
        }
    }
}
