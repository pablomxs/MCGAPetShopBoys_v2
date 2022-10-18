using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetShopBoys.BE
{
    internal class Group : Component
    {
        private IList<Component> _children;
        public Group()
        {
            _children = new List<Component>();
        }
        public override IList<Component> Children
        {
            get
            {
                return _children.ToArray();
            }
        }
        public override void AddChild(Component child)
        {
            _children.Add(child);
        }

        public override void RemoveChildren()
        {
            _children = new List<Component>();
        }
    }
}
