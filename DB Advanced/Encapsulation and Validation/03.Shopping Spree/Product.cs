using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _03.Shopping_Spree
{
    class Product
    {
        private string name;
        private decimal price;

        public string Name
        {
            get => this.name;
            set
            {
                name = value;
                if (name == "")
                {
                    throw new AggregateException("Name cannot be empty");
                }
            }
        }
        public decimal Price
        {
            get => this.price;
            set
            {
                price = value;
                if (price <= 0)
                {
                    throw new AggregateException("Price cannot be zero or negative");
                }
            }
        }

        public Product(string name, decimal price)
        {
            this.name = name;
            this.price = price;
        }
    }
}
