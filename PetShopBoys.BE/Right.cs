using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetShopBoys.BE
{
    public class Right : Component
    {
        public override IList<Component> Children
        {
            get
            {
                return new List<Component>();
            }
        }

        public override void AddChild(Component child)
        {
            
        }

        public override void RemoveChildren()
        {
            
        }
    }
}
