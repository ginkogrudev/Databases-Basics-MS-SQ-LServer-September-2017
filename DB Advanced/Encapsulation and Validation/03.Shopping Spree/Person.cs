using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _03.Shopping_Spree
{
    class Person
    {
        private string name;
        private decimal money;
        private List<Product> products;

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

        public decimal Money
        {
            get => this.money;
            set
            {
                money = value;
                if (money <= 0)
                {
                    throw new AggregateException("Money cannot be negative"); 
                }
            }
        }

        public List<Product> Products                 
        {
            get => products;
            set => products = value;
        }

        public Person(string name, decimal money, List<Product> products)
        {
            this.name = name;
            this.money = money;
            this.products = products;
        }
    }
}
