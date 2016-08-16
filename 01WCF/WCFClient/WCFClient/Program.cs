using System;
using System.ServiceModel;
using IService;

namespace WCFClient
{
    class Program
    {
        static void Main(string[] args)
        {
            using(ChannelFactory<ICalculator> channelFactory = new ChannelFactory<ICalculator>("calculatorservice"))
            {
                ICalculator proxy = channelFactory.CreateChannel();
                Console.WriteLine("3 + 1 = {0}", proxy.Add(3, 1));
            }
            Console.Read();
        }
    }
}
