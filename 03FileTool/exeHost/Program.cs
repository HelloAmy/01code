using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Com.Amy.Database;

namespace FileTool
{
    class Program
    {
        static void Main(string[] args)
        {
            while (true)
            {
                Console.WriteLine("---------------------------------------------------------------");
                Console.Write("请输入:");
                string str = Console.ReadLine();
                if (str == "-1")
                {
                    break;
                }

                Test.TestGetAllPerson();

                Test.DelPerson();
                
                Test.TestGetAllPerson();
            }
        }

    }
}
