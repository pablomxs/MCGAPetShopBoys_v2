using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetShopBoys.BE
{
    public abstract class Component
    {
        public string Name { get; set; }
        public int Id { get; set; }
        public abstract IList<Component> Children { get; }
        public abstract void AddChild(Component child);
        public abstract void RemoveChildren();
        public RightType Right { get; set; }
        public override string ToString()
        {
            return Name;
        }
    }
}
