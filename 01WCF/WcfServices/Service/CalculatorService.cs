using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Service.Interface;

namespace Service
{
    public class CalculatorService : ICalculator
    {
        #region ICaculator 成员

        public double Add(double x, double y)
        {
            return x + y;
        }

        #endregion
    }
}
