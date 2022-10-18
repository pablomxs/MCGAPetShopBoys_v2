using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetShopBoys.BE
{
    public class AdminUser
    {
        public AdminUser()
        {
            _rights = new List<Component>();
        }
        List<Component> _rights;
        public string AdminId { get; set; }
        public string DisplayName { get; set; }
        public List<Component> Rights
        {
            get
            {
                return _rights;
            }
        }
        public override string ToString()
        {
            return DisplayName;
        }
    }
}
