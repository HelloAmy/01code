using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceModel;

namespace Service.Interface
{
    [ServiceContract(Name="CalculatorService", Namespace="http://www.artech.com")]
    public interface ICalculator
    {
        [OperationContract]
        double Add(double x, double y);
    }
}
