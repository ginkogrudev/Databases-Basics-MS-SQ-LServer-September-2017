using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _01.Box
{
    class Box
    {
        private double height;
        private double width;
        private double length;

        public double Height
        {
            get => height;
            set
            {
                height = value;
                if (height<=0)
                {
                    Console.WriteLine("Height cannot be zero or negative.");
                }
                
            }
}

        public double Width
        {
            get => width;
            set
            {
                width = value;
                if (width <= 0)
                {
                    Console.WriteLine("Width cannot be zero or negative.");
                }
               
            }
        }

        public double Length
        {
            get => length;
            set
            {
                length = value;
                if (length <= 0)
                {
                    Console.WriteLine("Length cannot be zero or negative.");
                }
                
            }
        }

        public string Volume
        {
            get
            {
                return $"Volume - {(Height * Width * Length):f2}";
            }
        }

        public string LateralSurfaceArea
        {
            get
            {
                return $"Lateral Surface Area - {(2 * Length * (Width + Height)):f2}";
            }
        
        }

        public string SurfaceArea
        {
            get { return $"Surface Area - {(2 * Width * Length + 2 * Length * Height + 2 * Width * Height):f2}"; }
        }

        public Box(double height, double width, double length)
        {
            this.Height = height;
            this.Width = width;
            this.Length = length;
        }
    }
}
