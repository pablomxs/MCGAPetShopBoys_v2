using PetShopBoys.BE;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PetShopBoys.DAL
{
    public class UserDAO
    {
        public int Create(User user)
        {
            string sqlQuery = string.Format("INSERT INTO user_tbl" +
                "(idUser,password,firstName,lastName,mail,phoneNumber,province,city," +
                "postalCode,fullAddress,accountStatus,failedLogons)" +
                "VALUES (@idUser,@password,@firstName,@lastName,@mail,@phoneNumber,@province,@city," +
                "@postalCode,@fullAddress,@accountStatus,@failedLogons)");
            List<SqlParameter> parameters = new List<SqlParameter>();
            parameters.Add(new SqlParameter("@idUser",user.userId));
            parameters.Add(new SqlParameter("@password", user.password));
            parameters.Add(new SqlParameter("@firstName", user.firstName));
            parameters.Add(new SqlParameter("@lastName", user.lastName));
            parameters.Add(new SqlParameter("@mail", user.mail));
            parameters.Add(new SqlParameter("@phoneNumber", user.phoneNumber));
            parameters.Add(new SqlParameter("@province", user.province));
            parameters.Add(new SqlParameter("@city", user.city));
            parameters.Add(new SqlParameter("@postalCode", user.postalCode));
            parameters.Add(new SqlParameter("@fullAddress", user.fullAddress));
            parameters.Add(new SqlParameter("@accountStatus", user.accountStatus));
            parameters.Add(new SqlParameter("@failedLogons", user.failedLogons));
            SqlParameter IDParameter = new SqlParameter("@ID", SqlDbType.Int);
            IDParameter.Direction = ParameterDirection.Output;
            parameters.Add(IDParameter);
            DBAccess sqlAccess = DBAccess.GetInstance();
            int returnValue = sqlAccess.ExecuteNonQuery(sqlQuery, parameters);
            if (returnValue > 0)
            {
                return returnValue; //Retorna filas afectadas (deberia ser 1)
            }
            else
            {
                return 0;
            }

        }
    }
}
