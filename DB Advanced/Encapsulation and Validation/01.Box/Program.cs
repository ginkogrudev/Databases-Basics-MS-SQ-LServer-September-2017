using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace _01.Box
{
    class Program
    {
        static void Main(string[] args)
        {
           
            var height = double.Parse(Console.ReadLine());
            var width = double.Parse(Console.ReadLine());
            var length = double.Parse(Console.ReadLine());
            Type boxType = typeof(Box);
            FieldInfo[] fields = boxType.GetFields(BindingFlags.NonPublic | BindingFlags.Instance);
            Console.WriteLine(fields.Count());

            var box = new Box(length , width, height);
         
        }
    }
}
