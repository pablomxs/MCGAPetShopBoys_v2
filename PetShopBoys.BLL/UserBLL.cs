using PetShopBoys.BE;
using PetShopBoys.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetShopBoys.BLL
{
    public class UserBLL
    {
        public int Create(User user)
        {
            user.password = ServiceBLL.EncryptMD5(user.password);
            int returnedValue = new UserDAO().Create(user);
            ServiceBLL.WriteEventLogEntry(new LogEvent(2, "Se ha registrado un nuevo usuario estándar: " + user.userId + ".", user.userId, 51, LogEvent.Category.Standard));
            return returnedValue;
        }
    }
}
