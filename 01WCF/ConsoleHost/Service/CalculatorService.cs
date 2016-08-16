
using IService;

namespace Service
{
    public class CalculatorService:ICalculator
    {
        public double Add(double x, double y)
        {
            return x + y;
        }
    }
}
